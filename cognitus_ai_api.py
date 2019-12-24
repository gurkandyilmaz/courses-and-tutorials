import requests,time,re,json,csv

class Cognitus():
    
    def __init__(self):
        
        self.urls_ = {"sınıflandırma":"https://api.cognitus.ai/api/v1/classify",
                "duygu":"https://api.cognitus.ai/api/v1/sentiment",
                "varlık":"https://api.cognitus.ai/api/v1/entity"
                }
        
        self.header_ = {
                "Authorization": "Token f55d535cb047035aea0da05dcf44bac3a5f2ea33",
                "Content-type": "application/json"
                }
        
        self.module_id_sınıflandırma_ = 3832
        self.module_id_duygu_ = 383455

    
    def check_status(self):
        
        print("Servis Status Kontrol Ediliyor...\n")
        for servis,link in self.urls_.items():
            time.sleep(0.5)
            response = requests.get(link)
            print(f"{servis}:\n *STATUS: {response}\n *DETAIL:{response.json()}")
            print("\n-----------------\n")
    
    
    def duygu(self):
        
        text = input("Duygu Analizi istenen metni giriniz: ")
        self._make_body("duygu", text)
        
   
    def varlık(self):
        
        text = input("Varlık Analizi istenen metni giriniz: ")
        self._make_body("varlık", text)
        
        
    def sınıflandırma(self):
        
        try:
            module_id = input("module ID giriniz. (Varsayılan ID için Enter a basınız): ")
            if module_id == "":
                module_id = self.module_id_sınıflandırma_
            module_id = int(module_id)
            print(f"Varsayılan modül id {module_id}\n")
            girdi = input("Sınıflandırmak istenilen metni giriniz(Dosyadan okumak için 'r' ye basın): ")
            
            if girdi.lower() == "r":
                sorgular = self._read_csv()
                for i in range(1,len(sorgular)):
                    self._make_body("sınıflandırma", sorgular[i], module_id)
            else:
                text = girdi
                self._make_body("sınıflandırma", text, module_id)
        
        except ValueError:
            print("Modül ID integer olmalı.")
            self.sınıflandırma()
            
            
    def _read_csv(self):
        try:
            dosya_ismi = input("Dosya adını giriniz 'sınıflama.csv': ")
            query = []
            with open(dosya_ismi) as file:
                reader = file.readlines()
                query = [w.strip("\n") for w in reader]
            return query
        except:
            print("Dosya aynı konumda olmalı ve isim düzgün yazılmalı.")
            self._read_csv()
            
    

    def _make_body(self, servis, text, module_id=None):
        
        if servis == "sınıflandırma":
            body = {"module_id" : module_id,
                    "text":text}
            print(f"\nModul ID: {body['module_id']}\nText: {body['text']}")
            url = self.urls_["sınıflandırma"]
            
            self._post_request(url, body, self.header_,"sınıflandırma")
            
        elif servis == "duygu":
            body = {"text":text}
            print(f"\nBody {body}")
            url = self.urls_["duygu"]
            
            self._post_request(url, body, self.header_,"duygu")
            
        elif servis == "varlık":
            body = {"text":text}
            print(f"\nModul ID: {body['module_id']}\nText: {body['text']}")
            url = self.urls_["varlık"]
            
            self._post_request(url, body, self.header_,"varlık")
      
        
    def _post_request(self, url, body, head, servis):
        
        if servis == "sınıflandırma":
#             time.sleep(0.1)
            response = requests.post(url, json=body, headers=head)
            print(f"SONUÇ: {response.json()['results']}")
            
            sıralı = self._sort_results(response.json(), "sınıflandırma")
            self._write_results("sınıflandırma", body, response, sıralı)
            
            
        elif servis == "duygu":
            print("POST request işlemi yapılıyor...")
            time.sleep(0.5)
            response = requests.post(url, json=body, headers=head) 
            print(f"SONUÇ: {response.json()['results']}")
            
            
            self._write_results("duygu", body, response)
            
        elif servis == "varlık":
            print("POST request işlemi yapılıyor...")
            time.sleep(0.5)
            response = requests.post(url, json=body, headers=head) 
            print(f"SONUÇ: {response.json()['results']}")
            
            self._write_results("varlık", body, response)
        
            
    
    def _sort_results(self, respond, servis="sınıflandırma"):
        
        probs = []
        sorted_list = []

        for i, element in enumerate(respond["results"]):
            probs.append((element["probability"],i))
        probs.sort(reverse=True)
        for x in range(len(probs)):
            sorted_list.append(respond["results"][probs[x][1]])
        
        print(f"SIRALI: {sorted_list}")
        return sorted_list
        
        
    def _write_results(self, service_name, body, respond, sıralı=[]):
        if len(sıralı) == 0: 
            with open("Results_new_ai.txt", "a", encoding = "utf-8") as file:
                file.write(f"-------RESULTS-------\n\n")
                file.write(f"STATUS_CODE: {respond.status_code}\n")
                file.write(f"SERVICE TYPE: {service_name} \n")
                file.write(f"REQUEST BODY: {body} \n")
                file.write(f"RESPONSE: \n")
                file.write(f"******{respond.json()}****** \n\n")
        else:
            result = respond.json()['results']
            with open("Sorted_Results.txt", "a", encoding="utf-8") as file:
                file.write("-------RESULTS-------\n\n")
                file.write(f"Modül ID: {body['module_id']} Text: {body['text']} \n")
                file.write(f"SONUÇ: \n")
                for i in range(len(respond.json()['results'])):
                    file.write(f"\tSınıf: {result[i]['category']}, Prob:{result[i]['probability']}\n")
                file.write(f"SIRALI: \n")
                for k in range(len(sıralı)):
                    file.write(f"\t{k+1}. Sınıf: {sıralı[k]['category']}, Probability:{sıralı[k]['probability']}\n")
                file.write("\n\n")
                
                
cognitus = Cognitus() 
