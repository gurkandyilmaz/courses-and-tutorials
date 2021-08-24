"""Simple usage of pytest module."""
import pytest
from stats_list import StatsList

@pytest.fixture
def values():
    return StatsList([1,2,2,5,5,6])

def test_mean(values):
    assert values.mean() == 3.5
    values.append(7)
    assert values.mean() == 4

def test_median(values):
    assert values.median() == 3.5

def test_mode(values):
    assert values.mode() == [2,5]
    values.remove(2)
    assert values.mode() == [5]

@pytest.mark.skip("Useless test.")
def test_skip():
    assert True == True

@pytest.mark.skipif("sys.version_info <= (3,0)")
def test_skipif():
    assert True == True

@pytest.mark.xfail
def test_expected_failure():
    assert True == True
