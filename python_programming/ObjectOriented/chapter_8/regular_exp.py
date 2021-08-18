import re
import argparse
from pathlib import Path

def count_number_of_lines():
    for filename in Path(".").iterdir():
        code = 0
        space = 0
        comment = 0
        if filename.name.endswith(".py"):
            with filename.open(mode="r") as all_data:
                data = all_data.readlines()
                for line in data:
                    if line.isspace():
                        space += 1
                    elif line.startswith("#"):
                        comment += 1
                    else:
                        code += 1
                print(f"Code count: {code}\nComment count: {comment}\nSpace count: {space}")
        else:
            raise TypeError("Only python files are allowed.")


if __name__ == "__main__":
#    parser = argparse.ArgumentParser(description="Simple Regex Parser.")
#    parser.add_argument("--pattern", "-p", type=str, required=True, help="regex pattern to search for.")
#    parser.add_argument("--text", "-t", type=str, required=True, help="Text to be searched.")
#    args = parser.parse_args()
#    
#    match = re.match(pattern = args.pattern, string = args.text)
#    print(match)
#    print(match.groups())

    count_number_of_lines()
