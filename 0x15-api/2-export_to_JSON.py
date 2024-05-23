#!/usr/bin/python3
"""
Module which fetches data from an API
"""
from json import dump
import requests
import sys


if __name__ == "__main__":
    apiCall = "https://jsonplaceholder.typicode.com/todos"
    userCall = "https://jsonplaceholder.typicode.com/users"
    id = sys.argv[1]
    fileName = id + ".json"
    name = ""

    responseUser = requests.request("GET", userCall)
    userDict = responseUser.json()

    for user in userDict:
        if user.get('id') == int(id):
            name = user['username']

    response = requests.request("GET", apiCall)
    resDict = response.json()

    jsonDict = {}
    jsonDict[id] = []
    taskDict = {}

    for task in resDict:
        if task.get('userId') == int(id):
            taskDict['task'] = task.get('title')
            taskDict['completed'] = task.get('completed')
            taskDict['username'] = name
            jsonDict[id].append(taskDict)
            taskDict = {}

    with open(fileName, 'w') as json:
        dump(jsonDict, json)
