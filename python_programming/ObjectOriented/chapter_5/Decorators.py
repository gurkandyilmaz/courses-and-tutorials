"""Demonstraing the use of property method and decorators. The two classes
work the same. The first uses property, the second uses decorators as another
way of defining properties."""

class Colors:
    def __init__(self, rgb_value, name):
        self.rgb_value = rgb_value
        self._name = name

    def _set_name(self, name):
        print("_set_name method.")
        if not name:
            raise ValueError("Invalid Name.")
        self._name = name

    def _get_name(self):
        print("_get_name method.")
        return self._name

    name = property(_get_name, _set_name)

class Colours:
    def __init__(self, rgb_value, name):
        self.rgb_value = rgb_value
        self._name = name

    @property
    def name(self):
        return self._name

    @name.setter
    def name(self, name):
        self._name = name


if __name__ == "__main__":
    colors = Colors(rgb_value = 255, name = "red")
    print(colors.name)
    colors.name = "Blue"
    print(colors.name)

    colours = Colours(rgb_value = 255, name = "red")
    print(colours.name)
    colours.name = "Blue"
    print(colours.name)


