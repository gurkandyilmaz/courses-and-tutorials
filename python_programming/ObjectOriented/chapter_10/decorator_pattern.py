"""Demonstrating example use of decorators. Checks if the user is eligible
to do a certain operation or not via a decorator function check_permission."""

def check_permission(func):
    operations = {
        "A": [1, 5, 9, 10], 
        "B": [2, 4, 5],
        "C": [3, 6, 7, 8, 9, 10]
    }
    def wrapper(*args, **kwargs):
        if kwargs["user_id"] in operations[kwargs["operation"]]:
            func(*args, **kwargs)
        else:
            print("NOT Eligible")
    
    return wrapper

@check_permission
def do_operation(user_id, operation):
    print(f"{user_id} is doing the operation: {operation}")

if __name__ == "__main__":
# the line below is equivalent to using @check_permission.
#    do_operation = check_permission(do_operation)
    do_operation(user_id=10, operation="B")
