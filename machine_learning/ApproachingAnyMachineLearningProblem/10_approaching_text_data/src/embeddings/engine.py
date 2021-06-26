import torch
import torch.nn as nn
import nump as np

def train(data_loader, model, optimizer, device):
    for data in data_loader:
        reviews = data["review"]
        targets = data["target"]
        
        reviews = reviews.to(device, dtype=torch.long)
        targets = targets.to(device, dtype=torch.float)
        
        optimizer.zero_grad()
        
        predictions = model(reviews)
        
        loss = nn.BCEWithLogitsLoss(predictions, targets.view(-1,1))
        
        loss.backward()
        optimizer.step()
        
def evaluate(data_loader, model, device):
    final_preds = []
    final_targets = []
    
    model.eval()
    
    with torch.no_grad():
        for data in data_loader:
            reviews = data["review"]
            targets = data["target"]
            reviews = reviews.to(device, dtype=torch.long)
            targets = targets.to(device, dtype=torch.float)
            
            preds = model(reviews)
            
            preds = preds.cpu().numpy().tolist()
            targets = data["target"].cpu().numpy().tolist()
            final_preds.extend(preds)
            final_targets.extend(targets)
            
    return final_preds, final_targets