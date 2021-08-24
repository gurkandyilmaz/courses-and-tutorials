"""
Demonstration of template design pattern. Common tasks are gathered in a base
class. Base class have the common operations to all tasks implemented and the
remaining operations will be implemented by subclasses.
"""

import sqlite3
import datetime

class BaseQuery:
    def __init__(self):
        self.db = None
        self.cursor = None
        self.query = None
        self.results = None
        self.formatted_results = None

    def connect(self):
        self.db = sqlite3.connect("template_pattern.db")
        self.cursor = self.db.cursor()

    def construct_query(self):
        raise NotImplementedError()

    def do_query(self):
        self.results = self.cursor.execute(self.query).fetchall()

    def format_results(self):
        output = []
        for row in self.results:
            row = [str(data) for data in row]
            output.append(" ".join(row))
        self.formatted_results = "\n".join(output)

    def output_results(self):
        raise NotImplementedError()

    def close(self):
        self.cursor.close()
        self.db.close()

    def process_format(self):
        print(self)
        self.connect()
        self.construct_query()
        self.do_query()
        self.format_results()
        self.output_results()
        self.close()

class NewVehicles(BaseQuery):
    def construct_query(self):
        self.query = "SELECT * FROM Sales WHERE new='true';"

    def output_results(self):
        print(self.formatted_results)

class GrossSales(BaseQuery):
    def construct_query(self):
        self.query = "SELECT salesperson, sum(amt) FROM Sales group by salesperson;"

    def output_results(self):
        print(self.formatted_results)
        now = datetime.date.today().strftime("%Y%m%d")
        filename = f"gross_sales_{now}.txt"
        with open(filename, "w") as file:
            file.write(self.formatted_results)

if __name__ == "__main__":
    SQL_LIST_TABLES = "SELECT * FROM sqlite_master WHERE type='table';"
    SQL_SELECT_CONTAINS = "SELECT * FROM Sales WHERE model LIKE '%Opel%';"
    SQL_SELECT_EQUALS = "SELECT * FROM Sales WHERE new='false' AND amt>=8000;"

    new_vehicles = NewVehicles()
    new_vehicles.process_format()

    gross_sales = GrossSales()
    gross_sales.process_format()
