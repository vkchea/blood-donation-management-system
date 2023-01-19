package com.vprojects.bdms.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.vprojects.bdms.patient.Patient;

public class PatientMapper implements RowMapper<Patient>{
	public Patient mapRow(ResultSet resultSet, int i) throws SQLException{
		Patient patient = new Patient();
		patient.setPatientId(resultSet.getInt("patient_id"));
		patient.setBloodType(resultSet.getString("blood_type"));
		patient.setNeedStatus(resultSet.getString("need_status"));
		patient.setWeightLbs(resultSet.getInt("weight_lbs"));
		return patient;
	}
}
