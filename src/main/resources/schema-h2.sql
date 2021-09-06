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
drop table if exists image;
drop table if exists image_department_relation;
drop table if exists image_employee_relation;
drop table if exists skill;
drop table if exists skill_employee_relation;
drop table if exists training;
drop table if exists training_employee_relation;
drop table if exists component;
drop table if exists component_department_relation;
drop table if exists component_employee_relation;
drop table if exists position;
drop table if exists communication_type;

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
                            `gender_id` int,
                            `user_id` varchar(255)
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
                                                `valid_to` date,
                                                `position_id` int
);

CREATE TABLE `project` (
                           `project_id` int PRIMARY KEY AUTO_INCREMENT,
                           `project_name` varchar(255),
                           `project_start_date` date,
                           `project_end_date` date,
                           `project_lead_employee_id` int
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
                                 `communication_type_id` int,
                                 `communication_value` varchar(255),
                                 `valid_from` date,
                                 `valid_to` date
);

CREATE TABLE `image` (
                         `image_id` int PRIMARY KEY AUTO_INCREMENT,
                         `content` blob
);

CREATE TABLE `image_department_relation` (
                                             `image_id` int,
                                             `department_key` int,
                                             `valid_from` date,
                                             `valid_to` date
);

CREATE TABLE `image_employee_relation` (
                                           `image_id` int,
                                           `employee_key` int,
                                           `valid_from` date,
                                           `valid_to` date
);

CREATE TABLE `skill` (
                         `skill_id` int PRIMARY KEY AUTO_INCREMENT,
                         `name` varchar(255)
);

CREATE TABLE `skill_employee_relation` (
                                           `skill_id` int,
                                           `employee_key` int
);

CREATE TABLE `training` (
                            `training_id` int PRIMARY KEY AUTO_INCREMENT,
                            `name` varchar(255)
);

CREATE TABLE `training_employee_relation` (
                                            `training_id` int,
                                            `employee_id` int,
                                            `planed_from` date,
                                            `planed_to` date,
                                            `finished` boolean
);

CREATE TABLE `component` (
                             `component_id` int PRIMARY KEY AUTO_INCREMENT,
                             `content` blob
);

CREATE TABLE `component_department_relation` (
                                                 `component_id` int,
                                                 `department_id` int
);

CREATE TABLE `component_employee_relation` (
                                               `component_id` int,
                                               `employee_id` int
);

CREATE TABLE `position` (
                            `position_id` int,
                            `name` varchar(255)
);

CREATE TABLE `communication_type` (
                                      `communication_type_id` int,
                                      `communication_type` varchar(255)
);

ALTER TABLE `department_employee_relation` ADD FOREIGN KEY (`department_key`) REFERENCES `department` (`department_id`);

ALTER TABLE `department_employee_relation` ADD FOREIGN KEY (`employee_key`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `department_employee_relation` ADD FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`);

ALTER TABLE `project_employee_relation` ADD FOREIGN KEY (`project_key`) REFERENCES `project` (`project_id`);

ALTER TABLE `project_employee_relation` ADD FOREIGN KEY (`employee_key`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `communication` ADD FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `employee` ADD FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`);

ALTER TABLE `communication` ADD FOREIGN KEY (`communication_type_id`) REFERENCES `communication_type` (`communication_type_id`);

ALTER TABLE `image_employee_relation` ADD FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`);

ALTER TABLE `image_department_relation` ADD FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`);

ALTER TABLE `image_employee_relation` ADD FOREIGN KEY (`employee_key`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `image_department_relation` ADD FOREIGN KEY (`department_key`) REFERENCES `department` (`department_id`);

ALTER TABLE `skill_employee_relation` ADD FOREIGN KEY (`skill_id`) REFERENCES `skill` (`skill_id`);

ALTER TABLE `skill_employee_relation` ADD FOREIGN KEY (`employee_key`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `training_employee_relation` ADD FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`);

ALTER TABLE `training_employee_relation` ADD FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `component_employee_relation` ADD FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `project` ADD FOREIGN KEY (`project_lead_employee_id`) REFERENCES `employee` (`employee_id`);

ALTER TABLE `component_department_relation` ADD FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

ALTER TABLE `component_employee_relation` ADD FOREIGN KEY (`component_id`) REFERENCES `component` (`component_id`);

ALTER TABLE `component_department_relation` ADD FOREIGN KEY (`component_id`) REFERENCES `component` (`component_id`);
