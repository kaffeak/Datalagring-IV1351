CREATE TABLE person (
 ssn VARCHAR(10) NOT NULL,
 first_name VARCHAR(100) NOT NULL,
 last_name VARCHAR(100) NOT NULL,
 phone_no VARCHAR(100) NOT NULL,
 mail_address VARCHAR(100) NOT NULL,
 street_name VARCHAR(100) NOT NULL,
 zip_code VARCHAR(5) NOT NULL,
 city VARCHAR(100) NOT NULL
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (ssn);


CREATE TABLE price (
 type VARCHAR(10) NOT NULL,
 level VARCHAR(10) NOT NULL,
 cost INT NOT NULL
);

ALTER TABLE price ADD CONSTRAINT PK_price PRIMARY KEY (type,level);


CREATE TABLE school_instrument (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_name VARCHAR(30) NOT NULL,
 brand VARCHAR(30) NOT NULL,
 price INT NOT NULL
);

ALTER TABLE school_instrument ADD CONSTRAINT PK_school_instrument PRIMARY KEY (id);


CREATE TABLE contact_person (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 person_ssn VARCHAR(10) NOT NULL
);

ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (id);


CREATE TABLE instructor (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 person_ssn VARCHAR(10) NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE lesson_price (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 type VARCHAR(10),
 level VARCHAR(10)
);

ALTER TABLE lesson_price ADD CONSTRAINT PK_lesson_price PRIMARY KEY (id);


CREATE TABLE payment (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 total_amount INT,
 instructor_id INT NOT NULL
);

ALTER TABLE payment ADD CONSTRAINT PK_payment PRIMARY KEY (id);


CREATE TABLE schedule (
 instructor_id INT NOT NULL,
 date VARCHAR(8) NOT NULL,
 work_start VARCHAR(6) NOT NULL,
 work_end VARCHAR(6) NOT NULL
);

ALTER TABLE schedule ADD CONSTRAINT PK_schedule PRIMARY KEY (instructor_id,date);


CREATE TABLE student (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 person_ssn VARCHAR(10) NOT NULL,
 contact_person_id INT NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE student_payment (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 sibling_discount FLOAT(10),
 rental_cost INT,
 lessons_price INT,
 student_id INT NOT NULL
);

ALTER TABLE student_payment ADD CONSTRAINT PK_student_payment PRIMARY KEY (id);


CREATE TABLE student_sibling (
 student_id INT NOT NULL,
 student_id1 INT NOT NULL
);

ALTER TABLE student_sibling ADD CONSTRAINT PK_student_sibling PRIMARY KEY (student_id,student_id1);


CREATE TABLE teachable_instrument (
 instrument_name VARCHAR(30) NOT NULL,
 instructor_id INT NOT NULL
);

ALTER TABLE teachable_instrument ADD CONSTRAINT PK_teachable_instrument PRIMARY KEY (instrument_name,instructor_id);


CREATE TABLE lesson (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_start VARCHAR(6) NOT NULL,
 lesson_end VARCHAR(6) NOT NULL,
 lesson_price_id INT,
 payment_id INT,
 student_payment_id INT,
 date_of_lesson VARCHAR(8) NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (id);


CREATE TABLE nonbookable_timeslot (
 nonbookable_time_start VARCHAR(6) NOT NULL,
 instructor_id INT NOT NULL,
 schedule_date VARCHAR(8) NOT NULL,
 nonbookable_time_end VARCHAR(6) NOT NULL
);

ALTER TABLE nonbookable_timeslot ADD CONSTRAINT PK_nonbookable_timeslot PRIMARY KEY (nonbookable_time_start,instructor_id,schedule_date);


CREATE TABLE personal_skill (
 instrument VARCHAR(10) NOT NULL,
 student_id INT NOT NULL,
 skill VARCHAR(10) NOT NULL
);

ALTER TABLE personal_skill ADD CONSTRAINT PK_personal_skill PRIMARY KEY (instrument,student_id);


CREATE TABLE rented (
 school_instrument_id INT NOT NULL,
 student_id INT NOT NULL,
 rent_start_date VARCHAR(8) NOT NULL
);

ALTER TABLE rented ADD CONSTRAINT PK_rented PRIMARY KEY (school_instrument_id,student_id);


CREATE TABLE ensemble (
 lesson_id INT NOT NULL,
 min_number_of_students INT NOT NULL,
 max_number_of_students INT NOT NULL,
 genre VARCHAR(10)
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (lesson_id);


CREATE TABLE group_lesson (
 lesson_id INT NOT NULL,
 min_number_of_students INT NOT NULL,
 max_number_of_students INT NOT NULL,
 specified_instrument VARCHAR(10),
 level VARCHAR(10)
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (lesson_id);


CREATE TABLE individual (
 lesson_id INT NOT NULL,
 level VARCHAR(10) NOT NULL
);

ALTER TABLE individual ADD CONSTRAINT PK_individual PRIMARY KEY (lesson_id);


ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_0 FOREIGN KEY (person_ssn) REFERENCES person (ssn);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_ssn) REFERENCES person (ssn);


ALTER TABLE lesson_price ADD CONSTRAINT FK_lesson_price_0 FOREIGN KEY (type,level) REFERENCES price (type,level);


ALTER TABLE payment ADD CONSTRAINT FK_payment_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE schedule ADD CONSTRAINT FK_schedule_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_ssn) REFERENCES person (ssn);
ALTER TABLE student ADD CONSTRAINT FK_student_1 FOREIGN KEY (contact_person_id) REFERENCES contact_person (id);


ALTER TABLE student_payment ADD CONSTRAINT FK_student_payment_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_sibling ADD CONSTRAINT FK_student_sibling_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE student_sibling ADD CONSTRAINT FK_student_sibling_1 FOREIGN KEY (student_id1) REFERENCES student (id);


ALTER TABLE teachable_instrument ADD CONSTRAINT FK_teachable_instrument_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (lesson_price_id) REFERENCES lesson_price (id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (payment_id) REFERENCES payment (id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_2 FOREIGN KEY (student_payment_id) REFERENCES student_payment (id);


ALTER TABLE nonbookable_timeslot ADD CONSTRAINT FK_nonbookable_timeslot_0 FOREIGN KEY (instructor_id,schedule_date) REFERENCES schedule (instructor_id,date);


ALTER TABLE personal_skill ADD CONSTRAINT FK_personal_skill_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE rented ADD CONSTRAINT FK_rented_0 FOREIGN KEY (school_instrument_id) REFERENCES school_instrument (id);
ALTER TABLE rented ADD CONSTRAINT FK_rented_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (lesson_id) REFERENCES lesson (id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (lesson_id) REFERENCES lesson (id);


ALTER TABLE individual ADD CONSTRAINT FK_individual_0 FOREIGN KEY (lesson_id) REFERENCES lesson (id);


