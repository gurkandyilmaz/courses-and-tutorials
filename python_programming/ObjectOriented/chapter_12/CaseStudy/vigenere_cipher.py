"""Vigenere cipher implementation with test driven development."""

def combine_characters(text: str, keyword: str):
    text_to_unicode = ord(text.upper()) - ord("A")
    keyword_to_unicode = ord(keyword.upper()) - ord("A")
    temp = text_to_unicode + keyword_to_unicode
    
    return chr(ord("A") + temp % 26)

def separate_characters(cipher: str, keyword: str):
    cipher_to_unicode = ord(cipher.upper()) - ord("A")
    keyword_to_unicode = ord(keyword.upper()) - ord("A")
    temp = cipher_to_unicode - keyword_to_unicode

    return chr(ord("A") + temp % 26)

class VigenereCipher:
    def __init__(self, keyword: str):
        self.keyword = keyword

    def extend_keyword(self, length: int):
        repeats = length // len(self.keyword) + 1
        extended = self.keyword * repeats
        
        return extended[:length]

    def encode(self, text: str):
        encoded = []
        text = "".join(text.split())
        keyword = self.extend_keyword(len(text))
        
        for t, k in zip(text, keyword):
            encoded.append(combine_characters(t, k))
        
        return "".join(encoded)
    
    def decode(self, cipher: str):
        ciphered = []
        keyword = self.extend_keyword(len(cipher))
        for c, k in zip(cipher, keyword):
            ciphered.append(separate_characters(c, k))

        return "".join(ciphered)
