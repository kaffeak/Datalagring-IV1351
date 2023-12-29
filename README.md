# Datalagring-IV1351 task3

Files:



Instructions:

Project

One single database application will be created during the project. The project tasks are to be presented at five different seminars. The first three project tasks, and the first three seminars, are mandatory. The fourth project task, and the fourth seminar, is optional, and serves only to improve the grade. The fifth seminar, in January, is an opportunity to re-submit seminars you did not pass or to improve your score for one or more seminars. You can get scores for all tasks, both mandatory and optional, also at the fifth seminar. 

You are encouraged to collaborate and discuss with as many other students as you wish when doing the project, group discussions always give a better result than individual work. You are however allowed to create the actual solution in groups of max three students. That is, your solution is allowed to be identical to the solution of at most two other students. You are also allowed to work alone, but that is not recommended. The written report is individual, and may not be written together with any other student.

1. Project Description, the Soundgood Music School
The purpose is to facilitate information handling and business transactions for the Soundgood music school company, by developing a database which handles all the school's data and also an application that handles the operations specified in sections 1.1-1.3.

1.1 Business Overview
Soundgood sells music lessons to students who want to learn to play an instrument. When someone wants to attend the school, they submit contact details, which instrument they want to learn, and their present skill. If there is room, the student is offered a place. There is no concept like 'course' or sets of lessons. Instead, students continue to take lessons as long as they wish. Students pay per lesson and instructors are payed per given lesson.

1.2 Detailed Descriptions
Lesson
There are individual lessons and group lessons. A group lesson has a specified number of places (which may vary), and is not given unless a minimum number of students enroll. A lesson is given for a particular instrument and a particular level. There are three levels, beginner, intermediate and advanced. Besides lessons for a particular instrument, there are also ensembles, where students playing different instruments participate at the same lesson. Ensembles have a specific target genre (e.g., punk rock, gospel band), and there is a maximum and minimum number of students also for ensembles.

Group lessons and ensembles are given at scheduled time slots. Individual lessons do not have a fixed schedule, but are rather to be seen as appointments, like for example an appointment with a dentist. Administrative staff must be able to make bookings, it must therefore be possible to understand which instructor is available when, and for which instruments.

There is no concept like 'course' or sets of lessons, a student who has been offered a place, and accepted, continue to take lessons as long as desired, and can either book one lesson at the time or book many lessons during a longer time period.

Student
A student can take any number of lessons, for any number of instruments. Person number, name, address and contact details must be stored for each student. It must also be possible to store contact details for a contact person (e.g., parent) for each student. Furthermore, it must be possible to see which students are siblings, since there is a discount for siblings. It's not sufficient to show just whether a student has siblings, it must be possible to see who's a sibling of who.

Instructor
An instructor can be assigned to group lessons and ensembles, and can also be available to give individual lessons during specified time periods. An instructor can teach a specified set of instruments, and may also be able to teach ensembles. Person number, name, address and contact details must be stored for each instructor. 

Student Payment
Students are charged monthly for all lessons taken during the previous month. Currently, there is one price for beginner and intermediate levels, and another price for the advanced level. Also, there are different prices for individual lessons, group lessons and ensembles. There is also a discount for siblings, if two or more siblings have taken lessons during the same month, they all get a certain percentage discount. Soundgood wants to have a high level of flexibility to change not just prices, but also pricing scheme. They might, for example, not always have the same price for beginner and intermediate lessons.

Instructor Payment
There are no instructors with fixed monthly salaries, instead they are payed monthly for all lessons given during the previous month. Instructor payments depend on the same things as student fees (see above), namely level of lesson and whether a given lesson was a group or individual lesson. Instructor payments are not affected by sibling discounts.

Renting Instruments
Soundgood offers students the ability to rent instruments to be delivered at their home. There is a wide selection of instruments, wind, string etc., supporting different brands and in different quantities in stock at the soundgood music school. Each student can rent up to two specific instruments at any given period, the renting happens with a lease up to 12 month period. Students can list and search current instruments and rent them if they don't exceed their two-instrument quota. Instruments are rented per month. The fee is payed the same way lessons are payed, each month students are charged for the instruments that where rented the previous month.

1.3 Requirements on the Soundgood Music School Application
The database must store all data described above, in sections 1.1 and 1.2, but no other data. There will also be an application providing a user interface which can be used by administrative staff to manage student enrollments, instrument rentals, bookings and payments. In addition, the database will also be used to retrieve reports and statistics of all possible kinds, but a user interface is not required for that purpose. It will instead be done by manually querying the database.

The database will not be used for any financial purpose like bookkeeping, taxes or bank contacts. What is written above regarding student fees and instructor payments is only about calculating what sum shall be payed to or by who, and sending that information to Soundgood's financial system.

5. Tasks
You are encouraged to collaborate and discuss with as many other students as you wish when doing the project, group discussions always give a better result than individual work. You are however allowed to create the actual solution in groups of max three students. That is, your solution is allowed to be identical to the solution of at most two other students. You are also allowed to work alone, but that is not recommended. The written report is individual, and may not be written together with any other student.

5.3. Task 3, SQL

How To Prepare
  * Understand the lecture on SQL (given live and recorded).
  * Read the document tips-and-tricks-task3.pdf Download tips-and-tricks-task3.pdf.

When To Solve
You're recommended to start working on this task as soon as possible after seminar 2, but remember to first do the preparations mentioned above. The deadline for submitting the report is found on the seminar 3 assignment page.

Intended Learning Outcomes
  * Use relational databases and query languages.
  * Describe and explain basic concepts, principles and theories in the area of data/databases/data storage and in information administration and database design

Mandatory Part
The goal here is to create OLAP, Online Analytical Processing, queries and views. Such queries serve to analyze the business and to create reports. You're also required to analyze the efficiency of one of the queries with EXPLAIN ANALYZE. Even though that's not standard SQL, it's available in both PostgreSQL and MySQL. You also have to make sure the database contains sufficient data to check that all queries work as intended. If needed, update the script that inserts data, created in task two. You're allowed to change the database you created in task two if needed. The queries that shall be created are explained below, only OLAP queries will be created here. The OLTP (Online Transaction Processing) queries used by the business itself, which in the case of Soundgood is to rent out instruments, register taken and given lessons, etc, will be created in task 4, together with the program executing them.

HINT: You might want to use an online generator to create the database content, for example https://generatedata.com/Links to an external site., instead of creating the data manually. 

The following queries will be executed manually, to generate analysis reports.

  1. Show the number of lessons given per month during a specified year. This query is expected to be performed a few times per week. It shall be possible to retrieve the total number of lessons per month (just one number per month) and the specific number of individual lessons, group lessons and ensembles (three numbers per month). It's not required that all four numbers (total plus one per lesson type) for a particular month are on the same row; you're allowed to have one row for each number as long as it's clear to which month each number belongs. However, it's most likely easier to understand the result if you do place all numbers for a particular month on the same row, and it's an interesting exercise, therefore you're encouraged to try. Table 1 below is an example result of such a query, illustrating the expected output.
Table 1. Expected output for query 1. This example is only meant to illustrate the expected rows and columns. It's perfectly fine to change text formatting, and also to change the values.

Month | Total |	Individual |	Group |	Ensemble

Oct   |	  2   |	     1  	  |   0   |	    1

Nov	  |   3   |	     0     |	  2	  |     1

Dec   |	 10	  |      4	    |   4 	 |     2


  2. Show how many students there are with no sibling, with one sibling, with two siblings, etc. This query is expected to be performed a few times per week. The database must contain students with no sibling, one sibling and two siblings, but doesn't have to contain students with more than two siblings. Note that it's not allowed to solve this by just adding a column with sibling count (maybe called no_of_siblings or something similar) to the student table. Such a solution would be almost impossible to maintain since it doesn't tell who's a sibling of who. If a student quits, there wont be any way to update the sibling count of that student's siblings. Table 2 below is an example result of such a query, illustrating the expected output.
Table 2. Expected output for query 2. This example is only meant to illustrate the expected rows and columns. It's perfectly fine to change text formatting, and also to change the values in the No of Students column. The values in the No of Siblings column must however be as specified: 0, 1, 2.
No of Siblings	No of Students
0	3
1	2
2	5

  3. List ids and names of all instructors who has given more than a specific number of lessons during the current month. Sum all lessons, independent of type, and sort the result by the number of given lessons. This query will be used to find instructors risking to work too much, and will be executed daily. Table 3 below is an example result of such a query, illustrating the expected output.
Table 3. Expected output for query 3. This example is only meant to illustrate the expected rows and columns. It's perfectly fine to change text formatting, and also to change the values.
Instructor Id	First Name	Last Name	No of Lessons
13	Albus	Dumbledore	5
15	Pomona	Sprout	5
2	Gilderoy	Lockhart	4
The following queries will be performed programmatically, and the results will be displayed on Soundgood's web page. You only have to create the queries, not the web page.

  4. List all ensembles held during the next week, sorted by music genre and weekday. For each ensemble tell whether it's full booked, has 1-2 seats left or has more seats left. HINT: you might want to use a CASE statement in your query to produce the desired output.  Table 4 below is an example result of such a query, illustrating the expected output.
Table 4. Expected output for query 4. This example is only meant to illustrate the expected rows and columns. It's perfectly fine to change text formatting, and also to change the values.
Day	Genre	No of Free Seats
Tue	Gospel	No Seats
Wed	Punk	1 or 2 Seats
Wed	Rock	No Seats
Fri	Rock	Many Seats

Below is specified what shall be written in the report.

  * In the Method chapter of your report, mention which DBMS you use, which tool is used to develop SQL queries, and how you have verified that your SQL queries work as intended. You shall just tell         which method you used for verifying that the queries work as intended, not explain in detail how you verified the functionality of each query..
  * In the Result chapter of your report, include a link to a git repository where you have stored a script with all queries. Also explain each query and show that all queries work as intended by            including the output of each query. The git repository must also contain the scripts that create the database and insert data. It shall be possible to test your solution by executing first the           script that creates the database, then the script that inserts data, and finally any of the queries created in this task.
  * In the Discussion chapter of your report, evaluate your queries. Suggested assessment criteria are found in assessment-criteria-seminar3.pdf Download assessment-criteria-seminar3.pdf. You don't have     to cover them all, but you must at least cover the bullet on EXPLAIN, which means you have to analyze at least one of your queries. The assessment criteria in this document will also be used to          grade your project report.

Higher Grade Part
Both the following two requirements must be met to get the higher grade points. You can not get half of the points by meeting just one requirement.

  * The report must include a relevant and extensive Discussion chapter about the mandatory part of the task.
  * This task concerns historical data and denormalization. Historical data is normally a strong candidate for denormalization, since it will not be updated. That makes write performance uninteresting, and also strongly reduces the risk of data anomalies. You will first have to read about denormalization (for example in the text book), since that is not much covered in the lectures.
   The task is that, for marketing purposes, the Soundgood music school wants to be able to see which lessons each student has taken, and at which cost, since they first joined the school. This means you are required to keep records of all given lessons, including participants and price for each lesson. One way to do this would be to just save a copy of the entire database each day, or each time a price is changed. This is however unnecessarily complicated, since it will be slow to generate reports from such a database, and since you would have to add some kind of time interval for the prices, instead of just keeping the current price. A better way to solve the problem is to create a denormalized historical database. One example of an appropriate denormalization is to store prices of lessons in a column in the lessons table, instead of keeping prices in a separate table, even though this will lead to duplicated data, with the same price appearing in all lessons of the same type. Another possible denormalization is to merge individual, group and ensemble lessons into one single lesson table.
   Create a historical database like the one described above, and also create SQL statements for copying data from your present database to the historical database. The historical database shall contain the following data: lesson type (group, individual or ensemble), genre (empty if it's not en ensemble), instrument (empty if it's an ensemble), lesson price, student name, student email. You're not required to write a program that automates moving data to the historical database, it's sufficient to create SQL statements that are executed manually. Discuss advantages and disadvantages of using denormalization. This discussion shall be placed in the Discussion chapter of the report.

