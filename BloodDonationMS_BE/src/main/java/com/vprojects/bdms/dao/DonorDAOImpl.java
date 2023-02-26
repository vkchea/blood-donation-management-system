package com.vprojects.bdms.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.vprojects.bdms.model.PatientMapper;
import com.vprojects.bdms.patient.Patient;

@Component
public class DonorDAOImpl {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List<Patient> getAllPatients(){
        String query = "SELECT * FROM PATIENT";
        List<Patient> patients = jdbcTemplate.query(query,
                BeanPropertyRowMapper.newInstance(Patient.class));
    	return patients;
    }
    
    @SuppressWarnings("deprecation")
	public Patient getPatient(int patientId) {
        String query = "SELECT * FROM PATIENT WHERE patient_id = ?";
        return jdbcTemplate.queryForObject(query, new Object[] {patientId}, new PatientMapper());
    }
}
