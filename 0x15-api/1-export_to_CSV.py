#!/usr/bin/python3
"""
Gets the completed todo list for the user at id and prints to a CSV file.
"""
import csv
import requests
import sys


if __name__ == "__main__":
    root = "https://jsonplaceholder.typicode.com"
    users = requests.get(root + "/users", params={"id": sys.argv[1]})
    for names in users.json():
        usr_id = names.get('id')
        todo = requests.get(root + "/todos", params={"userId": usr_id})
        csv_arr = []
        with open(sys.argv[1] + ".csv", 'a') as f:
            writer = csv.writer(f, quoting=csv.QUOTE_ALL)
            for tasks in todo.json():
                writer.writerow([names.get('id'), "Antonette",
                                 str(tasks.get('completed')),
                                 tasks.get('title')])
