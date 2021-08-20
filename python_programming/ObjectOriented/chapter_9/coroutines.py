"""This demonstrates one of the use of coroutines."""

def incrementer():
    score = 0
    while True:
        increment = yield score
        score += increment


if __name__ == "__main__":
    first = incrementer()
    second = incrementer()

    print(next(first))
    print(next(second))

    print(first.send(3))
    print(second.send(1))
