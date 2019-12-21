import re,time
"""

Calculator: it takes an input from the user and compute its result.
Usage: Type the expression in the form of 24/12+4-5 then press enter, 
    it will return 1 or rounded to 3 version if applicable.
Available operations: Only +,-,*,/
    
"""

# take the input from the user
def take_input():
    # Create regex objects to extract the numbers and operationns from user input
    condition = True
    regex_numbers_operations = re.compile(r"\d+[\+\-\/\*]*")
    regex_operations_faulty = re.compile(r"[\+\-\*\/]{2,}")
    regex_invalid = re.compile(r"[a-zA-Z]|[\+\-\*\/]{2,}")

    while condition:
        user_input = input("Start typing ('q' to exit): ")
       
        numbers_operations = re.findall(regex_numbers_operations, user_input)
        operations_faulty = re.findall(regex_operations_faulty, user_input)
        invalid_input = re.findall(regex_invalid,user_input)
        
        # Check the input
        if user_input.lower() == "q":
            print("Closing the calculator...")
            time.sleep(2)
            break
        elif user_input.lower() == "":
            print("Empty INPUT IS NOT ACCEPTED!!!\n")
            continue
        else:
            # Check the validity of the input
            if len(invalid_input)==0 and len(operations_faulty)==0 :
                try:
                    result = split_input(numbers_operations)
                    print(f"Result of ({''.join(numbers_operations)}) = {result}\n")
                except IndexError:
                    print("INVALID INPUT!\n")
                    continue      
            else:
                # Check the in-validity of the input
                if len(invalid_input) !=0:
                    print("INVALID INPUT!!\n")
                    continue
                    
                    
# Into numbers and operations
def split_input(input_list):
    
    operation = []
    number = []
    
    for element in input_list:
        if element[-1] in ["+","-","/","*"]:
            operation.append(element[-1])
            number.append(int(element[:-1]))
        else:
            number.append(int(element))
    
    return do_processing(number,operation)


# Make the numbers ready for the calculation
def do_processing(numbers_only,operations_only):
    
    calculation_result = []
    
    for i in range(len(operations_only)):
        res = do_operation(numbers_only[:2], operations_only[i])
        calculation_result = numbers_only[2:]
        calculation_result.insert(0,res)
        numbers_only = calculation_result
    
    return calculation_result[0]

    
# Calculations
def do_operation(number_pairs,oper_type):

    if oper_type == "+":
        return round(number_pairs[0]+number_pairs[1], 3)
    elif oper_type == "-":
        return round(number_pairs[0]-number_pairs[1], 3)
    elif oper_type == "/":
        return round(number_pairs[0]/number_pairs[1], 3)
    elif oper_type == "*":
        return round(number_pairs[0]*number_pairs[1], 3)


if __name__ == "__main__": 
    take_input()
