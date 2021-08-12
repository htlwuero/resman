--Sucht alle aktiven kommunikations daten zu einem Mitarbeiter
Select a.Employee_id, a.First_name, a.Last_name, c.gender, b.communication_type, b. communication_value
From employee a, communication b, gender c
where b.employee_id=a.employee_id
  and a.gender_id = c.gender_id
  and b.valid_from<=Current_Timestamp()
  and b.valid_to >= Current_Timestamp();

select p.id,
       p.name,
       p.last_name,
       p.birth_date,
       dpr.department_key,
       dpr.person_key,
       dpr.valid_from,
       dpr.valid_until from person p, department_person_relation dpr
where dpr.department_key = 1
  and dpr.valid_from <= current_date
  and dpr.valid_until >= current_date
  and dpr.person_key = p.id
  and p.birth_date >= date('2002-01-01');

Select * From department_person_relation;
insert into department_person_relation values(1, 3, '2015-01-01', '2999-12-31');
delete from department_person_relation where department_key = 3;