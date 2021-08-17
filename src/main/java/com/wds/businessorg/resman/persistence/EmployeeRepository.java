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
import java.util.List;

public interface EmployeeRepository extends PagingAndSortingRepository<Employee,Integer> {
    @Query(value = "select p.id,  " +
            "p.firstName, " +
            "p.lastName, " +
            "p.birthDate, " +
            "dpr.department_key, " +
            "dpr.entryDate, " +
            "dpr.exitDate, " +
            "dpr.valid_until from person p, department_person_relation dpr "+
            "where dpr.department_key = :departmentId " +
            "and dpr.valid_from <= current_date " +
            "and dpr.valid_until >= current_date " +
            "and dpr.person_key = p.id " +
            "and p.birth_date >= :birthDateSince ",
            rowMapperClass = PersonRepository.PersonRowMapper.class)
    List<Employee> findAllByActiveDepartmentId(@Param("departmentId") int departmentId,
                                             @Param("birthDateSince") LocalDate birthDateSince);

    class PersonRowMapper implements RowMapper<Employee> {

        @Override
        public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
            Employee employee = new Employee();
            employee.setEmployeeId(rs.getInt("id"));
            employee.setFirstName(rs.getString("firstName"));
            employee.setLastName(rs.getString("last_name"));
            employee.setBirthDate(rs.getDate("birthDate").toLocalDate());

            DepartmentEmployeeRelation DepartmentEmployeeRelation = new DepartmentEmployeeRelation();
            DepartmentEmployeeRelation.setDepartmentKey(rs.getInt("department_key"));
            DepartmentEmployeeRelation.setEmployeeKey(rs.getInt("person_key"));
            DepartmentEmployeeRelation.setValidFrom(rs.getDate("valid_from").toLocalDate());
            DepartmentEmployeeRelation.setValidTo(rs.getDate("valid_until").toLocalDate());

            employee.setDepartmentEmployeeRelation(DepartmentEmployeeRelation);

            return employee;
        }
    }
}
