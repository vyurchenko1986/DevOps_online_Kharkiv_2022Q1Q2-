#!/usr/bin/env python3

import os

def systemINF(text, commands):
    print(f"{text}"'\n')
    print(f"{os.system(commands)}"'\n')

command = {
    "OS INFO:": 'hostnamectl',
    "MEM:": 'free -h',
    "DISKS:": 'df -hT',
    "CPU:": 'lscpu'
}

for t, c in command.items(): 
    systemINF(t, c)
