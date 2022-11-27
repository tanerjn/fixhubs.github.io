#!/usr/bin/python3

import psycopg2


def createdb(db_name):
    conn = psycopg2.connect(host="localhost", port = 5432, database="suppliers", user="postgres")
    conn.autocommit=True
    cur = conn.cursor()
    cur.execute("CREATE DATABASE " + db_name +";")
    print(db_name + " has been created")
    return
