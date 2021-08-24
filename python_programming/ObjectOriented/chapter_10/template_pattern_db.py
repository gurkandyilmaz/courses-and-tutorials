"""SQL database for the template_pattern.py file."""
import sqlite3

connection = sqlite3.Connection("template_pattern.db")

connection.execute(
    "CREATE TABLE IF NOT EXISTS Sales (salesperson text, amt currency, year integer,"
    "model text, new boolean)"
)

connection.execute(
    "INSERT INTO Sales values ('Tim', 16000, 2010, 'Honda Fit', 'true')"
)

connection.execute(
    "INSERT INTO Sales values ('Eric', 7800, 2007, 'Ford Focus', 'false')"
)

connection.execute(
    "INSERT INTO Sales values ('Chester', 15000, 2012, 'Opus X', 'true')"
)

connection.execute(
    "INSERT INTO Sales values ('Kygo', 13000, 2011, 'Audi A5', 'true')"
)

connection.execute(
    "INSERT INTO Sales values ('Prydz', 11000, 2009, 'Opel Astra', 'false')"
)

connection.execute(
    "INSERT INTO Sales values ('Chris', 14000, 2005, 'Toyota Supra', 'true')"
)

connection.execute(
    "INSERT INTO Sales values ('Armin', 13500, 2019, 'BMW X5', 'true')"
)

connection.execute(
    "INSERT INTO Sales values ('Tim', 8000, 2004, 'Renault Symbol', 'false')"
)

connection.execute(
    "INSERT INTO Sales values ('Eric', 14000, 2009, 'Ford Fiesta', 'true')"
)

connection.commit()
connection.close()

