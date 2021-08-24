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
                                                `department_id` int,
                                                `employee_id` int,
                                                `valid_from` date,
                                                `valid_to` date,
                                                `stelle_id` int
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
                                             `project_id` int,
                                             `employee_id` int,
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

CREATE TABLE `image` (
                         `image_id` int PRIMARY KEY AUTO_INCREMENT,
                         `content` blob
);

CREATE TABLE `image_entity_relation` (
                                         `image_id` int,
                                         `entity_id` int,
                                         `entity_type` varchar(255)
);

CREATE TABLE `skills` (
                          `skills_id` int PRIMARY KEY AUTO_INCREMENT,
                          `name` varchar(255)
);

CREATE TABLE `skills_employee_relation` (
                                            `skills_id` int,
                                            `employee_id` int
);

CREATE TABLE `ausbildung` (
                              `ausbildung_id` int PRIMARY KEY AUTO_INCREMENT,
                              `name` varchar(255)
);

CREATE TABLE `ausbildung_entity_relation` (
                                              `ausbildung_id` int,
                                              `employee_id` int,
                                              `planed_from` date,
                                              `planed_to` date,
                                              `finished` boolean
);

CREATE TABLE `komponenten` (
                               `komponenten_id` int PRIMARY KEY AUTO_INCREMENT,
                               `content` blob
);

CREATE TABLE `komponenten_department_relation` (
                                                   `komponenten_id` int,
                                                   `department_id` int
);

CREATE TABLE `komponenten_employee_relation` (
                                                 `komponenten_id` int,
                                                 `employee_id` int
);

CREATE TABLE `stelle` (
                          `stelle_id` int,
                          `name` varchar(255)
);

ALTER TABLE `department_employee_relation` ADD FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

ALTER TABLE `department_employee_relation` ADD FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `department_employee_relation` ADD FOREIGN KEY (`stelle_id`) REFERENCES `stelle` (`stelle_id`);

ALTER TABLE `project_employee_relation` ADD FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`);

ALTER TABLE `project_employee_relation` ADD FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `communication` ADD FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `gender` ADD FOREIGN KEY (`gender_id`) REFERENCES `employee` (`gender_id`);

ALTER TABLE `image` ADD FOREIGN KEY (`image_id`) REFERENCES `image_entity_relation` (`image_id`);

ALTER TABLE `image_entity_relation` ADD FOREIGN KEY (`entity_id`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `image_entity_relation` ADD FOREIGN KEY (`entity_id`) REFERENCES `department` (`department_id`);

ALTER TABLE `skills_employee_relation` ADD FOREIGN KEY (`skills_id`) REFERENCES `skills` (`skills_id`);

ALTER TABLE `skills_employee_relation` ADD FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `ausbildung_entity_relation` ADD FOREIGN KEY (`ausbildung_id`) REFERENCES `ausbildung` (`ausbildung_id`);

ALTER TABLE `ausbildung_entity_relation` ADD FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `komponenten_employee_relation` ADD FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `komponenten_department_relation` ADD FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

ALTER TABLE `komponenten_employee_relation` ADD FOREIGN KEY (`komponenten_id`) REFERENCES `komponenten` (`komponenten_id`);

ALTER TABLE `komponenten_department_relation` ADD FOREIGN KEY (`komponenten_id`) REFERENCES `komponenten` (`komponenten_id`);
