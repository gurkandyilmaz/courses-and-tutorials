"""Simple authentication-authorization module to show the use of exception handling and class methods."""

import hashlib

from CustomExceptions import (UsernameAlreadyExist, PasswordTooShort, 
        InvalidUsername, InvalidPassword, NotLoggedInError, NotPermittedError)

class User:
    """Generic User class. It only holds username and password."""
    def __init__(self, username, password):
        self.username = username
        self.password = self._encrypt_password(password)
        self.is_logged_in = False

    def check_password(self, password):
        encrypted = self._encrypt_password(password)
        
        return encrypted == self.password

    def _encrypt_password(self, password):
        hash_string = self.username + password
        hash_string = hash_string.encode("utf8")
        
        return hashlib.sha256(hash_string).hexdigest()

class Authenticator:
    def __init__(self):
        """Creates a username-user object dictionary to hold all the registered users."""
        self.users = dict()
    
    def add_user(self, username, password):
        """Add the user after checking if the username is present in the
           registered user list and the password length."""

        if username in self.users:
            raise UsernameAlreadyExist(username)
        if len(password) < 8:
            raise PasswordTooShort(username)
        self.users[username] = User(username, password)
    
    def login(self, username, password):
        try:
            user = self.users[username]
        except KeyError:
            raise InvalidUsername(username)
        
        if not user.check_password(password):
            raise InvalidPassword(username, user)

        user.is_logged_in = True
        
        return True

    def is_logged_in(self, username):
        if username in self.users:
            return self.users[username].is_logged_in
        return False

class Authorizor:
    """Handles user permissions."""
    def __init__(self, authenticator):
        self.authenticator = authenticator
        self.permissions = dict()

    def add_permission(self, permission_name):
        """Add a new permission to the permissions' list."""
        try:
            permitted_users = self.permissions[permission_name]
        except KeyError:
            self.permissions[permission_name] = set()
        else:
            raise PermissionError("Permission Exists.")

    def permit_user(self, permission_name, username):
        """Add a user inside a given permission set."""
        try:
            permitted_users = self.permissions[permission_name]
        except KeyError:
            raise PermissionError("Permission does NOT exist.")
        else:
            if username not in self.authenticator.users:
                raise InvalidUsername(username)
            permitted_users.add(username)

    def check_permission(self, permission_name, username):
        """Check if the user has the given permission."""
        if not self.authenticator.is_logged_in(username):
            raise NotLoggedInError(username)
        try:
            permitted_users = self.permissions[permission_name]
        except KeyError:
            raise PermissionError("Permission does NOT exist.")
        else:
            if username not in self.authenticator.users:
                raise InvalidUsername(username)
            if username not in permitted_users:
                raise NotPermittedError(username)
            return username in permitted_users

authenticator = Authenticator()
authorizor = Authorizor(authenticator)
