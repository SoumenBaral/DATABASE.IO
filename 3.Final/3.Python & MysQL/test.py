import mysql.connector

mydbconnection = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="@17060Sb"
)
print(mydbconnection)


