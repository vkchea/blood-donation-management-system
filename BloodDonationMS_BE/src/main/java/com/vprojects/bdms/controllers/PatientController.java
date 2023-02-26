package com.vprojects.bdms.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.vprojects.bdms.dao.PatientDAO;

@RestController
public class PatientController {

    private PatientDAO patientRepository;

    @Autowired
    public PatientController(PatientDAO patientRepository) {
        this.patientRepository = patientRepository;
    }
    
    @CrossOrigin(origins = "http://10.0.0.74:8081")
    @RequestMapping(value = "/getPatientRequest/{patientId}", method = RequestMethod.GET)
    public ResponseEntity<Object> getPatient(@PathVariable("patientId") int patientId) {
        return new ResponseEntity<>(patientRepository.findPatient(patientId), HttpStatus.OK);
    }
}