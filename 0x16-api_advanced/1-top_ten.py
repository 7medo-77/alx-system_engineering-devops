#!/usr/bin/python3
"""
Module to get the number of subscribers of a given subreddit
"""
import math
import random
import requests
from sys import argv


def top_ten(subreddit):
    url = 'https://reddit.com/r/' + subreddit + '/top.json'
    if not subreddit:
        print("None")
    try:
        response = requests.get(url)
        response_json = response.json()
        resArray = response_json['data']['children']
        titleArray = []
        for dict_result in resArray[0:10]:
            titleArray.append(dict_result['data']['title'])

        for title in titleArray:
            print(title)
    except requests.RequestException:
        print("None")
