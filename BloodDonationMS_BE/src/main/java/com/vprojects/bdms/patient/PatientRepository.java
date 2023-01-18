package com.vprojects.bdms.patient;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Component;

@Component
public class PatientRepository {

    private static final Map<Integer, Patient> patients = new HashMap<>();

    @PostConstruct
    public void initData() {
        // initialize countries map
    }

    public Patient findPatient(int patientId) {
        return patients.get(patientId);
    }
}
