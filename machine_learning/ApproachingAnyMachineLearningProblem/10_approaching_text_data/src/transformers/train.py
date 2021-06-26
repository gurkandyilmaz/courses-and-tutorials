from sklearn import model_selection, metrics
from transformers import AdamW
from transformers import get_linear_schedule_with_warmup
import multiprocessing

def train():
    print("df loading...")
    df = pd.read_csv(Config.TRAINING_FILE, nrows=5000).fillna("none")
    df["sentiment"] = df["sentiment"].apply(lambda label: 1 if label == "positive" else 0)
    
    df_train, df_validation = model_selection.train_test_split(
        df, 
        test_size=0.1,
        random_state=12,
        stratify=df["sentiment"].values
    )
    
    df_train = df_train.reset_index(drop=True)
    df_validation = df_validation.reset_index(drop=True)
    
    
    train_dataset = BERTDataset(
        review = df_train["review"].values,
        target = df_train["sentiment"].values
    )
    
    train_data_loader = torch.utils.data.DataLoader(
        train_dataset,
        batch_size = Config.TRAIN_BATCH_SIZE,
        num_workers = multiprocessing.cpu_count()
    )
    
    
    validation_dataset = BERTDataset(
        review = df_validation["review"].values,
        target = df_validation["sentiment"].values
    )
    
    validation_data_loader = torch.utils.data.DataLoader(
        validation_dataset,
        batch_size = Config.VALID_BATCH_SIZE,
        num_workers = multiprocessing.cpu_count()
    )
    
    device = torch.device("cuda")
    model = BERTBaseUncased()
    model.to(device)
    
    param_optimizer = list(model.named_parameters())
    no_decay = ["bias", "LayerNorm.bias", "LayerNorm.weight"]
    optimizer_parameters = [
        {
            "params": [p for n, p in param_optimizer if not any(nd in n for nd in no_decay)],
            "weight_decay": 0.001,
        },
        {
            "params": [p for n,p in param_optimizer if any(nd in n for nd in no_decay)],
            "weight_decay": 0.0,
        },
    ]
    
    num_train_steps = int(len(df_train) / (Config.TRAIN_BATCH_SIZE * Config.EPOCHS))
    optimizer = AdamW(optimizer_parameters, lr=3e-5)
    
    scheduler = get_linear_schedule_with_warmup(
        optimizer,
        num_warmup_steps=0,
        num_training_steps=num_train_steps
    )
    
    model = nn.DataParallel(model)
    
    best_accuracy = 0
    print("Epochs starting...")
    for epoch in range(Config.EPOCHS):
        print(f"EPOCH: {epoch}", end="\t")
        train_fn(train_data_loader, model, optimizer, device, scheduler)
        outputs, targets = eval_fn(validation_data_loader, model, device)
        
        outputs = np.array(outputs) > 0.5
        accuracy = metrics.accuracy_score(targets, outputs)
        print(f"Accuracy: {accuracy}")
        if accuracy > best_accuracy:
            torch.save(model.state_dict(), Config.MODEL_PATH)
            best_accuracy = accuracy