"""Interface for using Auth module."""

from Auth import authenticator, authorizor

authenticator.add_user(username="joe", password="852963dsd")
authorizor.add_permission("change page")
authorizor.add_permission("test page")
authenticator.login("joe", "852963dsd")
authorizor.check_permission("test page", "joe")

