#!/usr/bin/python3
"""
Module to get the number of subscribers of a given subreddit
"""
import requests
from sys import argv


def number_of_subscribers(subreddit):
    url = 'https://reddit.com/r/' + subreddit + '/about.json'
    try:
        response = requests.get(url)
        response_json = response.json()
        sub_count = response_json['data']['subscribers']
        return(sub_count)
    except ConnectionError:
        return 0
