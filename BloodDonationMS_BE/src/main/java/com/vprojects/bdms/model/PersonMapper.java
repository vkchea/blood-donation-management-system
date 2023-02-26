package com.vprojects.bdms.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PersonMapper {

	public Person mapRow(ResultSet resultSet, int i) throws SQLException{
		Person donor = new Person();
		donor.setId(resultSet.getInt("person_id"));
		donor.setFirstName(resultSet.getString("first_name"));
		donor.setLastName(resultSet.getString("last_name"));
		donor.setAge(resultSet.getInt("age"));
		return donor;
	}
}
