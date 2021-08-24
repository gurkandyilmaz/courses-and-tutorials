"""Test cases for the VigenereCipher."""

from vigenere_cipher import VigenereCipher, combine_characters, separate_characters

def test_encode():
    chip = VigenereCipher("TRAIN")
    encoded = chip.encode("ENCODED IN PYTHON")
    assert "XECWQXUIVCRKHWA" == encoded

def test_encode_character():
    chip = VigenereCipher("TRAIN")
    encoded = chip.encode("E")
    assert "X" == encoded

def test_encode_spaces():
    chip = VigenereCipher("TRAIN")
    encoded = chip.encode("  ENCODED IN PYTHON ")
    assert "XECWQXUIVCRKHWA" == encoded

def test_encode_lowercase():
    chip = VigenereCipher("TRAIN")
    encoded = chip.encode("encoded in python")
    assert "XECWQXUIVCRKHWA" == encoded

def test_combine_characters():
    assert combine_characters("E", "T") == "X"
    assert combine_characters("N", "R") == "E"

def test_extend_keyword():
    vigenere = VigenereCipher("TRAIN")
    extended = vigenere.extend_keyword(16)
    assert "TRAINTRAINTRAINT" == extended

def test_separate_characters():
    assert separate_characters("X", "T") == "E"
    assert separate_characters("E", "R") == "N"

def test_decode():
    chip = VigenereCipher("TRAIN")
    encoded = chip.decode("XECWQXUIVCRKHWA")
    assert "ENCODEDINPYTHON" == encoded


