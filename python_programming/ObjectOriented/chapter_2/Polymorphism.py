"""Polymorphism: the same method can behave differently in different subclasses."""

class AudioFile:
    def __init__(self, filename: str) -> None:
        if not filename.endswith(self.ext):
            raise Exception("Invalid file type.")
        
        self.filename = filename

class MP3File(AudioFile):
    ext = "mp3"

    def play(self):
        print("Playing the mp3 file.")

class OGGFile(AudioFile):
    ext = "ogg"
    
    def play(self):
        print("Playing the ogg file.")

class WAVFile(AudioFile):
    ext = "wav"

    def play(self):
        print("Playing the wav file.")

if __name__ == "__main__":
    mp3 = MP3File("test.mp3")
    mp3.play()
    ogg = OGGFile("test.ogg")
    ogg.play()
    wav = WAVFile("test.wav")
    wav.play()
