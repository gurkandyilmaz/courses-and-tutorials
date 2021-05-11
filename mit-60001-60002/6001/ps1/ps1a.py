# Answers to the mit6001 problem set 1
# PART A
# A program to calculate how many months it will take for someone to save up enough money for a down payment

class Savings():
    def __init__(self):
        self.portion_down_payment = 0.25
        self.ratio = 0.04
        self.current_savings = 0
    
    def save(self, monthly_salary, portion_saved):
        from_investment = self.current_savings * (self.ratio/12)
        self.current_savings += (monthly_salary * portion_saved) + from_investment
    
    def resetCurrentSavings(self):
        self.current_savings = 0

    def getCurrentSavings(self):
        return self.current_savings

    def __str__(self) -> str:
        result = f"Your Current Savings: {self.current_savings}"
        return result

def takeInput() -> tuple:
    """Assumes all inputs are valid. Takes 3 input from user namely annual salary, portion saved, cost of the house"""
    annual_salary = float(input("Enter Annual Salary: "))
    portion_saved = float(input("Enter the saving percantage as a decimal: "))
    cost_of_the_house = float(input("Enter the cost of the house you want to buy: "))
    
    return (annual_salary, portion_saved, cost_of_the_house)

def compute_time(annual_salary: float, portion_saved: float, cost_of_the_house: float) -> int:
    """Assumes all inputs are valid. Takes annual salary, portion saved, cost of the house, Returns the time it will take a down payment"""
    savings = Savings()
    months_required = 0
    down_payment = cost_of_the_house * savings.portion_down_payment
    monthly_salary = annual_salary / 12
    while savings.getCurrentSavings() < down_payment:
        savings.save(monthly_salary, portion_saved)
        months_required += 1
    
    return months_required

def test_compute_time():
    testInput = [(120000,0.1,1000000),(80000,0.15,500000),(120000,0.2,1000000),(120000,0.4,1000000),(120000,0.8,1000000),(120, 0.5, 240)]
    for salary, saved, cost in testInput:
        time_required = compute_time(salary, saved, cost)
        print(f"Months required: {time_required}")

def main():
    salary, saved, cost = takeInput()
    time_required = compute_time(salary, saved, cost)
    print(f"Number of months: {time_required}")

if __name__ == '__main__':
    test_compute_time()







