##### EPAM University Programs DevOps external course. Module – 4 Linux Essentials

# Task 4.3 - Module – 4 Linux Essentials.

Task assignment.

Part1
1. How many states could has a process in Linux?

A Linux process has 5 states:
+ created;
+ ready;
+ waiting;
+ running;
+ terminated.

2. Examine the pstree command. Make output (highlight) the chain (ancestors) of the current process.

__installation__

The pstree program is usually included in the standard installation, but can otherwise be obtained via the package ```sudo apt install psmisc```

__syntax__

pstree is called in a terminal with the following command:

```pstree OPTIONS```

__options__

The pstree command has the following options:

```
-a Displays the command line arguments used to invoke the appropriate process.

-c Identical subtrees are not merged, i.e. turn off the default compact output.

-l Does not create a line break for "long" lines (> 132 characters), but displays them completely.

-h Highlight the current process and its ancestors in bold.

-p Displays the process identification number PID of the respective process in addition to the process name.

-n Output is sorted by process identification number and not by process name.

-H PID Highlights the process with the process identification number PID

-u Display the UID if the UID of the child process differs from that of the parent process.

-A Use only ASCII characters for output.

-U Use only UTF-8 characters for output.

-G Use VT-100 exclusively for output.

-V Displays information about the version used.

USER shows only the processes started by USER.
```

__examples__

If pstree is called without options, you get the following output, for example:

```pstree```

![Image alt](img/module_4_task_4-3_part1_2-1.png)

If the PIDs of the individual processes are also to be displayed, the output looks like this:

```pstree -p```

![Image alt](img/module_4_task_4-3_part1_2-2.png)

3. What is a proc file system?

4. Print information about the processor (its type, supported technologies, etc.).

5. Use the ps command to get information about the process. The information should be as follows: the owner of the process, the arguments with which the process was launched for execution, the group owner of this process, etc.

6. How to define kernel processes and user processes?

7. Print the list of processes to the terminal. Briefly describe the statuses of the processes. What condition are they in, or can they be arriving in?

8. Display only the processes of a specific user.

9. What utilities can be used to analyze existing running tasks (by analyzing the help for the ps command)?

10. What information does top command display?

11. Display the processes of the specific user using the top command.

12. What interactive commands can be used to control the top command? Give a couple of examples.

13. Sort the contents of the processes window using various parameters (for example, the amount of processor time taken up, etc.)

14. Concept of priority, what commands are used to set priority?

15. Can I change the priority of a process using the top command? If so, how?

16. Examine the kill command. How to send with the kill command process control signal? Give an example of commonly used signals.

17. Commands jobs, fg, bg, nohup. What are they for? Use the sleep, yes command to demonstrate the process control mechanism with fg, bg.


Part2
1. Check the implementability of the most frequently used OPENSSH commands in the MS Windows operating system. (Description of the expected result of the commands +screenshots: command – result should be presented)

2. Implement basic SSH settings to increase the security of the client-server connection (at least)

3. List the options for choosing keys for encryption in SSH. Implement 3 of them.

4. Implement port forwarding for the SSH client from the host machine to the guest Linux virtual machine behind NAT.

5*. Intercept (capture) traffic (tcpdump, wireshark) while authorizing the remote client on the server using ssh, telnet, rlogin. Analyze the result.