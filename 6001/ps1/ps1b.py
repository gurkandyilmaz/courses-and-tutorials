# MIT6001 problem set 1
# PART B
# Write a program to calculate how many months it will take to save up enough money for a down payment.
# Solutions in Part A can be used.

from ps1a import Savings

def calculate_time(annual_salary: float, portion_saved: float, total_cost: float, semi_annual_raise: float) -> int:
    """Assumes all inputs are valid. Takes annual salary, portion saved, cost of the house, semi annual raise, Returns the time required to make a down payment."""
    savings = Savings()
    months_required = 0
    monthly_salary = annual_salary / 12
    down_payment = total_cost * savings.portion_down_payment
    while savings.getCurrentSavings() < down_payment:
        if ((months_required % 6) == 1) and (months_required > 6):
            annual_salary *= (1 + semi_annual_raise)
            monthly_salary = annual_salary / 12
        savings.save(monthly_salary, portion_saved)
        months_required += 1

    return months_required

def test_calculate_time():
    testInputs = [(120000,0.05,500000,0.03),(80000,0.1,800000,0.03),(75000,0.05,1500000,0.05),(75000,0.05,750000,0.05)]
    for annual, portion, cost, semi_raise in testInputs:
        time_required = calculate_time(annual, portion, cost, semi_raise)
        print(f"Months required: {time_required}")

if __name__ == '__main__':
    test_calculate_time()


