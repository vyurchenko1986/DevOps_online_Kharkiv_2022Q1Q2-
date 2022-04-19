##### EPAM University Programs DevOps external course
# Module – Linux administration with bash. Home [task6.1]


A. Create a script that uses the following keys:
1. When starting without parameters, it will display a list of possible keys and their description.
2. The ```--all``` key displays the IP addresses and symbolic names of all hosts in the current subnet
3. The ```--target``` key displays a list of open system TCP ports.
The code that performs the functionality of each of the subtasks must be placed in a separate function

```
#!/usr/bin/env bash

#This function lists TCP opened TCP ports on host
function portscan
{
        echo "Next ports are open:"
        ss -ant | sort -k 4
}

# This function shows existing ip addresses and names in asked network
function netscan {
        # Checking what NMAP  is installed
        test -e /usr/bin/nmap
        if [[ "$?" == "0" ]]
        then
                echo "NMAP is installed, trying to scan network..."
        else
                echo "NMAP isn't installed, trying to install NMAP..."
                sudo apt install nmap  -y
        fi

# Perform scanning network with NMAP
        addr=$1
        echo "Next hosts hass been  found on this network:"
        nmap -sP $addr | awk 'NR % 2 == 0 {print "Hostname:" $5 "    " "IP Address:" $6}' | sed  's/(//g; s/)//g'
}

# This condition for written for display a list of possible keys and their description.
if [[ "$#" == "0" ]]
then
        echo "For this script actually next arguments:"
        echo -e "\033[32m For display the IP addresses and symbolic names of all hosts in the current subnet use argument --target"
        echo -e "\033[33m For display a list of open system TCP ports use  argument --target (example ./script_a.sh --all 192.168.31.*"
        echo -e "\033[0m"
        exit 0
fi


# Block  of script where is checking conditions of input parameter.
if [ "$1" == "--target" ]
then
        portscan

elif [ "$1" == "--all" ]
then
        netscan $2
fi
```

This is result of my script:

![Image alt](img/module_6_task_6_1_part1_1.png)

B. Using Apache log example create a script to answer the following questions:
1. From which ip were the most requests?
2. What is the most requested page?
3. How many requests were there from each ip?
4. What non-existent pages were clients referred to?
5. What time did site get the most requests?
6. What search bots have accessed the site? (UA + IP)


C. Create a data backup script that takes the following data as parameters:
1. Path to the syncing directory.
2. The path to the directory where the copies of the files will be stored.
In case of adding new or deleting old files, the script must add a corresponding entry to the log file indicating the time, type of operation and file name. [The command to run the script must be added to crontab with a run frequency of one minute]