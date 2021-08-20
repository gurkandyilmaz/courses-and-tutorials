"""
Simple way of creating generators using two different methods.
First method creates a CustomIterator class having iter and next methods.
Second methods uses yield statement to create a generator.
"""
from time import time
from typing import Any, List

class CustomIterator:
    """Iterates over a list. __iter__ and __next__ methods are required."""
    def __init__(self, container: List) -> None:
        self.container = container
        self.idx = 0

    def __iter__(self):
        return self

    def __next__(self):
        if len(self.container) == self.idx:
            raise StopIteration
        datum = self.container[self.idx]
        self.idx += 1

        return datum

def custom_iterator(container: List) -> Any:
    """No iter and next methods, uses yield."""
    for datum in container:
        yield datum

if __name__ == "__main__":
    """Difference in running times between the class and the function can be seen at the end."""
    data = [*range(0,10000000,2)]
    
    t0 = time()
    x = 0
    for datum in CustomIterator(data):
        x += 1
    t1 = time()
    t2 = time()
    y = 0
    for datum in custom_iterator(data):
        y += 1
    t3 = time()

    print(f"Elapsed Time:\n\tCustomIterator: {t1-t0:.7f}\n\tcustom_iterator: {t3-t2: .7f}")
