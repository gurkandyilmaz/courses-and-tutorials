"""Different ways of creating concurrency."""
import os
import time
from multiprocessing import Process, cpu_count
from threading import Thread

### Threading implementation
class InputReader(Thread):
    def run(self):
        self.read_input = input()
        print("inside run()")

def test_threading():
    print("Enter some text and press ENTER: ")
    thread = InputReader()
    thread.start() #run method is executed and at the same time while loop is executed.

    count = result = 1
    while thread.is_alive():
        result = count * count
        count +=1

    print(f"Calculated squares up to {count}*{count} = {result}")


### Multiprocessing Implementation.
class MuchCPU(Process):
    def run(self):
        print("PID: ", os.getpid())
        for _ in range(200000000):
            pass

if __name__ == "__main__":
    process = [MuchCPU() for f in range(cpu_count())]
    t0 = time.time()
    for procs in process:
        procs.start()

    for procs in process:
        procs.join()
    t1 = time.time()    
    
    print(f"Process took {t1 - t0:.5} secs.")
