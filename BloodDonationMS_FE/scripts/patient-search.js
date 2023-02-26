function soap() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open('GET', 'http://localhost:8080/getPatientRequest/7');
    xmlhttp.send();
    xmlhttp.responseType = "json";
    xmlhttp.onload = () => {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            const data = xmlhttp.response;
            console.log(data);
        } else {
            console.log(`Error: ${xmlhttp.status}`);
        }
    };
}