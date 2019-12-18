import re,time



def take_input():
    
    condition = True
    regex_numbers_operations = re.compile(r"\d+[\+\-\/\*]*")
    regex_operations_faulty = re.compile(r"[\+\-\*\/]{2,}")

    while condition:
        user_input = input("Start typing ('q' to exit): ")
        numbers_operations = re.findall(regex_numbers_operations, user_input)
        operations_faulty = re.findall(regex_operations_faulty, user_input)
        
##        print("Numbers: ", numbers_operations)
##        print("Operations faulty: ", operations_faulty)

        if len(operations_faulty) != 0:
            print("Enter Only a single operation btw Numbers.")
        if user_input.lower() == "q":
##            condition = False
            print("Closing the calculator...")
            time.sleep(2)
            break
        elif user_input.lower() == "":
            print("enter Pressed!!!")

##        print(user_input)
        print(f"Result of ({''.join(numbers_operations)}) = ", end="")
        split_input(numbers_operations)


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


def do_processing(numbers_only,operations_only):
    
    deneme_numbers = numbers_only
    deneme_operations = operations_only
    calculation_result = []
    
    for i in range(len(deneme_operations)):
        res = do_operation(deneme_numbers[:2], deneme_operations[i])
        calculation_result = deneme_numbers[2:]
#         print("Before: ", new)
        calculation_result.insert(0,res)
#         print(new)
        deneme_numbers = calculation_result
    
    print(calculation_result[0],"\n")


def do_operation(number_pairs,oper_type):

    if oper_type == "+":
        return number_pairs[0]+number_pairs[1]
    elif oper_type == "-":
        return number_pairs[0]-number_pairs[1]
    elif oper_type == "/":
        return number_pairs[0]/number_pairs[1]
    elif oper_type == "*":
        return number_pairs[0]*number_pairs[1]


if __name__ == "__main__":  
    take_input()




