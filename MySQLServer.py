import mysql.connector
from mysql.connector import Error

def create_database(database_name):
    try:
        #Connecting to the server
        connection = mysql.connector.connect(
            host='localhost',
            user='root',  
            password='OlajideQA1991!'
        )

        if connection.is_connected():
            print("Connected to MySQL Server")

            # Creating a cursor object using the cursor() method
            cursor = connection.cursor()

            # Creating a database
            create_db_query = f"CREATE DATABASE IF NOT EXISTS alx_book_store"
            cursor.execute(create_db_query)
            print(f"Database '{database_name}' created successfully or already exists")

    except mysql.connector.Error as e:
        print(f"Error: {e}")

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("Database connection is closed")

create_database("alx_book_store")