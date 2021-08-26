package com.wds.businessorg.resman.persistence;

import com.wds.businessorg.resman.domain.DepartmentEmployeeRelation;
import com.wds.businessorg.resman.domain.Employee;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Collections;
import java.util.List;

public interface EmployeeRepository extends PagingAndSortingRepository<Employee,Integer> {
    @Query(value = "select p.employee_id,  " +
            "p.first_name, " +
            "p.last_name, " +
            "p.birth_date, " +
            "dpr.department_key, " +
            "dpr.employee_key, " +
            "p.entry_date, " +
            "p.exit_date, " +
            "dpr.valid_from, " +
            "dpr.valid_to from employee p, department_employee_relation dpr "+
            "where dpr.department_key = :departmentId " +
            "and dpr.employee_key = p.employee_id ",
            rowMapperClass = EmployeeRowMapper.class)
    List<Employee> findAllByActiveDepartmentId(@Param("departmentId") int departmentId);

    class EmployeeRowMapper implements RowMapper<Employee> {

        @Override
        public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
            Employee employee = new Employee();
            employee.setEmployeeId(rs.getInt("employee_id"));
            employee.setFirstName(rs.getString("first_name"));
            employee.setLastName(rs.getString("last_name"));
            employee.setBirthDate(rs.getDate("birth_date").toLocalDate());

            DepartmentEmployeeRelation departmentEmployeeRelation = new DepartmentEmployeeRelation();
            departmentEmployeeRelation.setDepartmentKey(rs.getInt("department_key"));
            departmentEmployeeRelation.setEmployeeKey(rs.getInt("employee_key"));
            departmentEmployeeRelation.setValidFrom(rs.getDate("valid_from").toLocalDate());
            departmentEmployeeRelation.setValidTo(rs.getDate("valid_to").toLocalDate());

            employee.setDepartmentEmployeeRelations(Collections.singletonList(departmentEmployeeRelation));

            return employee;
        }
    }
}
