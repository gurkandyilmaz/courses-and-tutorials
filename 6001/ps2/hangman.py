# Problem Set 2, hangman.py
import random
import string
from pathlib import Path

WORDLIST_FILENAME = Path().cwd() / "6001/ps2/words.txt"

# Helper code
def load_words():
    """
    Returns a list of valid words. Words are strings of lowercase letters.
    
    Depending on the size of the word list, this function may
    take a while to finish.
    """
    print("Loading word list from file...")
    inFile = open(WORDLIST_FILENAME, 'r')
    line = inFile.readline()
    wordlist = line.split()
    print("  ", len(wordlist), "words loaded.")
    return wordlist

def choose_word(wordlist):
    """
    wordlist (list): list of words (strings)
    
    Returns a word from wordlist at random
    """
    return random.choice(wordlist)

# end of helper code

def is_word_guessed(secret_word, letters_guessed):
    '''
    secret_word: string, the word the user is guessing; assumes all letters are
      lowercase
    letters_guessed: list (of letters), which letters have been guessed so far;
      assumes that all letters are lowercase
    returns: boolean, True if all the letters of secret_word are in letters_guessed;
      False otherwise
    '''
    for single_letter in secret_word:
        if single_letter in letters_guessed:
            continue
        else:
            return False
    return True

def get_guessed_word(secret_word, letters_guessed):
    '''
    secret_word: string, the word the user is guessing
    letters_guessed: list (of letters), which letters have been guessed so far
    returns: string, comprised of letters, underscores (_), and spaces that represents
      which letters in secret_word have been guessed so far.
    '''
    guessed_chars = []
    for letter in letters_guessed:
        for idx, char in enumerate(secret_word):
            if char == letter:
                guessed_chars.append((letter, idx))
    
    guessed_word = ""
    idx_guessed = [i[1] for i in guessed_chars]
    for i in range(len(secret_word)):
        if i in idx_guessed:
            guessed_word += secret_word[i]
        else:
            guessed_word += "_ "
            
    return guessed_word

def get_available_letters(letters_guessed):
    '''
    letters_guessed: list (of letters), which letters have been guessed so far
    returns: string (of letters), comprised of letters that represents which letters have not
      yet been guessed.
    '''
    all_letters = string.ascii_lowercase
    letters_remaining = ""
    for letter in all_letters:
        if letter not in letters_guessed:
            letters_remaining += letter

    return letters_remaining
    
def hangman(secret_word):
    '''
    secret_word: string, the secret word to guess.
    
    Starts up an interactive game of Hangman.
    
    * At the start of the game, let the user know how many 
      letters the secret_word contains and how many guesses s/he starts with.
      
    * The user should start with 6 guesses

    * Before each round, you should display to the user how many guesses
      s/he has left and the letters that the user has not yet guessed.
    
    * Ask the user to supply one guess per round. Remember to make
      sure that the user puts in a letter!
    
    * The user should receive feedback immediately after each guess 
      about whether their guess appears in the computer's word.

    * After each guess, you should display to the user the 
      partially guessed word so far.
    
    Follows the other limitations detailed in the problem write-up.
    '''
    guesses_remaining = 6
    warnings_remaining = 3
    letters_guessed = set()
    letters_remaining = get_available_letters(letters_guessed)
    guessed_word = get_guessed_word(secret_word, letters_guessed)
    vowels = 'aeiou'

    print("Welcome to the game Hangman!") 
    print(f"I am thinking of a word that is {len(secret_word)} letters long.")
    print(f"You have {warnings_remaining} warnings left.")
        
    state = True
    while state:
        print("-"*10)
        print(f"You have {guesses_remaining} guesses left.")
        print(f"Available letters: {letters_remaining}")
        user_letter = input("Please guess a letter: ")
        if user_letter in string.ascii_letters:
            user_letter = user_letter.lower()
            if guesses_remaining != 0:
                if user_letter in letters_guessed:
                    if warnings_remaining in [1,2,3]:
                        warnings_remaining -= 1
                        warning_message = f"You have {warnings_remaining} warnings left."
                    else:
                        guesses_remaining -= 1
                        warning_message = f"You have no warnings left so you lose one guess"
                    print("Oops! You've already guessed that letter.",warning_message,f": {guessed_word}")
                else:
                    letters_guessed.add(user_letter)
                    letters_remaining = get_available_letters(letters_guessed)
                    if not is_word_guessed(secret_word, letters_guessed):
                        if (user_letter in secret_word):
                            guessed_word = get_guessed_word(secret_word, letters_guessed)
                            print(f"Good guess: {guessed_word}")
                        else:
                            if user_letter in vowels:
                                guesses_remaining -= 2
                            else:
                                guesses_remaining -= 1
                            print(f"Oops! That letter is not in my word: {guessed_word}")
        elif (user_letter not in string.ascii_letters) or (len(user_letter) != 1):
            if warnings_remaining in [1,2,3]:
                warnings_remaining -= 1
                warning_message = f"You have {warnings_remaining} warnings left."
            else:
                guesses_remaining -= 1
                warning_message = f"You have no warnings left so you lose one guess"
            print("Oops! That is not a valid letter.",warning_message,f": {guessed_word}")
        elif warnings_remaining == 0:
            guesses_remaining -= 1
        # escape condition
        if guesses_remaining == 0:
            state = False
            print("-"*10)
            print(f"Sorry, you ran out of guess. The word was {secret_word}")
        # other escape condition
        if is_word_guessed(secret_word, letters_guessed):
            state = False
            total_score = guesses_remaining * len(set(secret_word))
            print("-"*10)
            print(f"Congratulations, you won!\nYour total score for this game: {total_score}")

def match_with_gaps(my_word, other_word):
    '''
    my_word: string with _ characters, current guess of secret word
    other_word: string, regular English word
    returns: boolean, True if all the actual letters of my_word match the 
        corresponding letters of other_word, or the letter is the special symbol
        _ , and my_word and other_word are of the same length;
        False otherwise: 
    '''
    my_word = my_word.replace("_ ", "*")
    letters_my_word = {idx:letter for idx, letter in enumerate(my_word)}
    if len(my_word) == len(other_word):
        for idx, letter in letters_my_word.items():
            if letter != "*":
                if letter != other_word[idx]:
                    return False
                else:
                    continue
            else:
                if other_word[idx] in set(my_word):
                    return False
                else:
                    continue
        return True
    else:
        return False

def show_possible_matches(my_word):
    '''
    my_word: string with _ characters, current guess of secret word
    returns: nothing, but should print out every word in wordlist that matches my_word
             Keep in mind that in hangman when a letter is guessed, all the positions
             at which that letter occurs in the secret word are revealed.
             Therefore, the hidden letter(_ ) cannot be one of the letters in the word
             that has already been revealed.

    '''
    suggested_words = []
    for other_word in wordlist:
        if match_with_gaps(my_word, other_word):
            suggested_words.append(other_word)
        else:
            continue
    if len(suggested_words):
        return suggested_words
    else:
        return "No matches found"

def hangman_with_hints(secret_word):
    '''
    secret_word: string, the secret word to guess.
    
    Starts up an interactive game of Hangman.
    
    * At the start of the game, let the user know how many 
      letters the secret_word contains and how many guesses s/he starts with.
      
    * The user should start with 6 guesses
    
    * Before each round, you should display to the user how many guesses
      s/he has left and the letters that the user has not yet guessed.
    
    * Ask the user to supply one guess per round. Make sure to check that the user guesses a letter
      
    * The user should receive feedback immediately after each guess 
      about whether their guess appears in the computer's word.

    * After each guess, you should display to the user the 
      partially guessed word so far.
      
    * If the guess is the symbol *, print out all words in wordlist that
      matches the current guessed word. 
    
    Follows the other limitations detailed in the problem write-up.
    '''
    guesses_remaining = 6
    warnings_remaining = 3
    letters_guessed = set()
    letters_remaining = get_available_letters(letters_guessed)
    guessed_word = get_guessed_word(secret_word, letters_guessed)
    vowels = 'aeiou'

    print("Welcome to the game Hangman!") 
    print(f"I am thinking of a word that is {len(secret_word)} letters long.")
    print(f"You have {warnings_remaining} warnings left.")

    state = True
    while state:
        print("-"*10)
        print(f"You have {guesses_remaining} guesses left.")
        print(f"Available letters: {letters_remaining}")
        user_letter = input("Please guess a letter: ")
        if user_letter in string.ascii_letters:
            user_letter = user_letter.lower()
            if guesses_remaining != 0:
                if user_letter in letters_guessed:
                    if warnings_remaining in [1,2,3]:
                        warnings_remaining -= 1
                        warning_message = f"You have {warnings_remaining} warnings left."
                    else:
                        guesses_remaining -= 1
                        warning_message = f"You have no warnings left so you lose one guess"
                    print("Oops! You've already guessed that letter.",warning_message,f": {guessed_word}")
                else:
                    letters_guessed.add(user_letter)
                    letters_remaining = get_available_letters(letters_guessed)
                    if not is_word_guessed(secret_word, letters_guessed):
                        if (user_letter in secret_word):
                            guessed_word = get_guessed_word(secret_word, letters_guessed)
                            print(f"Good guess: {guessed_word}")
                        else:
                            if user_letter in vowels:
                                guesses_remaining -= 2
                            else:
                                guesses_remaining -= 1
                            print(f"Oops! That letter is not in my word: {guessed_word}")
        elif (user_letter not in string.ascii_letters) or (len(user_letter) != 1):
            warning_message = ""
            if user_letter == "*":
                suggested_words = show_possible_matches(guessed_word)
                print(f"Possible word matches are:\n {suggested_words}")
            else:
                if warnings_remaining in [1,2,3]:
                    warnings_remaining -= 1
                    warning_message = f"You have {warnings_remaining} warnings left."
                else:
                    guesses_remaining -= 1
                    warning_message = f"You have no warnings left so you lose one guess"
                print("Oops! That is not a valid letter.",warning_message,f": {guessed_word}")
        elif warnings_remaining == 0:
            guesses_remaining -= 1
        # escape condition
        if guesses_remaining == 0:
            state = False
            print("-"*10)
            print(f"Sorry, you ran out of guess. The word was {secret_word}")
        # other escape condition
        if is_word_guessed(secret_word, letters_guessed):
            state = False
            total_score = guesses_remaining * len(set(secret_word))
            print("-"*10)
            print(f"Congratulations, you won!\nYour total score for this game: {total_score}")

wordlist = load_words()

if __name__ == "__main__":
    secret_word = choose_word(wordlist)
    hangman_with_hints(secret_word)
