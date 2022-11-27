#!/usr/bin/python3

import psycopg2
from config import config
from createdb import createdb
from dropdb import dropdb


#def add_table(table_name, first_element, second_element, primary_key ):
#    add_string="CREATE TABLE " + table_name "(" + primary_key + "serial PRIMARY KEY, "+ first_element + " VARCHAR(50) UNIQUE NOT NULL, " + second_element + " VARCHAR ( 50 ) NOT NULL, created_on TIMESTAMP NOT NULL, last_login TIMESTAMP);"
#    cur.execute(add_string)


def connect():
    table_developers = "CREATE TABLE developers(developer_id serial PRIMARY KEY, developer_name VARCHAR(50) UNIQUE NOT NULL, developer_location VARCHAR ( 50 ) NOT NULL, created_on TIMESTAMP NOT NULL, last_login TIMESTAMP);"
    table_languages = "CREATE TABLE languages(language_name VARCHAR(50) UNIQUE NOT NULL, password VARCHAR ( 50 ) NOT NULL, created_on TIMESTAMP NOT NULL, last_login TIMESTAMP);"
    drop_products = "DROP DATABASE products;"

    # add_table(channels, channel_name, channel_location, channel_name_id)

    conn = None
    try:
        params = config()
        """ Connect to the PostgreSQL database server """
        print('Connecting to the PostgreSQL database...')
        conn = psycopg2.connect(host="localhost", port = 5432, database="suppliers", user="postgres")
        conn.autocommit=True
        cur = conn.cursor() 
    
        #cur.execute(table_developers)
        #cur.execute(table_languages)
        #cur.execute(drop_products)

        #createdb("gslsk")
        dropdb("gslsk")

        # close the communication with the PostgreSQL
        cur.close()

    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()
            cur.close()
            print('Database connection closed.')


if __name__ == '__main__':
    connect()
