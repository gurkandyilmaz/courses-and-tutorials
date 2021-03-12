# Problem Set 4C

import string
from pathlib import Path
from ps4a import get_permutations

### HELPER CODE ###
def load_words(file_name):
    '''
    file_name (string): the name of the file containing 
    the list of words to load    
    
    Returns: a list of valid words. Words are strings of lowercase letters.
    
    Depending on the size of the word list, this function may
    take a while to finish.
    '''
    inFile = open(file_name, 'r')
    wordlist = []
    for line in inFile:
        wordlist.extend([word.lower() for word in line.split(' ')])
    return wordlist

def is_word(word_list, word):
    '''
    Determines if word is a valid word, ignoring
    capitalization and punctuation

    word_list (list): list of words in the dictionary.
    word (string): a possible word.
    
    Returns: True if word is in word_list, False otherwise

    Example:
    >>> is_word(word_list, 'bat') returns
    True
    >>> is_word(word_list, 'asdf') returns
    False
    '''
    word = word.lower()
    word = word.strip(" !@#$%^&*()-_+={}[]|\\:;'<>?,./\"")
    return word in word_list

### END HELPER CODE ###
CWD = Path().cwd()
WORDLIST_FILENAME = CWD / '6001/ps4/words.txt'

# you may find these constants helpful
VOWELS_LOWER = 'aeiou'
VOWELS_UPPER = 'AEIOU'
CONSONANTS_LOWER = 'bcdfghjklmnpqrstvwxyz'
CONSONANTS_UPPER = 'BCDFGHJKLMNPQRSTVWXYZ'

class SubMessage(object):
    def __init__(self, text):
        '''
        Initializes a SubMessage object
                
        text (string): the message's text

        A SubMessage object has two attributes:
            self.message_text (string, determined by input text)
            self.valid_words (list, determined using helper function load_words)
        '''
        self.message_text = text
        self.valid_words = load_words(WORDLIST_FILENAME)

    def get_message_text(self):
        '''
        Used to safely access self.message_text outside of the class
        
        Returns: self.message_text
        '''
        return self.message_text

    def get_valid_words(self):
        '''
        Used to safely access a copy of self.valid_words outside of the class.
        This helps you avoid accidentally mutating class attributes.
        
        Returns: a COPY of self.valid_words
        '''
        return self.valid_words.copy()

    def build_transpose_dict(self, vowels_permutation):
        '''
        vowels_permutation (string): a string containing a permutation of vowels (a, e, i, o, u)
        
        Creates a dictionary that can be used to apply a cipher to a letter.
        The dictionary maps every uppercase and lowercase letter to an
        uppercase and lowercase letter, respectively. Vowels are shuffled 
        according to vowels_permutation. The first letter in vowels_permutation 
        corresponds to a, the second to e, and so on in the order a, e, i, o, u.
        The consonants remain the same. The dictionary should have 52 
        keys of all the uppercase letters and all the lowercase letters.

        Example: When input "eaiuo":
        Mapping is a->e, e->a, i->i, o->u, u->o
        and "Hello World!" maps to "Hallu Wurld!"

        Returns: a dictionary mapping a letter (string) to 
                 another letter (string). 
        '''
        transpose_dict = {}
        for letter, code in zip(VOWELS_LOWER,vowels_permutation):
            transpose_dict[letter] = code
            transpose_dict[letter.upper()] = code.upper()
        for consonant in (CONSONANTS_LOWER + CONSONANTS_UPPER):
            transpose_dict[consonant] = consonant

        return transpose_dict
    
    def apply_transpose(self, transpose_dict):
        '''
        transpose_dict (dict): a transpose dictionary
        
        Returns: an encrypted version of the message text, based 
        on the dictionary
        '''
        encrypted_text = ""
        for token in self.get_message_text().split():
            #print("Token: ", token)
            for character in token:
                #print("Char: ", character)
                if character.isalpha():
                    encrypted_text += transpose_dict[character]
                else:
                    encrypted_text += character
            encrypted_text += " "
                    
        return encrypted_text.strip()

class EncryptedSubMessage(SubMessage):
    def __init__(self, text):
        '''
        Initializes an EncryptedSubMessage object

        text (string): the encrypted message text

        An EncryptedSubMessage object inherits from SubMessage and has two attributes:
            self.message_text (string, determined by input text)
            self.valid_words (list, determined using helper function load_words)
        '''
        SubMessage.__init__(self, text)


    def decrypt_message(self):
        '''
        Attempt to decrypt the encrypted message 
        
        Idea is to go through each permutation of the vowels and test it
        on the encrypted message. For each permutation, check how many
        words in the decrypted text are valid English words, and return
        the decrypted message with the most English words.
        
        If no good permutations are found (i.e. no permutations result in 
        at least 1 valid word), return the original string. If there are
        multiple permutations that yield the maximum number of words, return any
        one of them.

        Returns: the best decrypted message    
        
        Hint: use your function from Part 4A
        '''
        all_matches = {}
        all_permutations = get_permutations(VOWELS_LOWER)
        for permutation in all_permutations:
            transpose_dict = self.build_transpose_dict(permutation)
            decrypted_message = self.apply_transpose(transpose_dict)
            i = 0
            for token in decrypted_message.split():
                if is_word(self.get_valid_words(), token):
                    i += 1
            all_matches[decrypted_message] = i
        
        # Many possible decryptions, so choose the one containing the most valid english words.
        best_matches = {match:count for match, count in sorted(all_matches.items(), key=lambda items: items[1], reverse=True)}
        return list(best_matches.keys())[0]
        
def test_SubMessage():
    print("----> SubMessage Test Started <----")
    # Test - 1
    message = SubMessage("Hello World!")
    permutation = "iouae"
    enc_dict = message.build_transpose_dict(permutation)
    print("Original: ", message.get_message_text(), "Permutation: ", permutation)
    print("Encrypted: ", message.apply_transpose(enc_dict))
    print()
    # Test - 2
    message = SubMessage("What are you Studying? right NOW.")
    permutation = "eouai"
    enc_dict = message.build_transpose_dict(permutation)
    print("Original: ", message.get_message_text(), "Permutation: ", permutation)
    print("Encrypted: ", message.apply_transpose(enc_dict))
    print("----> SubMessage Test Finished <----")

def test_EncryptedSubMessage():
    print("----> EncryptedSubMessage Test Started <----")
    # Test - 1
    message = SubMessage("Hello World!")
    permutation = "iouae"
    enc_dict = message.build_transpose_dict(permutation)
    enc_message = EncryptedSubMessage(message.apply_transpose(enc_dict))
    print("Original: ", message.get_message_text())
    print("Actual: ", enc_message.decrypt_message())
    print()
    # Test - 2
    message = SubMessage("What are you Studying? right NOW.")
    permutation = "eouai"
    enc_dict = message.build_transpose_dict(permutation)
    enc_message = EncryptedSubMessage(message.get_message_text())
    print("Original: ", message.get_message_text())
    print("Actual: ", enc_message.decrypt_message())
    print("----> EncryptedSubMessage Test Finished <----")

if __name__ == '__main__':
    test_SubMessage()
    test_EncryptedSubMessage()
