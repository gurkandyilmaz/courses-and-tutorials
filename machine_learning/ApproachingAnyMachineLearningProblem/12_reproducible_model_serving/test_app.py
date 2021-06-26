import requests

def main(text):
    base_url = "http://localhost:5000"
    predict_url = base_url + "/predict"
    response = requests.get(predict_url, params={"sentence":text})

    print(response)
    print(response.text)

if __name__ == "__main__":
    text = "I have seen the trailer for this movie several times over, and I have to say that Ned Kelly looks like it is going to be a wonderful film. When I saw the trailer for the first time, I could not take my eyes away from it (it got my attention for sure). Heath Ledger sticks to what he knows and what works for him, period pieces. Not to mention Orlando Bloom ,who is seen for a split second looks fantastic. I think that this movie will be a hit, and will be seen over and over again my many people."
    main(text=text)
