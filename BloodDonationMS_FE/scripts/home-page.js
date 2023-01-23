function soap() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open('POST', 'http://localhost:8080/ws', true);
    // build SOAP request
    var sr =
        '<?xml version="1.0" encoding="utf-8"?>' +
        '<soapenv:Envelope ' + 
            'xmlns:pat="http://www.vprojects.com/bdms/patient" ' +
            'xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">' +
            '<soapenv:Header/>' +
            '<soapenv:Body>' +
                '<pat:getPatientRequest>' +
                    '<pat:patient_id>7</pat:patient_id>' +
                '</pat:getPatientRequest>' +
            '</soapenv:Body>' +
        '</soapenv:Envelope>';

    xmlhttp.onreadystatechange = function () {
        // if (xmlhttp.readyState == 4) {
        //     if (xmlhttp.status == 200) {
        //         alert(xmlhttp.responseText);
        //     }
        // }
        console.log(xmlhttp.responseText);
    }
    xmlhttp.setRequestHeader("Content-Type", "text/xml")
    xmlhttp.setRequestHeader("Accept", "*/*")

    xmlhttp.send(sr);
}