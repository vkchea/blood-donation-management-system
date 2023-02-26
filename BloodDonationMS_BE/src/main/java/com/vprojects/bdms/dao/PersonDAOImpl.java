package com.vprojects.bdms.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.vprojects.bdms.model.Person;
import com.vprojects.bdms.model.PersonMapper;

@Component
public class PersonDAOImpl {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    @SuppressWarnings("deprecation")
	public Person getPerson(String firstName, String lastName) {
        String query = "SELECT * FROM PERSON WHERE first_name = ? and last_name = ?";
        return jdbcTemplate.queryForObject(query, new Object[] {firstName}, new Object[] {lastName}, new PersonMapper());
    }
    
}
