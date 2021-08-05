package com.wds.businessorg.resman.persistence;

import com.wds.businessorg.resman.domain.DepartmentPersonRelation;
import com.wds.businessorg.resman.domain.Person;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface PersonRepository extends PagingAndSortingRepository<Person, Integer> {

    @Query(value = "select p.id,  " +
            "p.name, " +
            "p.last_name, " +
            "p.birth_date, " +
            "dpr.department_key, " +
            "dpr.person_key, " +
            "dpr.valid_from, " +
            "dpr.valid_until from person p, department_person_relation dpr " +
            "where dpr.department_key = :departmentId " +
            "and dpr.valid_from <= current_date " +
            "and dpr.valid_until >= current_date " +
            "and dpr.person_key = p.id",
            rowMapperClass = PersonRowMapper.class)
    List<Person> findAllByActiveDepartmentId(@Param("departmentId") int departmentId);

    class PersonRowMapper implements RowMapper<Person> {

        @Override
        public Person mapRow(ResultSet rs, int rowNum) throws SQLException {
            Person person = new Person();
            person.setId(rs.getInt("id"));
            person.setName(rs.getString("name"));
            person.setLastName(rs.getString("last_name"));
            person.setBirthDate(rs.getDate("birth_date").toLocalDate());

            DepartmentPersonRelation departmentPersonRelation = new DepartmentPersonRelation();
            departmentPersonRelation.setDepartmentKey(rs.getInt("department_key"));
            departmentPersonRelation.setPersonKey(rs.getInt("person_key"));
            departmentPersonRelation.setValidFrom(rs.getDate("valid_from").toLocalDate());
            departmentPersonRelation.setValidUntil(rs.getDate("valid_until").toLocalDate());

            person.setDepartmentPersonRelation(departmentPersonRelation);

            return person;
        }
    }
}
