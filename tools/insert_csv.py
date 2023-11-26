# Büşra Kurşun
# ITU - Computer Engineering
# Programatically insert large .csv files to tables in the database
# For use with the BLG 317E project

import csv
import getpass
import mysql.connector

while(True):
    try:
        sqlHost = input("Enter the MySQL host address: ")
        sqlDB = input("Enter database name: ")
        sqlUser = input("Username: ")
        sqlPass = getpass.getpass()

        dbConn = mysql.connector.connect(
        host = sqlHost,
        user = sqlUser,
        password = sqlPass,
        database = sqlDB,
        )
        break
    except Exception as e:
        print(f"\nError: {e}")

csvPath = input("\nEnter the full path of .csv file to import: ").replace("\"","")
csvFile = open(csvPath, mode='r' ,encoding='utf-8-sig')
csvReader = csv.reader(csvFile)

rowCount = 0
for row in csvReader:
    rowCount += 1

csvFile.seek(0)
csvReader = csv.reader(csvFile)

mycursor = dbConn.cursor()
mycursor.execute("SHOW TABLES")
print("\nTable List in the DB:")
for x in mycursor:
    print(x[0])

sqlTable = input("\nWhich table to insert to: ")

firstRow = True
header = ""
appliedCount = 1
print("\nNow inserting data:")
for row in csvReader:
    if(firstRow):
        header = "(" + ",".join(row) + ")"
        firstRow = False
        continue
    data = "(\'" + "\',\'".join(row) + "\')"
    sql = "INSERT INTO " + sqlTable + " " + header + " VALUES " + data
    mycursor.execute(sql)
    dbConn.commit()
    print(f"Inserted {appliedCount} of {rowCount-1} rows\r",end="",flush=True)
    appliedCount += 1

mycursor.close()
dbConn.close()
print("\nInsertion Complete!")