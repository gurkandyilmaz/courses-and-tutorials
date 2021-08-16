from pathlib import Path










if __name__ == "__main__":
    print(__doc__)
    print(__file__)
    print(Path(__file__).absolute())
    print(Path(__file__).stat())
    print(Path(__file__).resolve())
    print(Path(__file__).cwd())
    print(Path(__file__).parent)

