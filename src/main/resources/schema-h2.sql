drop table if exists person;
drop table if exists department;
drop table if exists department_person_relation;

create table person
(
    id integer not null primary key auto_increment,
    name varchar,
    last_name varchar,
    birth_date date
);

create table department(
    id integer not null primary key auto_increment,
    name varchar
);

create table department_person_relation (
    department_key integer,
    person_key integer,
    valid_from date,
    valid_until date
);