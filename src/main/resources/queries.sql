--Sucht alle aktiven kommunikations daten zu einem Mitarbeiter
Select a.Employee_id, a.First_name, a.Last_name, c.gender, b.communication_type, b. communication_value
From employee a, communication b, gender c
where b.employee_id=a.employee_id
  and a.gender_id = c.gender_id
  and b.valid_from<=Current_Timestamp()
  and b.valid_to >= Current_Timestamp()
