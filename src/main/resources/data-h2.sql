insert into person(name, last_name, birth_date) values ('Test', 'Tester', '2000-01-01');
insert into person (name, last_name, birth_date) values ('Test2', 'Tester2', '2000-01-01');

insert into departmentold(name) values('business');
insert into departmentold(name) values('development');

insert into department_person_relation values(1, 1, '2015-01-01', '2999-12-31');
insert into department_person_relation values(1, 2, '2015-01-01', '2999-12-31');

insert into gender values(0, 'Weiblich');
insert into gender values(1, 'Männlich');
insert into gender values(2, 'Divers');

insert into communication_type values(0, 'email');
insert into communication_type values(1, 'phone_number');

insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Fabian','Linder','2003-08-24', '2021-07-26', '2021-08-20', 1);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Franz','Saler','1974-06-12', '2010-05-12', '2024-09-11', 1);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Wilfried','Bosch','1970-02-12', '2002-10-11', '2022-02-01', 1);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Anna','Renddorf','1992-04-05', '2018-09-02', '2026-12-31', 2);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Franziska','Neuhaus','1967-08-24', '1998-03-18', '2021-12-31', 2);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Julia','Eibl','1995-11-08', '2018-09-02', '2026-12-31', 2);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Maximilian','Hofer','2004-03-20', '2014-03-10', '2024-03-10', 1);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Lionel','Messi','1987-06-24', '2021-08-10', '2024-07-10', 1);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Jack','Miller','1995-01-18', '2021-08-15', '2028-01-24', 1);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Brad','Binder','1995-08-11', '2020-06-25', '2030-03-27', 1);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Victor Castro','Oliveira','1986-06-23', '1999-03-22', '2000-11-20', 1);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Aleksander','Kazantseva','1955-07-22', '1989-01-15', '2010-12-10', 1);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Julia','Yuryeva','1977-05-23', '1992-08-13', '2031-12-11', 0);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Kristina','Cosic','1992-03-22', '2010-05-15', '2039-04-20', 0);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Dominik','Zeiler','2003-10-25', '2024-09-09', '2046-01-02', 1);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Josef','Unterberger','1943-05-05', '1994-03-01', '2012-01-01', 1);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Sergio','Ramos','1978-12-31', '2021-09-01', '2025-07-08', 1);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Nasser','Al-Khelaifi','1973-11-12', '2016-12-28', '2027-01-03', 1);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Thomas','Müller','1989-09-13', '2013-09-01', '2022-01-05', 1);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Babara','Podolan','1979-04-02', '2018-06-02', '2027-01-09', 0);
insert into employee(first_name, last_name, birth_date, entry_date, exit_date, gender_id) values('Sahra','Lidl','2001-11-30', '1111-01-02', '2038-01-09', 0);

insert into project( project_name, project_start_date, project_end_date, employee_id) values('Kundenberatungszone', '2021-05-08', '2021-11-20', 1);
insert into project( project_name, project_start_date, project_end_date, employee_id) values('Recourcenmanagment', '2021-07-11', '2021-10-25', 21);
insert into project( project_name, project_start_date, project_end_date, employee_id) values('Interspar_Website', '2021-02-20', '2021-09-30', 15);
insert into project( project_name, project_start_date, project_end_date, employee_id) values('Fahrrad_Versicherung ', '2021-04-29', '2021-08-27', 9);
insert into project( project_name, project_start_date, project_end_date, employee_id) values('Foyee_umbauen', '2021-01-07', '2021-01-08', 18);
insert into project( project_name, project_start_date, project_end_date, employee_id) values('Neue_Werbekampangne', '2021-12-12', '2022-01-30', 3);

insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 2, 1, '1111-01-02', '1111-01-02');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 6, 2, '1111-01-02', '1111-01-02');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 3, 3, '1111-01-02', '1111-01-02');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 4, 4, '1111-01-02', '1111-01-02');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 5, 5, '1111-01-02', '1111-01-02');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 6, 6, '1111-01-02', '1111-01-02');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 2, 7, '2014-03-10', '2040-01-02');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 3, 8, '2021-08-10', '2024-07-10');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 6, 9, '2021-08-15', '2028-01-24');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 1, 10, '2020-06-25', '2030-03-27');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 4, 11, '1999-03-22', '2000-11-20');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 5, 12, '1989-01-15', '2010-12-10');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 2, 13, '1992-08-13', '2031-12-11');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 5, 14, '2010-05-15', '2039-04-20');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 1, 15, '2000-01-02', '2030-01-02');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 2, 16, '2000-01-02', '2030-01-02');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 3, 17, '2000-01-02', '2030-01-02');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 4, 18, '2000-01-02', '2030-01-02');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 5, 19, '2000-01-02', '2030-01-02');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 6, 20, '2000-01-02', '2030-01-02');
insert into project_employee_relation( project_key, employee_key, entry_date_project, exit_date_project) values( 4, 21, '2000-01-02', '2030-01-02');

insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 1, '0', 'fabian.linder.student@htl-hallein.at', '2021-07-26', '2022-12-31');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 1, '1', '+43 660 2057848', '2021-07-26', '2022-12-31');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 2, '0', 'saler.franz@outlook.com', '2014-06-27', '2023-04-12');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 3, '0', 'wbosch@gmx.net', '2017-09-07', '2021-08-31');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 3, '0', 'w.bosch@outlook.com', '2021-09-01', '2024-12-31');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 4, '0', 'ann92renddorf@gmail.com', '2018-09-02', '2024-12-31');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 4, '1', '+43 670 1575681', '2018-09-02', '2024-12-31');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 5, '0', 'fn.franzi@aon.at', '2017-02-02', '2022-12-31');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 6, '0', 'juliaeibl.11@gmail.com', '2018-09-02', '2024-12-31');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 7, '0', 'max.hofer@wuero.com', '2014-03-10', '2024-03-10');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 7, '1', '+43 057 070 111', '2014-03-10', '2024-03-10');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 8, '0', 'lionel.mes@wuero.com', '2021-08-10', '2024-07-10');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 8, '1', '+43 057 070 112', '2021-08-10', '2024-07-10');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 9, '0', 'jack.miller@wuero.com', '2021-08-15', '2028-01-24');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 9, '1', '+43 057 070 113', '2021-08-15', '2028-01-24');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 10, '0', 'brad.binder@wuero.com', '2020-06-25', '2030-03-27');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 10, '1', '+43 057 070 114', '2020-06-25', '2030-03-27');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 11, '0', 'victor.oliveira@wuero.com', '1999-03-22', '2000-11-20');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 11, '1', '+43 057 070 115', '1999-03-22', '2000-11-20');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 12, '0', 'aleksander.kazantseva@wuero.com', '1989-01-15', '2010-12-10');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 12, '1', '+43 057 070 116', '1989-01-15', '2010-12-10');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 13, '0', 'julia.yuryeva@wuero.com', '1992-08-13','2031-12-11');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 13, '1', '+43 057 070 117', '1992-08-13', '2031-12-11');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 14, '0', 'kristina.cosic@wuero.com', '2010-05-15', '2039-04-20');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 14, '1', '+43 057 070 118', '2010-05-15', '2039-04-20');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 15, '0', 'dominik.zeiler@outlook.at', '2017-01-02', '1111-01-02');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 16, '1', '+43 660 245068', '1993-01-02', '2030-01-02');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 17, '1', '+43 720 564187', '2000-01-02', '2030-01-02');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 18, '0', 'thomas@mueller.com', '2011-01-02', '2034-01-02');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 19, '1', '+43 660 546410871', '2003-01-02', '2025-01-02');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 20, '0', 'Babara.Podolan@outlook.com', '2008-01-02', '2070-01-02');
insert into communication( employee_id, communication_type_id, communication_value, valid_from, valid_to) values( 21, '0', 'Sahra-Lidl@gmx.com', '2010-01-02', '2050-01-02');

insert into department(department) values('business');
insert into department(department) values('development');
insert into department(department) values('recruting');
insert into department(department) values('compliance');
insert into department(department) values('marketing');

insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 2, 1, '2021-07-26', '2021-08-20');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 3, 2, '2010-05-12', '2024-09-11');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 5, 3, '2002-10-11', '2022-02-01');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 4, 4, '2018-09-02', '2026-12-31');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 1, 5, '2004-05-16', '2021-12-31');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 4, 6, '2018-09-02', '2026-12-31');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 1, 7, '2014-03-10', '2024-03-10');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 4, 8, '1989-01-15', '2010-12-10');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 5, 9, '2010-05-15', '2039-04-20');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 3, 10, '2021-08-15', '2028-01-24');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 2, 11, '2021-08-10', '2024-07-10');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 4, 12, '1999-03-22', '2000-11-20');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 2, 13, '2020-06-25', '2030-03-27');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 1, 14, '1992-08-13', '2031-12-11');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 1, 15, '2000-01-02', '2080-01-02');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 2, 16, '2000-01-02', '2080-01-02');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 3, 17, '2000-01-02', '2080-01-02');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 5, 18, '2000-01-02', '2080-01-02');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 2, 19, '2000-01-02', '2080-01-02');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 5, 20, '2000-01-02', '2080-01-02');
insert into department_employee_relation( department_key, employee_key, valid_from, valid_to) values( 4, 21, '2000-01-02', '2080-01-02');



