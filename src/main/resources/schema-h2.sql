drop table if exists person;
drop table if exists departmentold;
drop table if exists department_person_relation;
drop table if exists employee;
drop table if exists gender;
drop table if exists department;
drop table if exists department_employee_relation;
drop table if exists project;
drop table if exists project_employee_relation;
drop table if exists communication;


create table person
(
    id integer not null primary key auto_increment,
    name varchar,
    last_name varchar,
    birth_date date
);

create table departmentold(
    id integer not null primary key auto_increment,
    name varchar
);

create table department_person_relation (
    department_key integer,
    person_key integer,
    valid_from date,
    valid_until date
);

CREATE TABLE `employee` (
                            `employee_id` int PRIMARY KEY AUTO_INCREMENT,
                            `first_name` varchar(255),
                            `last_name` varchar(255),
                            `birth_date` date,
                            `entry_date` date,
                            `exit_date` date,
                            `gender_id` int
);

CREATE TABLE `gender` (
                          `gender_id` int PRIMARY KEY AUTO_INCREMENT,
                          `gender` varchar(255)
);

CREATE TABLE `department` (
                              `department_id` int PRIMARY KEY AUTO_INCREMENT,
                              `department` varchar(255)
);

CREATE TABLE `department_employee_relation` (
                                                `department_employee_relation_id` int PRIMARY KEY AUTO_INCREMENT,
                                                `department_key` int,
                                                `employee_key` int,
                                                `valid_from` date,
                                                `valid_to` date
);

CREATE TABLE `project` (
                           `project_id` int PRIMARY KEY AUTO_INCREMENT,
                           `project_name` varchar(255),
                           `project_start_date` date,
                           `project_end_date` date,
                           `project_leader` varchar(255)
);

CREATE TABLE `project_employee_relation` (
                                             `project_employee_relation_id` int PRIMARY KEY AUTO_INCREMENT,
                                             `project_key` int,
                                             `employee_key` int,
                                             `entry_date_project` date,
                                             `exit_date_project` date
);

CREATE TABLE `communication` (
                                 `communication_id` int PRIMARY KEY AUTO_INCREMENT,
                                 `employee_id` int,
                                 `communication_type` varchar(255),
                                 `communication_value` varchar(255),
                                 `valid_from` date,
                                 `valid_to` date
);

ALTER TABLE `department_employee_relation` ADD FOREIGN KEY (`department_key`) REFERENCES `department` (`department_id`);

ALTER TABLE `department_employee_relation` ADD FOREIGN KEY (`employee_key`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `project_employee_relation` ADD FOREIGN KEY (`project_key`) REFERENCES `project` (`project_id`);

ALTER TABLE `project_employee_relation` ADD FOREIGN KEY (`employee_key`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `communication` ADD FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `employee` ADD FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`);
