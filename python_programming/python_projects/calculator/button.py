from graphics import *


class Button:
    """ Creates a Rectangular button object."""
    def __init__(self, win, center, width, height, label):
        """ İnitialize calculator object"""
        w, h = width/2.0, height/2.0
        x, y =  center.getX(), center.getY()
        self.xmax, self.ymax = x+w, y+h
        self.xmin, self.ymin = x-w, y-h
        p1 = Point(self.xmin, self.ymin)
        p2 = Point(self.xmax, self.ymax)
        self.rectangle = Rectangle(p1, p2)
        self.rectangle.setFill("lightgray")
        self.rectangle.setWidth(2)
        self.rectangle.draw(win)

        self.label = Text(center, label)
        self.label.draw(win)

    def clicked(self, p):
        """ Checks if a clicked point is inside the button"""
        return (self.xmin <= p.getX() <= self.xmax and 
                self.ymin <= p.getY() <= self.ymax)

    def getLabel(self):
        return self.label.getText()
       