holeUser();

holeTrainer();

function holeUser() {

    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    let formData = new FormData();
    formData.append('userID', userID);

    fetch("https://734301-2.web.fhgr.ch/php/holeUser.php",
        {
            body: formData,
            method: "post",
            headers: {

                'Authorization': 'Basic ' + btoa(userID + ':' + token),

            }
        })

        .then((res) => {

            // falls die Sitzung nicht abgelaufen ist, verarbeite die JSON antwort
            if (res.status >= 200 && res.status < 300) {

                return res.json();

            } else {

                alert('Deine Sitzung ist abgelaufen. Du wirst auf die Login-Seite weitergeleitet.');
                window.location = "/login.html"

            }

        })
        .then((data) => {

            document.querySelector("#username").innerHTML = data[0].name;

        })
}

function holeTrainer(){
    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    let formData = new FormData();
    formData.append('userID', userID);

    fetch("https://734301-2.web.fhgr.ch/php/holeTrainer.php",
        {
            body: formData,
            method: "post",
            headers: {

                'Authorization': 'Basic ' + btoa(userID + ':' + token),

            }
        })

        .then((res) => {

            // falls die Sitzung nicht abgelaufen ist, verarbeite die JSON antwort
            if (res.status >= 200 && res.status < 300) {

                return res.json();

            } else {

            }

        })
        .then((data) => {

            console.log(data);

            trainerAnzeigen(data);


        })
}

function trainerAnzeigen(data){
console.log(data);
    data.forEach(trainer => {

        let trainerContainer = document.createElement("div");
        trainerContainer.innerHTML =

            '<div class="trainer">' +
            '<img class="trainer-image" src="' + trainer.bild + '">' +
            '<h2>' + ' ' + trainer.trainername + '</h2>' +
            '<p>' + '<b>Sport</b> ' + trainer.sport + '</p>' +
            '<p>' + '<b>Altersstufe</b> ' + trainer.altersstufe + '</p>' +
            '<p>' + '<b>Wohnort</b> ' + trainer.ort + '</p>' +
            '<p>' + '<b>Qualifikation</b> ' + trainer.qualifikation + '</p>' +
            '<p>' + '<b>Zeit</b> ' + trainer.zeit + '</p>' + '<br>' +
            '<p class="mail">' + '<a class="button" href="mailto:' + trainer.mail + '">Kontaktieren</a>'  + '</p>' +
            '</div>';

        document.getElementById("liste-trainer").appendChild(trainerContainer);


    });
}

function logout(){

    localStorage.clear();
    window.location = "/login.html";
    
    }