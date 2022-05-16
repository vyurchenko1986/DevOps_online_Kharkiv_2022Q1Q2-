#!/usr/bin/env python3

from bs4 import BeautifulSoup

# create html document
file_path = "task8_1-4_index.html"  # e.g. "task8_1-4_index.html"

with open(file_path, 'r') as open_file:
    html_lines = open_file.read()
    soup = BeautifulSoup(html_lines, 'html.parser')
    print(" *** Title of the document *** ")
    
    # invoke find()
    print(soup.find("title"))
