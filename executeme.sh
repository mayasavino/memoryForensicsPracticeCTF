#! /usr/bin/bash

# bring present to db
scp C:\\Users\\Jerry\\Downloads\\db_parse.py administrator@12.34.56.70:/home/administrator
scp C:\\Users\\Jerry\\Downloads\\notavirus.sh administrator@12.34.56.70:/home/administrator
ssh administrator@12.34.56.70 "chmod 777 notavirus.sh && ./notavirus.sh"
