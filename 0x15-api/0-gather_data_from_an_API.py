#!/usr/bin/python3
"""
Module which fetches data from an API
"""
import requests
import sys


if __name__ == "__main__":
    apiCall = "https://jsonplaceholder.typicode.com/todos"
    userCall = "https://jsonplaceholder.typicode.com/users"
    id = sys.argv[1]
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
    taskList = []

    for task in resDict:
        if task.get('userId') == int(id):
            totalNum += 1
            if (task.get('completed')):
                doneNum += 1
                taskList.append(task['title'])

    print("Employee {} is done with tasks({}/{}):"
          .format(name, doneNum, totalNum))
    for task in taskList:
        print("\t {}".format(task))
