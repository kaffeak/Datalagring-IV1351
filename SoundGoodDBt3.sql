CREATE TABLE instrument (
 instrument_name VARCHAR(50) NOT NULL
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (instrument_name);


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
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 type LESSON_TYPE NOT NULL,
 level SKILL_LEVEL NOT NULL,
 cost INT NOT NULL
);

ALTER TABLE price ADD CONSTRAINT PK_price PRIMARY KEY (id);


CREATE TABLE school_instrument (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_name VARCHAR(50) NOT NULL,
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
 person_ssn VARCHAR(10) NOT NULL,
 can_teach_ensamble VARCHAR(1)
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE payment (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 total_amount INT,
 instructor_id INT NOT NULL
);

ALTER TABLE payment ADD CONSTRAINT PK_payment PRIMARY KEY (id);


CREATE TABLE schedule (
 instructor_id INT NOT NULL,
 date DATE NOT NULL,
 work_start TIME(6) NOT NULL,
 work_end TIME(6) NOT NULL
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
 instructor_id INT NOT NULL,
 instrument_name VARCHAR(50) NOT NULL
);

ALTER TABLE teachable_instrument ADD CONSTRAINT PK_teachable_instrument PRIMARY KEY (instructor_id,instrument_name);


CREATE TABLE booked_time (
 booked_time_start TIME(6) NOT NULL,
 instructor_id INT NOT NULL,
 schedule_date DATE NOT NULL,
 booked_time_end TIME(6) NOT NULL
);

ALTER TABLE booked_time ADD CONSTRAINT PK_booked_time PRIMARY KEY (booked_time_start,instructor_id,schedule_date);


CREATE TABLE lesson (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_start TIME(6) NOT NULL,
 lesson_end TIME(6) NOT NULL,
 lesson_price_id INT,
 payment_id INT,
 student_payment_id INT,
 date_of_lesson DATE NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (id);


CREATE TABLE personal_skill (
 student_id INT NOT NULL,
 instrument_name VARCHAR(50) NOT NULL,
 skill SKILL_LEVEL NOT NULL
);

ALTER TABLE personal_skill ADD CONSTRAINT PK_personal_skill PRIMARY KEY (student_id,instrument_name);


CREATE TABLE rented (
 student_id INT NOT NULL,
 school_instrument_id INT NOT NULL,
 rent_start_date DATE NOT NULL,
 rent_end_date DATE
);

ALTER TABLE rented ADD CONSTRAINT PK_rented PRIMARY KEY (student_id,school_instrument_id);


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
 level SKILL_LEVEL,
 instrument_name VARCHAR(50) NOT NULL
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (lesson_id);


CREATE TABLE individual (
 lesson_id INT NOT NULL,
 level SKILL_LEVEL NOT NULL,
 instrument_name VARCHAR(50) NOT NULL
);

ALTER TABLE individual ADD CONSTRAINT PK_individual PRIMARY KEY (lesson_id);


ALTER TABLE school_instrument ADD CONSTRAINT FK_school_instrument_0 FOREIGN KEY (instrument_name) REFERENCES instrument (instrument_name);


ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_0 FOREIGN KEY (person_ssn) REFERENCES person (ssn);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_ssn) REFERENCES person (ssn);


ALTER TABLE payment ADD CONSTRAINT FK_payment_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE schedule ADD CONSTRAINT FK_schedule_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_ssn) REFERENCES person (ssn);
ALTER TABLE student ADD CONSTRAINT FK_student_1 FOREIGN KEY (contact_person_id) REFERENCES contact_person (id);


ALTER TABLE student_payment ADD CONSTRAINT FK_student_payment_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_sibling ADD CONSTRAINT FK_student_sibling_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE student_sibling ADD CONSTRAINT FK_student_sibling_1 FOREIGN KEY (student_id1) REFERENCES student (id);


ALTER TABLE teachable_instrument ADD CONSTRAINT FK_teachable_instrument_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);
ALTER TABLE teachable_instrument ADD CONSTRAINT FK_teachable_instrument_1 FOREIGN KEY (instrument_name) REFERENCES instrument (instrument_name);


ALTER TABLE booked_time ADD CONSTRAINT FK_booked_time_0 FOREIGN KEY (instructor_id,schedule_date) REFERENCES schedule (instructor_id,date);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (lesson_price_id) REFERENCES price (id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (payment_id) REFERENCES payment (id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_2 FOREIGN KEY (student_payment_id) REFERENCES student_payment (id);


ALTER TABLE personal_skill ADD CONSTRAINT FK_personal_skill_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE personal_skill ADD CONSTRAINT FK_personal_skill_1 FOREIGN KEY (instrument_name) REFERENCES instrument (instrument_name);


ALTER TABLE rented ADD CONSTRAINT FK_rented_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE rented ADD CONSTRAINT FK_rented_1 FOREIGN KEY (school_instrument_id) REFERENCES school_instrument (id);


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (lesson_id) REFERENCES lesson (id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (lesson_id) REFERENCES lesson (id);
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_1 FOREIGN KEY (instrument_name) REFERENCES instrument (instrument_name);


ALTER TABLE individual ADD CONSTRAINT FK_individual_0 FOREIGN KEY (lesson_id) REFERENCES lesson (id);
ALTER TABLE individual ADD CONSTRAINT FK_individual_1 FOREIGN KEY (instrument_name) REFERENCES instrument (instrument_name);


