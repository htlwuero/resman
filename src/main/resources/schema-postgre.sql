drop table if exists person;
drop table if exists departmentold;
drop table if exists department_person_relation;
drop table if exists employee cascade ;
drop table if exists gender cascade;
drop table if exists department cascade;
drop table if exists department_employee_relation cascade;
drop table if exists project cascade;
drop table if exists project_employee_relation cascade;
drop table if exists communication cascade;

create table person
(
    id         serial primary key,
    name       varchar,
    last_name  varchar,
    birth_date date
);

create table "departmentold"(
                              id SERIAL PRIMARY KEY,
                              name varchar
);

create table "department_person_relation" (
                                            department_key integer,
                                            person_key integer,
                                            valid_from date,
                                            valid_until date
);

CREATE TABLE "employee" (
                            "employee_id" SERIAL PRIMARY KEY,
                            "first_name" varchar,
                            "last_name" varchar,
                            "birth_date" date,
                            "entry_date" date,
                            "exit_date" date,
                            "gender_id" int
);

CREATE TABLE "gender" (
                          "gender_id" SERIAL PRIMARY KEY,
                          "gender" varchar
);

CREATE TABLE "department" (
                              "department_id" SERIAL PRIMARY KEY,
                              "department" varchar
);

CREATE TABLE "department_employee_relation" (
                                                "department_employee_relation_id" SERIAL PRIMARY KEY,
                                                "department_key" int,
                                                "employee_key" int,
                                                "valid_from" date,
                                                "valid_to" date
);

CREATE TABLE "project" (
                           "project_id" SERIAL PRIMARY KEY,
                           "project_name" varchar,
                           "project_start_date" date,
                           "project_end_date" date,
                           "project_leader" varchar
);

CREATE TABLE "project_employee_relation" (
                                             "project_employee_relation_id" SERIAL PRIMARY KEY,
                                             "project_key" int,
                                             "employee_key" int,
                                             "entry_date_project" date,
                                             "exit_date_project" date
);

CREATE TABLE "communication" (
                                 "communication_id" SERIAL PRIMARY KEY,
                                 "employee_id" int,
                                 "communication_type" varchar,
                                 "communication_value" varchar,
                                 "valid_from" date,
                                 "valid_to" date
);

ALTER TABLE "department_employee_relation" ADD FOREIGN KEY ("department_key") REFERENCES "department" ("department_id");

ALTER TABLE "department_employee_relation" ADD FOREIGN KEY ("employee_key") REFERENCES "employee" ("employee_id");

ALTER TABLE "project_employee_relation" ADD FOREIGN KEY ("project_key") REFERENCES "project" ("project_id");

ALTER TABLE "project_employee_relation" ADD FOREIGN KEY ("employee_key") REFERENCES "employee" ("employee_id");

ALTER TABLE "communication" ADD FOREIGN KEY ("employee_id") REFERENCES "employee" ("employee_id");

ALTER TABLE "employee" ADD FOREIGN KEY ("gender_id") REFERENCES "gender" ("gender_id");

