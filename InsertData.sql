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
  ('9158353929','Palmer','Whitaker','070-253 31 89','whitakerpalmer@hotmail.org','P.O. Box 934, 3098 Fermentum Ave','31699','Gävle'),
  ('4612283314','Jared','Bridges','070-385 96 23','bridges-jared9720@hotmail.com','P.O. Box 442, 7562 Feugiat. Av.','53452','Södertälje'),
  ('0190395441','Ralph','Carson','070-413 58 64','carsonralph@icloud.org','183-2235 Gravida. Avenue','23726','Stockholm'),
  ('9113559450','Ryan','Ochoa','070-943 18 57','o-ryan8479@outlook.org','P.O. Box 261, 8856 Et, Rd.','46240','Avesta'),
  ('2736441621','Brenden','Newton','070-738 75 21','newton_brenden@outlook.ca','9443 Donec St.','58872','Borås'),
  ('5043895581','Mariam','Taylor','070-506 52 05','lorem.lorem@icloud.ca','Ap #664-1890 Est St.','00617','Mjölby'),
  ('6776956477','Mikayla','Camacho','070-526 41 56','ac.turpis@yahoo.edu','4944 Nostra, St.','28785','Gävle'),
  ('1560438750','Aurora','Valenzuela','070-246 13 45','etiam.ligula.tortor@hotmail.com','Ap #964-5530 Donec Ave','53309','Nässjö'),
  ('7633417521','Ethan','Arnold','070-535 86 65','commodo@yahoo.net','378-3933 Leo. Ave','74267','Vetlanda'),
  ('8602253436','Howard','May','070-182 85 42','erat@icloud.net','Ap #169-8473 Aliquam Av.','72126','Ludvika'),
  ('7204015641','Dacey','Hines','070-749 26 36','suspendisse.aliquet.molestie@outlook.org','899-1607 Donec St.','53138','Ockelbo'),
  ('7204014641','Dacey','Hines','070-749 26 36','suspendisse.aliquet.molestie@outlook.org','899-1607 Donec St.','53138','Ockelbo'),
  ('7204114641','Dacey','Hines','070-749 26 36','suspendisse.aliquet.molestie@outlook.org','899-1607 Donec St.','53138','Ockelbo');



INSERT INTO instructor (person_ssn)
VALUES
  ('6452296367'),
  ('1251382675'),
  ('4438616555'),
  ('8651985617'),
  ('5043895581'),
  ('6776956477');


INSERT INTO contact_person (person_ssn)
VALUES
  ('4612283314'),
  ('0190395441'),
  ('9113559450'),
  ('2736441621'),
  ('7204014641'),
  ('7204114641');


INSERT INTO student (person_ssn,contact_person_id)
VALUES
  ('3827841425',1),
  ('7618844234',2),
  ('6252015663',3),
  ('6800022063',3),
  ('0415637933',4),
  ('9158353929',4),
  ('1560438750',5),
  ('7633417521',6),
  ('8602253436',4),
  ('7204015641',5);

INSERT INTO student_sibling (student_id,student_id1)
VALUES
  (3,4),
  (4,3),
  (3,9),
  (9,3),
  (4,9),
  (9,4),
  (5,6),
  (6,5),
  (7,10),
  (10,7);

INSERT INTO instrument (instrument_name)
VALUES
  ('piano'),  
  ('guitar'),  
  ('violin'),  
  ('flute'),  
  ('drums');

INSERT INTO personal_skill (student_id,instrument_name,skill)
VALUES
  (1,'flute','intermediate'),
  (1,'drums','advanced'),
  (1,'piano','intermediate'),
  (1,'violin','beginner'),
  (2,'flute','intermediate'),
  (10,'piano','intermediate'),
  (2,'guitar','beginner'),
  (3,'guitar','beginner'),
  (3,'piano','intermediate'),
  (4,'flute','advanced'),
  (5,'flute','beginner'),
  (6,'flute','intermediate'),
  (7,'guitar','intermediate'),
  (5,'guitar','advanced'),
  (8,'violin','advanced'),
  (9,'violin','advanced'),
  (9,'flute','intermediate'),
  (8,'guitar','beginner'),
  (9,'guitar','intermediate'),
  (10,'guitar','beginner');


INSERT INTO price (type, level, cost)
VALUES
    ('individual', 'beginner', 500),
    ('individual', 'intermediate', 600),
    ('individual', 'advanced', 700),
    ('group', 'beginner', 300),
    ('group', 'intermediate', 350),
    ('group', 'advanced', 400),
    ('ensemble', 'beginner', 200),
    ('ensemble', 'intermediate', 200),
    ('ensemble', 'advanced', 200);


INSERT INTO student_payment (sibling_discount,rental_cost,lessons_price,student_id,month)
VALUES
  (1,0,10,1,'jan'),
  (1,0,10,2,'jan'),
  (1,0,10,3,'jan'),
  (1,0,10,4,'jan'),
  (1,0,10,5,'jan'),
  (1,0,10,6,'jan'),
  (1,0,10,7,'jan'),
  (1,0,10,8,'jan'),
  (1,0,10,9,'jan'),
  (1,0,10,10,'jan'),
  (1,0,10,1,'dec'),
  (1,0,10,2,'dec'),
  (1,0,10,3,'dec'),
  (1,0,10,4,'dec'),
  (1,0,10,5,'dec'),
  (1,0,10,6,'dec'),
  (1,0,10,7,'dec'),
  (1,0,10,8,'dec'),
  (1,0,10,9,'dec'),
  (1,0,10,10,'dec'),
  (1,0,10,1,'nov'),
  (1,0,10,2,'nov'),
  (1,0,10,3,'nov'),
  (1,0,10,4,'nov'),
  (1,0,10,5,'nov'),
  (1,0,10,6,'nov'),
  (1,0,10,7,'nov'),
  (1,0,10,8,'nov'),
  (1,0,10,9,'nov'),
  (1,0,10,10,'nov');


INSERT INTO payment (total_amount,instructor_id,month)
VALUES
  (10,1,'jan'),
  (10,2,'jan'),
  (10,3,'jan'),
  (10,4,'jan'),
  (10,5,'jan'),
  (10,6,'jan'),
  (10,1,'dec'),
  (10,2,'dec'),
  (10,3,'dec'),
  (10,4,'dec'),
  (10,5,'dec'),
  (10,6,'dec'),
  (10,1,'nov'),
  (10,2,'nov'),
  (10,3,'nov'),
  (10,4,'nov'),
  (10,5,'nov'),
  (10,6,'nov');

INSERT INTO lesson (lesson_start,lesson_end,lesson_price_id,payment_id,date_of_lesson)
VALUES
  ('080000','100000',1,9,'151223'),
  ('150000','160000',2,17,'281123'),
  ('080000','110000',3,11,'181223'),
  ('120000','160000',2,15,'021123'),
  ('080000','140000',2,7,'261223'),
  ('080000','090000',3,11,'291223'),
  ('130000','140000',2,4,'090124'),
  ('100000','110000',1,16,'121123'),
  ('140000','160000',1,8,'191223'),
  ('130000','170000',1,3,'200124'),
  ('130000','140000',2,11,'311223'),
  ('140000','150000',2,14,'121123'),
  ('160000','170000',1,7,'221223'),
  ('110000','160000',2,3,'190124'),
  ('110000','120000',3,13,'251123'),
  ('110000','120000',2,3,'040124'),
  ('100000','130000',1,5,'250124'),
  ('150000','160000',2,1,'190124'),
  ('150000','160000',1,15,'061123'),
  ('140000','170000',3,18,'041123'),
  ('100000','110000',2,17,'311123'),
  ('080000','110000',3,3,'230124'),
  ('160000','170000',1,8,'011223'),
  ('120000','130000',2,12,'191223'),
  ('160000','170000',3,14,'181123'),
  ('150000','160000',2,10,'161223'),
  ('090000','160000',2,10,'231223'),
  ('110000','120000',1,17,'091123'),
  ('140000','150000',1,6,'130124'),
  ('110000','120000',3,9,'311223'),
  ('120000','130000',5,5,'091123'),
  ('120000','130000',4,5,'161123'),
  ('120000','130000',5,5,'231123'),
  ('120000','130000',6,5,'301123'),
  ('120000','130000',7,6,'301223'),
  ('120000','130000',7,6,'301223'),
  ('120000','130000',7,6,'301223'),
  ('120000','130000',7,6,'301223');

INSERT INTO student_lesson (student_payment_id,lesson_id)
VALUES
  (13,1),
  (26,2),
  (15,3),
  (27,4),
  (16,5),
  (14,6),
  (7,7),
  (28,8),
  (13,9),
  (1,10),
  (19,11),
  (26,12),
  (20,13),
  (6,14),
  (28,15),
  (6,16),
  (8,17),
  (1,18),
  (22,19),
  (28,20),
  (27,21),
  (5,22),
  (18,23),
  (20,24),
  (24,25),
  (13,26),
  (16,27),
  (25,28),
  (10,29),
  (18,30),
  (21,31),
  (22,31),
  (26,31),
  (29,31),
  (22,32),  
  (23,32),
  (28,32),
  (30,32),
  (21,33),
  (23,33),
  (30,33),
  (28,34),
  (29,34),
  (11,35),
  (13,35),
  (20,35),
  (14,35),
  (11,36),
  (13,36),
  (18,36),
  (11,37),
  (19,37),
  (20,37),
  (15,37),
  (11,38),
  (16,38);


INSERT INTO individual (lesson_id,level,instrument_name)
VALUES
  (1,'beginner','guitar'),
  (2,'intermediate','flute'),
  (3,'advanced','guitar'),
  (4,'intermediate','guitar'),
  (5,'intermediate','flute'),
  (6,'advanced','flute'),
  (7,'intermediate','guitar'),
  (8,'beginner','guitar'),
  (9,'beginner','guitar'),
  (10,'beginner','violin'),
  (11,'intermediate','guitar'),
  (12,'intermediate','flute'),
  (13,'beginner','guitar'),
  (14,'intermediate','flute'),
  (15,'advanced','violin'),
  (16,'intermediate','flute'),
  (17,'beginner','guitar'),
  (18,'intermediate','piano'),
  (19,'beginner','guitar'),
  (20,'advanced','violin'),
  (21,'intermediate','guitar'),
  (22,'advanced','guitar'),
  (23,'beginner','guitar'),
  (24,'intermediate','piano'),
  (25,'advanced','flute'),
  (26,'intermediate','piano'),
  (27,'intermediate','flute'),
  (28,'beginner','flute'),
  (29,'beginner','guitar'),
  (30,'advanced','violin');


INSERT INTO group_lesson (lesson_id,min_number_of_students,max_number_of_students,level,instrument_name)
VALUES
  (31,2,4,'intermediate','flute'),
  (32,2,4,'beginner','guitar'),
  (33,2,4,'intermediate','piano'),
  (34,2,4,'advanced','violin');

INSERT INTO ensemble (lesson_id,min_number_of_students,max_number_of_students,genre)
VALUES
  (35,2,4,'jazz'),
  (36,2,5,'rock'),
  (37,2,15,'classical'),
  (38,2,10,'blues');

