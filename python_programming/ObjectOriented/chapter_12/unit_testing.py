import sys
import unittest
from stats_list import StatsList

class TestValidInput(unittest.TestCase):
    def setUp(self):
        self.stats = StatsList([1,2,2,5,5,6])

    def test_mean(self):
        self.assertEqual(self.stats.mean(), 3.5)

    def test_median(self):
        self.assertEqual(self.stats.median(), 3.5)

    def test_mode(self):
        self.assertEqual(self.stats.mode(), [2,5])
    
    @unittest.expectedFailure
    def test_expected_failure(self):
        self.assertTrue(False)

    @unittest.skip("Useless test.")
    def test_skip(self):
        self.assertTrue(False)
    
    @unittest.skipUnless(sys.platform.startswith("linux"), "only linux")
    def test_skipunless(self):
        self.assertTrue(True)

if __name__ == "__main__":
    unittest.main(verbosity=3)
