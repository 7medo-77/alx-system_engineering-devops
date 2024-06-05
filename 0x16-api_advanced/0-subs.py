#!/usr/bin/python3
"""
Module to get the number of subscribers of a given subreddit
"""
import requests
from sys import argv


def number_of_subscribers(subreddit):
    url = 'https://reddit.com/r/' + subreddit + '/about.json'
    response = requests.get(url)
    response_json = response.json()
    sub_count = response_json['data']['subscribers']
    print(sub_count)

if __name__ == "__main__":
    number_of_subscribers(argv[1]);
