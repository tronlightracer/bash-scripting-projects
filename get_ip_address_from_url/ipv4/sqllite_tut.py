#! /home/trev/Documents/bash_scripting/get_ip_address_from_url/venv/bin/python3
import sqlite3

connection = sqlite3.connect("temp.db")
cursor_obj = connection.cursor()
create_table = cursor_obj.execute(" CREATE TABLE temp (Country, State, City) IF NOT EXISTS")

# add the insertion of items
inserting = """
INSERT INTO temp (Country, State, City) VALUES('USA', 'Colorado', 'Denver')
"""
insertion = cursor_obj.execute(inserting)


