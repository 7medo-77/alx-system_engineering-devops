#!/usr/bin/python3
"""
Module which fetches data from an API
"""
from csv import DictWriter
from csv import writer
import csv
import requests
import sys


if __name__ == "__main__":
    apiCall = "https://jsonplaceholder.typicode.com/todos"
    userCall = "https://jsonplaceholder.typicode.com/users"
    id = sys.argv[1]
    fileName = id + ".csv"
    name = ""

    responseUser = requests.request("GET", userCall)
    userDict = responseUser.json()

    for user in userDict:
        if user.get('id') == int(id):
            name = user['name']

    response = requests.request("GET", apiCall)
    resDict = response.json()
    doneNum = 0
    totalNum = 0
    csvDict = {}
    taskList = []

    for task in resDict:
        if task.get('userId') == int(id):
            csvDict['userId'] = task.get('userId')
            csvDict['username'] = name
            csvDict['task_status'] = task.get('completed')
            csvDict['title'] = task.get('title')
            taskList.append(csvDict)
            csvDict = {}

    with open(fileName, 'w') as csv:
        fieldnames = ['userId', 'username', 'task_status', 'title']
        writer = DictWriter(csv, fieldnames, delimiter=',', quotechar='\"')
        for task in taskList:
            writer.writerow(task)
