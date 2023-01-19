package com.vprojects.bdms.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

import com.vprojects.bdms.dao.PatientDAO;
import com.vprojects.bdms.patient.GetPatientRequest;
import com.vprojects.bdms.patient.GetPatientResponse;

@Endpoint
public class PatientController {

    private static final String NAMESPACE_URI = "http://www.vprojects.com/bdms/patient";

    private PatientDAO patientRepository;

    @Autowired
    public PatientController(PatientDAO patientRepository) {
        this.patientRepository = patientRepository;
    }

    @PayloadRoot(namespace = NAMESPACE_URI, localPart = "getPatientRequest")
    @ResponsePayload
    public GetPatientResponse getPatient(@RequestPayload GetPatientRequest request) {
        GetPatientResponse response = new GetPatientResponse();
        response.setPatient(patientRepository.findPatient(request.getPatientId()));

        return response;
    }
}