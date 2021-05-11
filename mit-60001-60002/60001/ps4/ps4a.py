# Problem Set 4A

def get_permutations(sequence):
    '''
    Enumerate all permutations of a given string

    sequence (string): an arbitrary string to permute. Assume that it is a
    non-empty string.  

    You MUST use recursion for this part. Non-recursive solutions will not be
    accepted.

    Returns: a list of all permutations of sequence

    Example:
    >>> get_permutations('abc')
    ['abc', 'acb', 'bac', 'bca', 'cab', 'cba']

    Note: depending on your implementation, you may return the permutations in
    a different order than what is listed here.
    '''
    permutations = []
    hold_out = sequence[0]

    if len(sequence) == 1:
        return [sequence]

    # Get the permutations without the hold_out character.
    for subsequence in get_permutations(sequence[1:]):
        # Place the hold_out character inside a subsequence.
        for idx in range(len(subsequence)+1):
            tmp = subsequence[:idx] + hold_out + subsequence[idx:] 
            permutations.append(tmp)

    return permutations

def test_get_permutations():
    sequences = {"a":{"a"}, "ab":{"ab","ba"}, "abc":{"abc","acb","bac","bca","cba","cab"}}
    
    for sequence, answer in sequences.items():
        result = set(get_permutations(sequence))
        if len(result) == len(answer):
            if result == answer:
                print("SUCCESS")
                print(f"Expected: {answer} and got: {result}")
                print("-------------")
        else:
            print("TEST FAILED !!!")
            print(f"Expected length: {len(answer)} but got: {len(result)}")
            print("-----------")

if __name__ == '__main__':
    test_get_permutations()

