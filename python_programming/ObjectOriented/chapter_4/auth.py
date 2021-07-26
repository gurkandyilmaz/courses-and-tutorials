import hashlib

class User:
    def __init__(self, username, password):
        self.username = username
        self.password = self._encrypt_password(password)
        
    def check_password(self, password):
        encrypted = self._encrypt_password(password)
        
        return encrypted == self.password

    def _encrypt_password(self, password):
        hash_string = self.username + password
        hash_string = hash_string.encode("utf8")
        
        return hashlib.sha256(hash_string).hexdigest()


if __name__ == "__main__":
    user_a = User(username="claire", password="74xx")
    user_b = User(username="mathew", password="11ksk")

    print(user_a.password)
    print(user_b.password)
    print(user_a.check_password(password="xx"))
