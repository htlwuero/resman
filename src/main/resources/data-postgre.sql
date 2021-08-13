insert into person(name, last_name, birth_date) values ('Test', 'Tester', '2000-01-01');
insert into person (name, last_name, birth_date) values ('Test2', 'Tester2', '2000-01-01');
insert into person(name, last_name, birth_date) values ('Test', 'Tester', '2002-03-05');

insert into departmentold(name) values('business');
insert into departmentold(name) values('development');

insert into department_person_relation values(1, 1, '2015-01-01', '2999-12-31');
insert into department_person_relation values(1, 2, '2015-01-01', '2999-12-31');
insert into department_person_relation values(1, 3, '2015-01-01', '2999-12-31');


insert into gender values(0, 'Weiblich');
insert into gender values(1, 'Männlich');
insert into gender values(2, 'Divers');

insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('test1','test1.2','1111-01-02', '1111-01-02', '1111-01-02', 1);

insert into department(department) values('business');
insert into department(department) values('development');


insert into project( project_name, project_start_date, project_end_date, project_leader) values('xyzy', '1111-01-02', '1111-01-02', 'xyjxie');

insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 1, 1, '1111-01-02', '1111-01-02');

insert into communication( employee_id, communication_type, communication_value, valid_from, valid_to) values( 1, 'email', 'eueuhue@ueuhd.com', '1111-01-02', '1111-01-02');
insert into communication( employee_id, communication_type, communication_value, valid_from, valid_to) values( 1, 'email', 'hi@ueuhd.com', '2011-01-02', '2050-01-02');

insert into department_employee_relation( department_key,employee_key, valid_from, valid_to) values( 1, 1, '1111-01-02', '1111-01-02');
