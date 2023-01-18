package com.vprojects.bdms.patient;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

@Endpoint
public class PatientEndpoint {

    private static final String NAMESPACE_URI = "http://www.vprojects.com/patient";

    private PatientRepository patientRepository;

    @Autowired
    public PatientEndpoint(PatientRepository patientRepository) {
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