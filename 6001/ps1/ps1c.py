# MIT6001 problem set 1
# PART C
# Write a program to find the best rate of savings to achieve a down payment on a $1M in 36 months.
# Solutions in Part A/B can be used.

from ps1a import Savings

def calculate_saving_rate(starting_salary: float):
    """Takes the initial salary calculates the best saving rate to make a down payment in 3 years, Returns the best saving rate and the steps taken by the bisection search."""
    savings = Savings()
    # parameters required for the current_savings calculations.
    months_required = 36
    semi_annual_raise = 0.07
    total_cost = 1000000
    portion_down_payment = savings.portion_down_payment
    down_payment = portion_down_payment * total_cost
    monthly_salary = starting_salary / 12
    
    # find the best saving rate by bisection search.
    steps = 0
    epsilon = 100
    largest = 10000
    lowest = 0
    best_rate = (largest + lowest) // 2
    state = True
    break_loop = 500
    while state:
        steps += 1
        annual_salary = starting_salary
        # Raise the salary after every 6th, 12th, 18th.. months
        for month in range(1,months_required+1):
            if ((month % 6) == 1) and (month > 6):
                annual_salary *= (1 + semi_annual_raise)
                monthly_salary = annual_salary / 12
            savings.save(monthly_salary, float(best_rate)/10000)
        tmp = savings.getCurrentSavings()
        # first escape condition
        if ((tmp - down_payment) < epsilon) and (tmp > down_payment):
            state = False
            return (best_rate, steps)
        # bisection search
        if tmp < down_payment:
            lowest = best_rate
        else:
            largest = best_rate
        best_rate = (largest + lowest) // 2
        savings.resetCurrentSavings()
        # second escape depending on the number of iterations
        if steps > break_loop:
            break
    if steps > break_loop:
        raise ValueError()
    return (best_rate, steps)

def test_calculate_time():
    """Test the calculate time function with 3 different initial salaries"""
    testInputs = [150000, 300000, 10000]
    for test in testInputs:
        print("initial salary: ", test)
        try:
            best_rate, steps = calculate_saving_rate(test) 
            print(f"Best Rate: {best_rate/10000}, Steps: {steps}")
        except ValueError:
            print("It is not possible to pay the down payment in 3 years")

if __name__ == '__main__':
    test_calculate_time()




