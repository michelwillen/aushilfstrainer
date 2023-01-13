var trainerID;

holeUserTrainer();

function neuesInserat(){

    console.log("Neuen Trainer erstellen");


    let upload = "uploads/";
    let trainername = document.querySelector("#trainername").value;
    let sport = document.querySelector("#sport").value;
    let bild = document.querySelector("#bild").value;
    let altersstufe = document.querySelector("#altersstufe").value;
    let ort = document.querySelector("#ort").value;
    let qualifikation = document.querySelector("#qualifikation").value;
    let zeit = document.querySelector("#zeit").value;
    let mail = document.querySelector("#mail").value;


    let formData = new FormData();
    formData.append('trainername', trainername);
    formData.append('sport', sport);
    formData.append('bild', bild);
    formData.append('altersstufe', altersstufe);
    formData.append('ort', ort);
    formData.append('qualifikation', qualifikation);
    formData.append('zeit', zeit);
    formData.append('mail', mail);

    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    formData.append('user', userID);

    fetch("https://734301-2.web.fhgr.ch/php/neuesInserat.php",
        {
            body: formData,
            method: "post",
            headers: {

                'Authorization': 'Basic ' + btoa(userID + ':' + token),

            }
        })

        .then((response) => {

            return response.text();

        })
        .then((data) => {

        document.querySelector('#nachricht').innerHTML = data;

        })

}

function holeUserTrainer() {

    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    let formData = new FormData();
    formData.append('userID', userID);

    fetch("https://734301-2.web.fhgr.ch/php/holeUserInserat.php",
        {
            body: formData,
            method: "post",
            headers: {

                'Authorization': 'Basic ' + btoa(userID + ':' + token),

            }
        })

        .then((res) => {


            if (res.status >= 200 && res.status < 300) {

                return res.json();

            } else {

                alert('Deine Sitzung ist abgelaufen. Du wirst auf die Login-Seite weitergeleitet.');
                window.location = "/login.html"

            }

        })
        .then((data) => {

            console.log(data);

            if (data.length == 0) {

                // zeige den korrekten Button an
                document.querySelector('#button-neue').classList.remove("hidden");

           
            } else {

               
                trainerID = data[0].ID;

                // zeige den korrekten Button an
                document.querySelector('#button-aktualisieren').classList.remove("hidden");
                document.querySelector('#button-loeschen').classList.remove("hidden");

                // fülle das Formular mit den Werten aus der DB aus
                document.querySelector('#trainername').value = data[0].trainername;
                document.querySelector('#sport').value = data[0].sport;
                document.querySelector('#bild').value = data[0].bild;
                document.querySelector('#bild-vorschau').src = data[0].bild;
                document.querySelector('#altersstufe').value = data[0].altersstufe;
                document.querySelector('#ort').value = data[0].ort;
                document.querySelector('#qualifikation').value = data[0].qualifikation;
                document.querySelector('#zeit').value = data[0].zeit;
                document.querySelector('#mail').value = data[0].mail;

            }
        })
}

function aktualisiereInserat() {

    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    // Formulardaten in Body übertragen
    let trainername = document.querySelector('#trainername').value;
    let sport = document.querySelector('#sport').value;
    let bild = document.querySelector('#bild').value;
    let altersstufe = document.querySelector('#altersstufe').value;
    let ort = document.querySelector('#ort').value;
    let qualifikation = document.querySelector('#qualifikation').value;
    let zeit = document.querySelector('#zeit').value;
    let mail = document.querySelector('#mail').value;

    let formData = new FormData();
    formData.append('userID', userID);
    formData.append('trainername', trainername);
    formData.append('sport', sport);
    formData.append('bild', bild);
    formData.append('altersstufe', altersstufe);
    formData.append('ort', ort);
    formData.append('qualifikation', qualifikation);
    formData.append('zeit', zeit);
    formData.append('mail', mail);

    formData.append('trainerID', trainerID);

    fetch("https://734301-2.web.fhgr.ch/php/aktualisiereInserat.php",
        {
            body: formData,
            method: "post",
            headers: {

                'Authorization': 'Basic ' + btoa(userID + ':' + token),

            }
        })

        .then((res) => {

            if (res.status >= 200 && res.status < 300) {

                return res.text();

            } else {

                alert('Deine Sitzung ist abgelaufen. Du wirst auf die Login-Seite weitergeleitet.');
                window.location = "/login.html"

            }

        })
        .then((data) => {

            // zeige die Nachricht an
            document.querySelector('#nachricht').innerHTML = data;

        })
}

function loescheInserat() {

    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    let formData = new FormData();
    formData.append('userID', userID);
    formData.append('trainerID', trainerID);

    fetch("https://734301-2.web.fhgr.ch/php/loescheInserat.php",
        {
            body: formData,
            method: "post",
            headers: {

                'Authorization': 'Basic ' + btoa(userID + ':' + token),

            }
        })

        .then((res) => {

            if (res.status >= 200 && res.status < 300) {

                return res.text();

            } else {

                alert('Deine Sitzung ist abgelaufen. Du wirst auf die Login-Seite weitergeleitet.');
                window.location = "/login.html"

            }

        })
        .then((data) => {

            console.log(data);
            document.querySelector('#nachricht').innerHTML = data;

            // button aktualisieren
            document.querySelector('#button-neue').classList.remove("hidden");
            document.querySelector('#button-aktualisieren').classList.add("hidden");
            document.querySelector('#button-loeschen').classList.add("hidden");

            // Formularfelder leeren
            document.querySelector('#trainername').value = "";
            document.querySelector('#sport').value = "";
            document.querySelector('#bild').value = "";
            document.querySelector('#bild-vorschau').src = "";
            document.querySelector('#altersstufe').value = "";
            document.querySelector('#ort').value = "";
            document.querySelector('#qualifikation').value = "";
            document.querySelector('#zeit').value = "";
            document.querySelector('#mail').value = "";
            
            // Variablen leeren
            trainerID = "";



        })
};

function logout(){

localStorage.clear();
window.location = "/login.html";

}