from pathlib import Path


class Document:
    def __init__(self, filename: str):
        self.filename = filename
        self._characters = list()
        self._cursor = 0
        self._line_length = 10

    def insert(self, character):
        if len(character) == 1:
            self._characters.insert(self._cursor, character)
            self._cursor += 1
        else:
            raise ValueError("Only single characters are allowed.")

    def delete(self):
        pass

    def forward(self):
        if self._cursor < self._line_length:
            self._cursor += 1
        else:
            raise EOFError("End od line Error.")

    def back(self):
        self._cursor -= 1

    def __str__(self):
        print("Cursor at: ", self._cursor)
        return "".join(self._characters)




if __name__ == "__main__":
    document = Document("test.txt")
    document.insert("t")
    document.insert("h")
    document.insert("i")
    document.insert("s")
    document.back()
    document.back()
    document.insert("x")

    print(document)


