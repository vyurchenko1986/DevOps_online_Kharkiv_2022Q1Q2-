#!/usr/bin/env python3

import re

sentence = input("Enter numbers:")  # 1, 2, 7, 43, 9

s = [int(s) for s in re.findall(r'\d+', sentence)]

list1 = list(s)
tuple1 = tuple(s)

print(f"List ({type(list1)}): {list1}")
print(f"Tuple ({type(tuple1)}): {tuple1}")
