-- بسم الله الرحمن الرحيم

DROP DATABASE IF EXISTS CH_02;
CREATE DATABASE CH_02;
USE CH_02;

DROP TABLE IF EXISTS INSTRUCTORS;
CREATE TABLE INSTRUCTORS(
	inst_id int NOT NULL unique,
    inst_fname varchar(50),
    inst_lname varchar(50),
    inst_address varchar(250)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS COURSES;
CREATE TABLE COURSES(
	crs_id int,
    crs_name varchar(50),
    inst_id int,
	FOREIGN KEY (inst_id) REFERENCES INSTRUCTORS(inst_id)
) ENGINE=InnoDB;