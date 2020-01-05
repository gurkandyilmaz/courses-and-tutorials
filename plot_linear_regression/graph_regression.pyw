import graphics


def main():
    """Draws a Regression Line based on the points Clicked by the user."""
    win = graphics.GraphWin("Regression Plot",640,480)
    win.setCoords(0,0,640,480)

    text = graphics.Text(graphics.Point(320,460), "Start Clicking on any point.")
    text.draw(win)

    x_axis = graphics.Line(graphics.Point(20,50), graphics.Point(620,50))
    x_axis.setArrow("last")
    x_axis.draw(win)
    y_axis = graphics.Line(graphics.Point(20,50), graphics.Point(20,460))
    y_axis.setArrow("last")
    y_axis.draw(win)
    x_axis_text = graphics.Text(graphics.Point(600,40),"X-axis")
    x_axis_text.draw(win)
    y_axis_text = graphics.Text(graphics.Point(30,470),"Y-axis")
    y_axis_text.draw(win)
    
    draw_rect_button(win)
    list_of_coords = take_input(win)
    x_mean, y_mean, sum_x_square, sum_x_times_y, x_values= compute_variables(list_of_coords)
    slope = compute_slope(x_mean, y_mean, sum_x_square, sum_x_times_y, len(list_of_coords))
    right_edge,left_edge = compute_y_predicted(x_mean, y_mean, slope, x_values)

    draw_regression_line(win, left_edge, right_edge)

    text.setText("Click anywhere on the window to QUIT")
    win.getMouse()
    win.close()


def draw_rect_button(win):
    rect = graphics.Rectangle(graphics.Point(20,15),graphics.Point(60,45))
    rect.setWidth(2)
    rect.draw(win)
    text = graphics.Text(graphics.Point(40,30),"Draw")
    text.draw(win)


def take_input(win):
    coords = []
    condition = True

    while condition:
        point = win.getMouse()
        x = round(point.getX(),2)
        y = round(point.getY(),2)
        
        if (x > 20 and x < 60) and (y > 15 and y < 45):
            #point is inside the button
            condition = False
     
        else:
            # take points
            circle = graphics.Circle(point,2)
            circle.setFill("black")
            circle.draw(win)
            coords.append((x,y))

    return coords


def compute_variables(coordinates):
    x_values = []
    y_values = []
    x_square = []
    x_times_y = []

    for coordinate in coordinates:
        x_values.append(coordinate[0])
        y_values.append(coordinate[1])
        x_square.append(coordinate[0]**2)
        x_times_y.append(coordinate[0]*coordinate[1])

    x_mean = round(sum(x_values)/len(x_values), 2)
    y_mean = round(sum(y_values)/len(y_values), 2)
    sum_x_square = round(sum(x_square), 2)
    sum_x_times_y = round(sum(x_times_y), 2)

    return x_mean,y_mean,sum_x_square,sum_x_times_y,x_values


def compute_slope(x_mean, y_mean, sum_x_square, sum_x_times_y, list_length):
    m = (sum_x_times_y - (list_length*x_mean*y_mean)) / (sum_x_square - (list_length*x_mean**2))
    return m


def compute_y_predicted(x_mean, y_mean, slope, x_values):
    y_predicted = []
    for every_x in x_values:
        y = round(y_mean + slope*(every_x - x_mean), 2)
        y_predicted.append((every_x,y))
    
    x_min = 640
    x_max = 0
    index_max = []
    index_min = []
    for i, coords in enumerate(y_predicted):
        if coords[0] > x_max:
            x_max = coords[0]
            index_max.append(i)
        if coords[0] < x_min:
            x_min = coords[0]
            index_min.append(i)

    right_edge = y_predicted[index_max[-1]]
    left_edge = y_predicted[index_min[-1]]

    return right_edge,left_edge


def draw_regression_line(win, left_edge, right_edge):
    left_point = graphics.Point(left_edge[0], left_edge[1])
    right_point = graphics.Point(right_edge[0],right_edge[1])
    line = graphics.Line(left_point, right_point)
    line.draw(win)


main()