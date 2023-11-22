# MySQL Pokemon Report Queries

### Goals
* Become proficient selecting data out of a mysql database
* Become comfortable performing a SQL join
* Be able to format SQL output as a readable report

## Instructions

### Part 1: Importing data
Directions:

* In DataGrip, [connect to your local mysql instance](https://www.jetbrains.com/help/idea/connecting-to-a-database.html#mysql)
** (for those not using DataGrip, you can execute the files in the command line, using the following syntax: ```mysql -u your_mysql_user -p the_name_of_your_db < the_name_of_the_file.sql```)
* Create your pokemon schema
* Unpack the pokemon_sql.zip files
* One by one execute imports from these files, making sure to check your pokemon schema

From here you should have all the pokemon data in your mysql schema. Feel free to explore the data and perform a few select statements to see what the data looks like.

### Part 2: Simple Selects and Counts

Directions: Write a sql query or sql queries that can answer the following questions

* What are all the types of pokemon that a pokemon can have?
* What is the name of the pokemon with id 45?
* How many pokemon are there?
* How many types are there?
* How many pokemon have a secondary type?

### Part 3: Joins and Groups
Directions: Write a sql query or sql queries that can answer the following questions


* What is each pokemon's primary type?
* What is Rufflet's secondary type?
* What are the names of the pokemon that belong to the trainer with trainerID 303?
* How many pokemon have a secondary type `Poison`
* What are all the primary types and how many pokemon have that type?
* How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
* How many pokemon only belong to one trainer and no other?

### Part 4: Final Report

Directions: Write a query that returns the following collumns:

| Pokemon Name | Trainer Name | Level | Primary Type | Secondary Type |
|:------------:|:------------:|:-----:|:------------:|:--------------:|
| Pokemon's name| Trainer's name| Current Level| Primary Type Name| Secondary Type Name|

Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer. You may interpret strongest in whatever way you want, but you will have to explain your decision.

## Turning in this assignment

To turn in this assignment, create files for each part with at least one query for each question answered. Above each query include a comment with the question you were answering. The files should have the extension `.sql`
Example: 

```SQL
 # How many characters are in the string 'Hello World!'
 SELECT CHAR_LENGTH('Hello World!') AS length_of_hello_world
```

For Part 4 specifically also leave a comment explaining how your query is deciding who the strongest trainer is

Once all of that is done, submit your file by saving it in the "answers" directory and committing it to your fork.
