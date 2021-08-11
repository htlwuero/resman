insert into person(name, last_name, birth_date) values ('Test', 'Tester', '2000-01-01');
insert into person (name, last_name, birth_date) values ('Test2', 'Tester2', '2000-01-01');

insert into departmentold(name) values('business');
insert into departmentold(name) values('development');

insert into department_person_relation values(1, 1, '2015-01-01', '2999-12-31');

insert into gender values(0, 'Weiblich');
insert into gender values(1, 'Männlich');
insert into gender values(2, 'Divers');

insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('test1','test1.2','1111-01-02', '1111-01-02', '1111-01-02', 1);

insert into project( project_name, project_start_date, project_end_date, project_leader) values('xyzy', '1111-01-02', '1111-01-02', 'xyjxie');

insert into project_employee_relation( project_id, employee_id, entry_date_project, exit_date_project) values( 1, 1, '1111-01-02', '1111-01-02');

insert into communication( employee_id, communication_type, communication_value, valid_from, valid_to) values( 1, 'email', 'eueuhue@ueuhd.com', '1111-01-02', '1111-01-02');
insert into communication( employee_id, communication_type, communication_value, valid_from, valid_to) values( 1, 'email', 'hi@ueuhd.com', '2011-01-02', '2050-01-02');

insert into department_employee_relation( employee_id, valid_from, valid_to) values( 1, '1111-01-02', '1111-01-02');
