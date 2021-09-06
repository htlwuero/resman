drop table if exists person cascade;
drop table if exists departmentold cascade;
drop table if exists department_person_relation cascade;
drop table if exists employee cascade;
drop table if exists gender cascade;
drop table if exists department cascade;
drop table if exists department_employee_relation cascade;
drop table if exists project cascade;
drop table if exists project_employee_relation cascade;
drop table if exists communication cascade;
drop table if exists image cascade;
drop table if exists image_department_relation cascade;
drop table if exists image_employee_relation cascade;
drop table if exists skill cascade;
drop table if exists skill_employee_relation cascade;
drop table if exists training cascade;
drop table if exists training_employee_relation cascade;
drop table if exists component cascade;
drop table if exists component_department_relation;
drop table if exists component_employee_relation cascade;
drop table if exists position cascade;
drop table if exists communication_type cascade;

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
                            "gender_id" int,
                            "user_id" varchar
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
                                                "valid_to" date,
                                                "position_id" int
);

CREATE TABLE "project" (
                           "project_id" SERIAL PRIMARY KEY,
                           "project_name" varchar,
                           "project_start_date" date,
                           "project_end_date" date,
                           "project_lead_employee_id" int
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
                                 "communication_type_id" int,
                                 "communication_value" varchar,
                                 "valid_from" date,
                                 "valid_to" date
);

CREATE TABLE "image" (
                         "image_id" SERIAL PRIMARY KEY,
                         "content" BYTEA
);

CREATE TABLE "image_department_relation" (
                                             "image_id" int,
                                             "department_key" int,
                                             "valid_from" date,
                                             "valid_to" date
);

CREATE TABLE "image_employee_relation" (
                                           "image_id" int,
                                           "employee_key" int,
                                           "valid_from" date,
                                           "valid_to" date
);

CREATE TABLE "skill" (
                         "skill_id" SERIAL PRIMARY KEY,
                         "name" varchar
);

CREATE TABLE "skill_employee_relation" (
                                           "skill_id" int,
                                           "employee_key" int
);

CREATE TABLE "training" (
                            "training_id" SERIAL PRIMARY KEY,
                            "name" varchar
);

CREATE TABLE "training_employee_relation" (
                                              "training_id" int,
                                              "employee_id" int,
                                              "planed_from" date,
                                              "planed_to" date,
                                              "finished" boolean
);

CREATE TABLE "component" (
                             "component_id" SERIAL PRIMARY KEY,
                             "content" BYTEA
);

CREATE TABLE "component_department_relation" (
                                                 "component_id" int,
                                                 "department_id" int
);

CREATE TABLE "component_employee_relation" (
                                               "component_id" int,
                                               "employee_id" int
);

CREATE TABLE "position" (
                            "position_id" SERIAL PRIMARY KEY,
                            "name" varchar
);

CREATE TABLE "communication_type" (
                                      "communication_type_id" SERIAL PRIMARY KEY,
                                      "communication_type" varchar
);

ALTER TABLE "department_employee_relation" ADD FOREIGN KEY ("department_key") REFERENCES "department" ("department_id");

ALTER TABLE "department_employee_relation" ADD FOREIGN KEY ("employee_key") REFERENCES "employee" ("employee_id");

ALTER TABLE "department_employee_relation" ADD FOREIGN KEY ("position_id") REFERENCES "position" ("position_id");

ALTER TABLE "project_employee_relation" ADD FOREIGN KEY ("project_key") REFERENCES "project" ("project_id");

ALTER TABLE "project_employee_relation" ADD FOREIGN KEY ("employee_key") REFERENCES "employee" ("employee_id");

ALTER TABLE "communication" ADD FOREIGN KEY ("employee_id") REFERENCES "employee" ("employee_id");

ALTER TABLE "employee" ADD FOREIGN KEY ("gender_id") REFERENCES "gender" ("gender_id");

ALTER TABLE "communication" ADD FOREIGN KEY ("communication_type_id") REFERENCES "communication_type" ("communication_type_id");

ALTER TABLE "image_employee_relation" ADD FOREIGN KEY ("image_id") REFERENCES "image" ("image_id");

ALTER TABLE "image_department_relation" ADD FOREIGN KEY ("image_id") REFERENCES "image" ("image_id");

ALTER TABLE "image_employee_relation" ADD FOREIGN KEY ("employee_key") REFERENCES "employee" ("employee_id");

ALTER TABLE "image_department_relation" ADD FOREIGN KEY ("department_key") REFERENCES "department" ("department_id");

ALTER TABLE "skill_employee_relation" ADD FOREIGN KEY ("skill_id") REFERENCES "skill" ("skill_id");

ALTER TABLE "skill_employee_relation" ADD FOREIGN KEY ("employee_key") REFERENCES "employee" ("employee_id");

ALTER TABLE "training_employee_relation" ADD FOREIGN KEY ("training_id") REFERENCES "training" ("training_id");

ALTER TABLE "training_employee_relation" ADD FOREIGN KEY ("employee_id") REFERENCES "employee" ("employee_id");

ALTER TABLE "component_employee_relation" ADD FOREIGN KEY ("employee_id") REFERENCES "employee" ("employee_id");

ALTER TABLE "project" ADD FOREIGN KEY ("project_lead_employee_id") REFERENCES "employee" ("employee_id");

ALTER TABLE "component_department_relation" ADD FOREIGN KEY ("department_id") REFERENCES "department" ("department_id");

ALTER TABLE "component_employee_relation" ADD FOREIGN KEY ("component_id") REFERENCES "component" ("component_id");

ALTER TABLE "component_department_relation" ADD FOREIGN KEY ("component_id") REFERENCES "component" ("component_id");
