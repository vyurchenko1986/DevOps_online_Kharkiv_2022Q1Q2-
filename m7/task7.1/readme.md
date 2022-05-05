##### EPAM University Programs DevOps external course
# Module 7 - Database Administration  [task7.1]

PART 1
1. Download MySQL server for your OS on VM. 

```
# Updating Operating System
sudo apt update && sudo apt upgrade

# Install WGET package
sudo apt install wget -y

# Import the MySQL Repository
cd /tmp
wget https://dev.mysql.com/get/mysql-apt-config_0.8.18-1_all.deb
```

2. Install MySQL server on VM. 

```
# Install the release package
sudo dpkg -i mysql-apt-config_0.8.18-1_all.deb
```

During the MySQL repository installation, you will see the following pop-up windows:

Select Buster and press enter key:

![Image alt](img/module_7_task_7_1_part1_2.png)

Select OK to proceed with the installation:

![Image alt](img/module_7_task_7_1_part1_2_2.png)

Once done, you will get the following message back in your terminal: ```OK```

To reflect the new repository, use the apt update command:

```sudo apt update```

Install MySQL 8:
```
sudo apt install mysql-server 
```
During the installation, a new popup will appear, prompting you to enter the database root password.

Once entered, press the __enter key or press tab key to select the ```<Ok>``` and hit enter__ to proceed with the installation:

![Image alt](img/module_7_task_7_1_part1_2_3.png)

Note, you will be prompted to re-enter the root password a second time to confirm.

Next, another popup will appear for you to read about the new authentication system.

![Image alt](img/module_7_task_7_1_part1_2_4.png)

Next, set the default selection for MySQL for authentication plugin as below:

![Image alt](img/module_7_task_7_1_part1_2_5.png)

The installation should finish up after this point. To confirm it has been successfully installed, run the following apt policy command, which will also confirm the current version and build of the MySQL database server:

```
apt policy mysql-server
```
Example output:

![Image alt](img/module_7_task_7_1_part1_2_6.png)

3. Select a subject area and describe the database schema, (minimum 3 tables) 

4. Create a database on the server through the console. 

5. Fill in tables. 

6. Construct and execute SELECT operator with WHERE, GROUP BY and ORDER BY. 

7. Execute other different SQL queries DDL, DML, DCL. 

8. Create a database of new users with different privileges. Connect to the database as a new user and verify that the privileges allow or deny certain actions. 

9. Make a selection from the main table DB MySQL.

PART 2

10. Make backup of your database. 

11. Delete the table and/or part of the data in the table. 

12. Restore your database. 

13. Transfer your local database to RDS AWS. 

14. Connect to your database. 

15. Execute SELECT operator similar step 6. 

16. Create the dump of your database.

PART 3 – MongoDB

17. Create a database. Use the use command to connect to a new database (If it doesn't exist, Mongo will create it when you write to it). 

18. Create a collection. Use db.createCollection to create a collection. I'll leave the subject up to you. Run show dbs and show collections to view your database and
collections. 

19. Create some documents. Insert a couple of documents into your collection. I'll leave the subject matter up to you, perhaps cars or hats.

20. Use find() to list documents out.