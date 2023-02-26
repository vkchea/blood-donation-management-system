package com.vprojects.bdms.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.vprojects.bdms.dao.DonorDAO;
import com.vprojects.bdms.dao.PersonDAO;

@RestController
public class DonorController {

    private DonorDAO patientRepository;
    private PersonDAO personRepository;

    @Autowired
    public DonorController(DonorDAO patientRepository) {
        this.patientRepository = patientRepository;
    }
    
    @CrossOrigin(origins = "*")
    @RequestMapping(value = "/getDonorRequest/{name}", method = RequestMethod.GET)
    public ResponseEntity<Object> getPatient(@PathVariable("name") String name) {
    	String[] names = name.split("_");
    	String firstName = names[0];
    	String lastName = names[1];
    	System.out.println(firstName + " " + lastName);
    	
    	return null;
//        return new ResponseEntity<>(patientRepository.findPatient(patientId), HttpStatus.OK);
    }
}