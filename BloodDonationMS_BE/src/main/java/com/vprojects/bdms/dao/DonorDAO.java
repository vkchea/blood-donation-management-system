package com.vprojects.bdms.dao;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.vprojects.bdms.patient.Patient;

@Component
public class DonorDAO {
	
	@Autowired
	DonorDAOImpl patientJdbc;

    @PostConstruct
    public void initData() {
        // initialize countries map
    }

    public Patient findPatient(int patientId) {
    	Patient patient = patientJdbc.getPatient(patientId);
        return patient;
    }
}
