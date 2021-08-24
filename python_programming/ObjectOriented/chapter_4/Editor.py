"""Interface for using Auth module."""

from Auth import authenticator, authorizor
from CustomExceptions import (InvalidUsername, InvalidPassword, 
        NotPermittedError, NotLoggedInError)

class Editor:
    def __init__(self):
        self.username = None
        self.menu_item = {
                "login": self.login,
                "change": self.change,
                "test": self.test,
                "quit": self.quit
        }

    def login(self):
        logged_in = False
        while not logged_in:
            username = input("Enter your username: ").lower()
            password = input("Enter your password: ")

            try:
                logged_in = authenticator.login(username, password)
            except InvalidUsername:
                print("Invalid Username")
            except InvalidPassword:
                print("Invalid Password.")
            else:
                self.username = username

    def change(self):
        if self.is_permitted("change page"):
            print("Permission: change page...")

    def test(self):
        if self.is_permitted("test page"):
            print("Permission: test page...")

    def quit(self):
        raise SystemExit()

    def is_permitted(self, permission):
        try:
            authorizor.check_permission(permission, self.username)
        except NotLoggedInError as error:
            print(f"Login first, {error.username}")
            return False
        except NotPermittedError as error:
            print(f"{self.username} cannot {permission}")
            return False
        else:
            return True

    def menu(self):
        try:
            while True:
                print(
                """Enter a command:\n
                    login: Login\n
                    change: Change the permission\n
                    test: Test a permission\n
                    quit: Quit the system\n"""
                )
                answer = input("Your command: ").lower()
                
                try:
                    command = self.menu_item[answer]
                except KeyError:
                    print("Invalid command: ", answer)
                else:
                    command()
                    print()

        finally:
            print("Exiting from Auth module...")


if __name__ == "__main__":
    authenticator.add_user(username="joe", password="852963dsd")
    authenticator.add_user(username="jeffren", password="12345678")

    authorizor.add_permission("change page")
    authorizor.add_permission("test page")

#    authorizor.check_permission("test page", "joe")
    
    Editor().menu()




