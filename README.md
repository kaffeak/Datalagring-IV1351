# Datalagring-IV1351 task2

Files:

SoundGoodDB.astah is the astah model file based on the instructions in task2 of the project in IV1352
SoundGoodDB.sql contains the SQL script to create the database from the SoundGoodDB.astah file.
insertdata.sql contains the SQL script we used to put in mock data into the database.

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

5.2. Task 2, Logical and Physical Model
How To Prepare
 * Understand the lectures on normalisation (given live and recorded) and on logical and physical models (only recorded, not given live). You can start working on the task before the normalisation           lecture, but you have to understand that lecture before completing the task.
  * Read the document tips-and-tricks-task2.pdf Download tips-and-tricks-task2.pdf.

When To Solve
You're recommended to start working on this task as soon as possible after seminar 1, but remember to first do the preparations mentioned above. The deadline for submitting the report is found on the seminar 2 assignment page.

Intended Learning Outcomes
  * Model needs for information based on an organizational description and convert the model to a functioning database.
  * Use relational databases and query languages.

Mandatory Part
Translate the conceptual model from task one into the same kind of model that was created in the lecture on logical and physical models, that is a logical model with enough physical aspects to enable creating a database. You are allowed to change the conceptual model if you discover flaws, but only change if it is necessary. The model that is created must cover the entire description of the Soundgood music school company in section one above. The diagram must be made in a crow foot notation (for example IE notation). Also create a database based on the model, the database must be exactly as described in the model. If you discover flaws when creating the database, and want to change it, also the model must be changed. You are advised to also look at tasks three and four already now, to get an understanding of how your database will be used. Below follows guidelines for what shall be written in the report.

  * In the Method chapter of your report, mention diagram editor(s) and other tool(s) you used, and explain the procedure you followed to create the model. You do not have to mention all eleven steps         covered in the videos on on logical and physical models, but it must be clear how you proceeded. Do not explain the result of each step of your procedure, only explain the steps themselves.
  * In the Result chapter of your report, show and briefly explain your model. Also include a link to a git repository where you have stored SQL scripts that create your database. There shall be one          script that creates the database, and another script that inserts data. HINT: You might want to use an online generator to create the data, for example https://generatedata.com/Links to an external       site., instead of creating the data manually. You're also not required to write the script that creates the database manually. If you create the database using a GUI tool, you may generate the script     using for example pg_dump (note that pg_dump is a Postgres tool, but there are similar tools for MySQL). You may explain the SQL in the scripts if you wish, and think it clarifies the model, but it       is not required to write such an explanation.
  * In the Discussion chapter of your report, evaluate your model. Suggested assessment criteria are found in assessment-criteria-seminar2.pdf Download assessment-criteria-seminar2.pdf, you do not have       to cover them all. These same criteria will also be used to grade your project report.

Higher Grade Part
All three requirements below must be met to get the higher grade points. You can not get part of the points by meeting just some of the requirements.

  * The report must include a relevant and extensive Discussion chapter about the mandatory part of the task.
  * Make sure that the models created in this task contain all data required by Soundgood, and don't require an application using the database to manage any data at all. It could for example be tempting      to create a database that doesn't store the number 2, which is mentioned in the text each student can rent up to two specific instruments, and instead hardcode the number 2 into the application           calling the database. Carefully read the description of the Soundgood music school in section one above, and make sure your models include all data mentioned in that text. You don't have to consider      any data that's not clearly mentioned in section one. Discuss advantages and disadvantages of storing all data in the database, as is done here, instead of having some data in the application. This       discussion shall be placed in the Discussion chapter of the report.
  * This task is to handle the fact that prices can change. Say for example that a student takes a certain kind of lesson, and that the cost of that lesson changes before the student has payed. In this       situation, it must be possible to find the cost of the lesson when the student took it, not just the current cost, since the student shall pay the cost that was used when the lesson was taken. You        have to solve this task by creating a model which allows adding a new price, when a price changes, instead of updating the existing price. This also means the model must make it possible to tell          which of all stored prices for a certain lesson is currently valid. Discuss advantages and disadvantages of keeping multiple versions of data, as is done here. This discussion shall be placed in the      Discussion chapter of the report. HINT: A solution to this problem often includes storing the time a certain value is inserted into the database. You're however not required to do that, there are         also other possible solutions. 
