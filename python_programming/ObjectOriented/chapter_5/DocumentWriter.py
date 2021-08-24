"""A simple document editor having insert, delete and cursor move methods."""

from pathlib import Path

class Document:
    def __init__(self, filename: str):
        self.filename = filename
        self._characters = list()
        self._cursor = Cursor(self)

    def insert(self, character):
        if len(character) == 1:
            self._characters.insert(self.cursor.position, character)
            self.cursor.position += 1
        else:
            raise ValueError("Only single characters are allowed.")

    def delete(self):
        try:
            self._characters.pop(self.cursor.position - 1)
            self.cursor.position -= 1
        except IndexError:
            print("document is empty.")
        
    def save(self):
        filename = Path(__file__).resolve().parent / self.filename
        with filename.open(mode="w") as text_file:
            text_file.writelines(self.string)

    #def __str__(self):
    #    print("Cursor at: ", self._cursor.position)
    #    return "".join(self._characters)

    # This property provides the same result as __str__ method above.
    @property
    def string(self):
        return "".join(self._characters)

    @property
    def cursor(self):
        return self._cursor


class Cursor:
    def __init__(self, document: Document):
        self.document = document
        self.position = 0
        self.line_length = 10

    def forward(self):
        if self.position < self.line_length:
            self.position += 1
        else:
            raise EOFError("End od line Error.")

    def back(self):
        self.position -= 1

    def end(self):
        while self.position < len(self.document._characters):
            self.position += 1

if __name__ == "__main__":
    document = Document("test.txt")
    document.insert("t")
    document.insert("h")
    document.insert("i")
    document.insert("s")
    document.insert("x")
    document.cursor.back()
    document.delete()
    document.delete()
    document.cursor.back()
    document.insert("y")
    document.cursor.end()
    document.insert("\n")
    document.insert("a")
    document.insert("h")
    document.save()

    print(document.string)


