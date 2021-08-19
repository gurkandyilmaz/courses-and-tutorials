import re
import argparse
from pathlib import Path
from typing import List, Dict

def count_number_of_lines(directory: Path, pattern: str) -> Dict:
    """
    Displays the number of line of codes, comments and spaces.
    Also searches for the pattern in these files and returns the results.
    """
    for filename in Path(".").iterdir():
        code = 0
        space = 0
        comment = 0
        matched = []
        if filename.suffix == ".py":
            with filename.open(mode="r") as all_data:
                data = all_data.readlines()
                for line in data:
                    if line.isspace():
                        space += 1
                    elif line.strip().startswith("#") or line.strip().startswith('"""'):
                        comment += 1
                        result = search_for_pattern(pattern = pattern, text = line)
                        matched.extend(result)
                    else:
                        code += 1
                        result = search_for_pattern(pattern = pattern, text = line)
                        matched.extend(result)
        else:
            # Only python files considered.
            continue

        return {
                "matched": matched, 
                "code": code, 
                "comment": comment, 
                "space": space
        }

def search_for_pattern(pattern: str, text: str) -> List:
    """Helper function for searching for the pattern in a python file."""
    result = re.findall(pattern = pattern, string = text)

    return result if result else []


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Line counter with a simple Regex Parser.")
    parser.add_argument("--pattern", "-p", type=str, required=True, help="regex pattern to search for.")
    args = parser.parse_args()
    
    results = count_number_of_lines(directory = Path(__file__), pattern = args.pattern)
    print(results)

