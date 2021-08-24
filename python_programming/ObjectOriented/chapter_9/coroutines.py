"""This demonstrates one of the use of coroutines."""
import re
from typing import Any

def match_regex(filename: str, pattern: str) -> Any:
    print("Başla...")
    with open(filename) as file:
        lines = file.readlines()
    for line in reversed(lines):
        match = re.match(pattern, line)
        print("MATCH: ", match)
        if match:
            print("GROUPS: ", match.groups())
            print("AAAA")
            regex = yield match.groups()[0]
            print("REGEX: ", regex)

def incrementer():
    score = 0
    while True:
        increment = yield score
        score += increment

if __name__ == "__main__":
    first = incrementer()
    second = incrementer()
#    print(next(first))
#    print(next(second))
#    print(first.send(3))
#    print(second.send(1))
    ERROR_PATTERN = r"XFS ERROR (\[sd[a-z]\])"
    matcher = match_regex("some.logs", ERROR_PATTERN)
    print("NEXT: ", next(matcher))
    print("SEND: ", matcher.send("#"))

