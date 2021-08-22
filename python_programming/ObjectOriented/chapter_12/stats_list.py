from collections import defaultdict

class StatsList(list):
    def mean(self):
        return sum(self) / len(self)
    
    def median(self):
        if len(self) % 2:
            return self[int(len(self) / 2)]
        else:
            idx = int(len(self) / 2)
            return (self[idx] + self[idx-1]) / 2

    def mode(self):
        freqs = defaultdict(int)
        for item in self:
            freqs[item] += 1
        mode_freq = max(freqs.values())
        modes = []
        for item, freq in freqs.items():
            if freq == mode_freq:
                modes.append(item)
        return modes

if __name__ == "__main__":
    stats = StatsList([1,2,2,5,5,6])
    print(stats.mean())
    print(stats.median())
    print(stats.mode())
