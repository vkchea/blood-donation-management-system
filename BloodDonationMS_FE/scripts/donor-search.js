function search() {
    let f_name = document.getElementById("first-name");
    let l_name = document.getElementById("last-name");

    let url = 'http://localhost:8080/getDonorRequest/' + f_name.value + "_" + l_name.value;
    console.log(url);
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open('GET', url);
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