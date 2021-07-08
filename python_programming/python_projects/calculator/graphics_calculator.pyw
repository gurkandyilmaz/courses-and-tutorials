import graphics
from button import Button

class Calculator:
    """ A simple graphical calculator interface with graphics.py module.
        graphics_calculator.pyw, button.py, and graphics.py must be in the same folder.
    """

    def __init__(self):
        win = graphics.GraphWin("Calculator", 350, 350)
        win.setCoords(0, 0, 10, 10)
        win.setBackground("slategray")
        self.win = win
        
        self.__createButtons()
        self.__createDisplay()

        while True:
            self.processButton(self.__getButton())

    
    def __createButtons(self):
        buttons = [(2.5,5.25,"7"),(3.75,5.25,"8"),(5,5.25,"9"),(6.25,5.25,"<-"),(7.5,5.25,"C"),
                    (2.5,4,"4"),(3.75,4,"5"),(5,4,"6"),(6.25,4,"*"),(7.5,4,"/"),
                    (2.5,2.75,"1"),(3.75,2.75,"2"),(5,2.75,"3"),(6.25,2.75,"+"),(7.5,2.75,"-"),
                    (3.75,1.5,"0"),(5,1.5,"."),(6.87,1.5,"=")]
        self.buttons = []
        for (p1, p2, label) in buttons[:-1]:
            self.buttons.append(Button(self.win, graphics.Point(p1,p2), 1, 1, label))
        self.buttons.append(Button(self.win, graphics.Point(buttons[-1][0],buttons[-1][1]), 
                                            2.25,1,buttons[-1][2]))
        

    def __createDisplay(self):
        bg = graphics.Rectangle(graphics.Point(2,6),graphics.Point(8,8))
        bg.setFill("white")
        bg.draw(self.win)

        text = graphics.Text(graphics.Point(5,7),"")
        text.draw(self.win)
        text.setFace("courier")
        text.setStyle("bold")
        text.setSize(16)
        self.display = text


    def __getButton(self):
        while True:
            point = self.win.getMouse()
            for b in self.buttons:
                if b.clicked(point):
                    return b.getLabel()

    def processButton(self, key):
        text = self.display.getText()
        
        if key == "C":
            self.display.setText(" ")
        elif key == "<-":
            self.display.setText(text[:-1])
        elif key == "=":
            try: 
                result = eval(text)
            except:
                result = "ERROR"
            self.display.setText(result)
        else:
            self.display.setText(text+key)


if __name__ == "__main__":
    calc = Calculator()
