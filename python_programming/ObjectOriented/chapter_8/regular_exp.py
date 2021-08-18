import sys
import re
import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Simple Regex Parser.")
    parser.add_argument("--pattern", "-p", type=str, required=True, help="regex pattern to search for.")
    parser.add_argument("--text", "-t", type=str, required=True, help="Text to be searched.")
    args = parser.parse_args()
    match = re.match(pattern = args.pattern, string = args.text)

    print(match)
