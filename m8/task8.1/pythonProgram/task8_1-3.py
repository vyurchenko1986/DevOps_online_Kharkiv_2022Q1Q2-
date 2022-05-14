#!/usr/bin/env python3

file_path = input("Enter file name: ")  # e.g. "text.txt"

with open(file_path, 'r') as open_file:
    lines = open_file.readlines()
    num_lines = len([l for l in lines if l.strip(' \n') != ''])

    for line in range(num_lines):
        if not line % 2 == 0:
            print(lines[line])
