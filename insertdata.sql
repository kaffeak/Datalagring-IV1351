INSERT INTO person (ssn,first_name,last_name,phone_no,mail_address,street_name,zip_code,city)
VALUES
  ('6452296367','Xaviera','Acosta','070-451 12 32','xaviera-acosta@hotmail.couk','612-170 Gravida. Avenue','65113','Märsta'),
  ('1251382675','Dante','Evans','070-909 19 32','dante-evans668@yahoo.ca','Ap #166-7515 Magna. Road','47558','Hudiksvall'),
  ('4438616555','Jemima','Pearson','070-621 54 71','jemimapearson@yahoo.com','224-6149 Vitae St.','72173','Märsta'),
  ('8651985617','Ulla','Martinez','070-243 80 22','ulla-martinez3271@google.org','957-3706 Eu Street','27246','Finspång'),
  ('3827841425','Calvin','Sharp','070-404 69 37','sharpcalvin@yahoo.ca','Ap #452-1748 Orci Ave','92862','Finspång'),
  ('7618844234','Minerva','Lang','070-555 23 82','langminerva6990@yahoo.couk','P.O. Box 237, 9375 Ante, Ave','34879','Tumba'),
  ('6252015663','Basil','Puckett','070-312 15 66','puckett.basil@yahoo.org','716-859 Elit, St.','11505','Nässjö'),
  ('6800022063','Clinton','Mcleod','070-783 45 75','cmcleod@outlook.couk','1886 Vel, Rd.','74418','Vetlanda'),
  ('0415637933','Mary','Lindsay','070-764 89 35','m_lindsay7481@protonmail.ca','3033 Risus St.','87618','Hofors'),
  ('9158353929','Palmer','Whitaker','070-253 31 89','whitakerpalmer@hotmail.org','P.O. Box 934, 3098 Fermentum Ave','31699','Gävle');
INSERT INTO person (ssn,first_name,last_name,phone_no,mail_address,street_name,zip_code,city)
VALUES
  ('4612283314','Jared','Bridges','070-385 96 23','bridges-jared9720@hotmail.com','P.O. Box 442, 7562 Feugiat. Av.','53452','Södertälje'),
  ('0190395441','Ralph','Carson','070-413 58 64','carsonralph@icloud.org','183-2235 Gravida. Avenue','23726','Stockholm'),
  ('9113559450','Ryan','Ochoa','070-943 18 57','o-ryan8479@outlook.org','P.O. Box 261, 8856 Et, Rd.','46240','Avesta'),
  ('2736441621','Brenden','Newton','070-738 75 21','newton_brenden@outlook.ca','9443 Donec St.','58872','Borås');



INSERT INTO instructor (person_ssn)
VALUES
  ('6452296367'),
  ('1251382675'),
  ('4438616555'),
  ('8651985617');


INSERT INTO contact_person (person_ssn)
VALUES
  ('4612283314'),
  ('0190395441'),
  ('9113559450'),
  ('2736441621');


INSERT INTO student (person_ssn,contact_person_id)
VALUES
  ('3827841425',9),
  ('7618844234',10),
  ('6252015663',11),
  ('6800022063',11),
  ('0415637933',12),
  ('9158353929',12);


INSERT INTO student_sibling (student_id,student_id1)
VALUES
  (3,4),
  (4,3),
  (5,6),
  (6,5);


INSERT INTO teachable_instrument (instrument_name,instructor_id)
VALUES
  ('guitar.',1),
  ('drums,',1),
  ('piano',1),
  ('guitar',2),
  ('guitar',3),
  ('piano',3),
  ('drums.',4),
  ('piano',4);


INSERT INTO schedule (instructor_id,date,work_start,work_end)
VALUES
  (1,'14-09-23','090000','120000'),
  (1,'13-03-24','090000','120000'),
  (1,'27-01-24','090000','130000'),
  (2,'10-09-24','110000','160000'),
  (2,'27-01-23','070000','140000'),
  (2,'09-05-23','070000','170000'),
  (3,'14-08-24','110000','170000'),
  (3,'10-09-24','110000','170000'),
  (3,'13-08-23','080000','120000'),
  (4,'25-03-24','080000','130000');
INSERT INTO schedule (instructor_id,date,work_start,work_end)
VALUES
  (4,'02-07-23','080000','140000'),
  (4,'16-02-23','100000','150000');


INSERT INTO nonbookable_timeslot (lesson_start,instructor_id,schedule_date,lesson_end)
VALUES
  ('160000',1,'14-09-23','120000'),
  ('070000',1,'13-03-24','170000'),
  ('080000',1,'27-01-24','100000'),
  ('110000',1,'10-09-24','120000'),
  ('110000',2,'27-01-23','090000'),
  ('140000',2,'09-05-23','100000'),
  ('110000',2,'14-08-24','130000'),
  ('150000',2,'10-09-24','140000'),
  ('090000',3,'13-08-23','150000'),
  ('120000',3,'25-03-24','160000');
INSERT INTO nonbookable_timeslot (lesson_start,instructor_id,schedule_date,lesson_end)
VALUES
  ('110000',3,'02-07-23','150000'),
  ('130000',3,'16-02-23','140000');



INSERT INTO payment (total_amount,instructor_id)
VALUES
  (5116,1),
  (7846,2),
  (7099,3),
  (5585,4);


INSERT INTO school_instrument (instrument_name,brand,price)
VALUES
  ('Guitar','eu','4565'),
  ('Guitar','eget','5258'),
  ('Guitar','dis','0504'),
  ('Guitar','erat','3825'),
  ('Guitar','arcu','6035'),
  ('drums','dui','3616'),
  ('drums','Mauris','6174'),
  ('drums','iaculis','7161'),
  ('drums','mattis.','0382'),
  ('drums','est','4841'),
  ('Piano','luctus','1117'),
  ('Piano','nec','3613'),
  ('Piano','eu','1303'),
  ('Piano','Integer','3741'),
  ('Piano','elit,','7842');


INSERT INTO rented (school_instrument_id,student_id,rent_start)
VALUES
  (1,1,'11-03-24'),
  (2,1,'18-11-24'),
  (3,3,'26-03-23'),
  (4,4,'11-06-24');


INSERT INTO personal_skill (instrument,student_id,skill)
VALUES
  ('guitar',1,'3'),
  ('guitar',2,'2'),
  ('guitar',3,'2'),
  ('guitar',4,'3'),
  ('drums',1,'1'),
  ('drums',2,'1'),
  ('drums',5,'2'),
  ('piano',1,'3'),
  ('piano',5,'1'),
  ('piano',6,'1');


INSERT INTO student_payment (sibling_discount,rental_cost,lessons_price,student_id)
VALUES
  (1,103,611,1),
  (1,329,067,2),
  (0.7,266,413,3),
  (0.7,329,977,4),
  (0.7,471,363,5),
  (0.7,430,186,6);


INSERT INTO price (type, level, cost)
VALUES
    ('individual','1', 500),
    ('individual','2', 600),
    ('individual','3', 700),
    ('group','1', 200),
    ('group','2', 250),
    ('group','3', 300),
    ('ensemble','1', 100),
    ('ensemble','2', 100),
    ('ensemble','3', 100);



INSERT INTO lesson_price (type,level)
VALUES
  ('individual','1'),
  ('individual','2'),
  ('individual','3'),
  ('group','1'),
  ('group','2'),
  ('group','3'),
  ('ensemble','1'),
  ('ensemble','2'),
  ('ensemble','3');


INSERT INTO lesson (lesson_start,lesson_end,lesson_price_id,payment_id,student_payment_id,date)
VALUES
  ('150000','080000',1,1,1,'06-06-23'),
  ('130000','120000',2,2,2,'24-06-23'),
  ('090000','150000',1,3,3,'12-03-23'),
  ('160000','080000',3,4,4,'19-09-23'),
  ('100000','170000',6,1,4,'04-04-23'),
  ('100000','100000',4,2,5,'12-11-24'),
  ('140000','160000',7,3,6,'16-05-23'),
  ('140000','110000',7,4,2,'28-11-22');

    
INSERT INTO individual (lesson_id,level)
VALUES
    (1,'1'),
    (2,'2'),
    (3,'2'),
    (4,'3');

INSERT INTO group_lesson (lesson_id,min_number_of_students, max_number_of_students, specified_instrument, level)
VALUES 
    (5,5, 10, 'guitar', '3'),
    (6,8, 15, 'piano', '1');


INSERT INTO ensemble (lesson_id,min_number_of_students, max_number_of_students, genre)
VALUES
    (7,20, 40, 'classical'),
    (8,15, 25, 'rock');
