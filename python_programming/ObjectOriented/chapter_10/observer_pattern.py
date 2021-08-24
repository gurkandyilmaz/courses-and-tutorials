"""Observer pattern example."""

class BankAccount:
    """
    This class is the observed class.Name and Balance attributes will be 
    observed by other class, namely Observer. Everytime the two attributes
    are updated observers will see the updated values.
    """
    def __init__(self) -> None:
        self.observers = []
        self._name = None
        self._balance = None
    
    def add_observer(self, observer):
        self.observers.append(observer)

    @property
    def name(self) -> str:
        return self._name

    @name.setter
    def name(self, name: str) -> None:
        self._name = name
        self._update_observers()

    @property
    def balance(self) -> int:
        return self._balance

    @balance.setter
    def balance(self, balance: int) -> None:
        self._balance = balance
        self._update_observers()
    
    def _update_observers(self) -> None:
        for obs in self.observers:
            obs()
            print(f"Name: {self.name} | Balance: {self.balance}")
            print("-----------------")
    
class Observer:
    """Observers will be updated if there is a change in the BankAccount"""
    count = 0
    def __init__(self) -> None:
        self.observer_id = Observer.count + 1
        Observer.count += 1

    def __call__(self):
        print(f"Dear Observer {self.observer_id}, BankAccount updated!")
        #print(f"Name: {self.account.name} | Balance:{self.account.balance}")

if __name__ == "__main__":
    account = BankAccount()
    observer_1 = Observer()
    observer_2 = Observer()
    
    account.add_observer(observer_1)
    account.add_observer(observer_2)

    account.name = "ING-Yenice-Vadeli"
    account.balance = 1200

