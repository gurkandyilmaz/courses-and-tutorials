from pathlib import Path


class Document:
    def __init__(self, filename: str):
        self.filename = filename

    def insert(self, character):
        pass

    def delete(self, character):
        pass

    def forward(self):
        pass

    def back(self):
        pass




if __name__ == "__main__":
    print(Path(__file__).cwd())
    print(Path(__file__).parent)
