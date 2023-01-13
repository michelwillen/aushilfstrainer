function urlKopieren() {
    // Hole Textfeld
    var copyUrl = document.getElementById("meineURL");
  
    // Wähle Textfeld
    copyUrl.select(); 
    copyUrl.setSelectionRange(0, 99999); // Für Mobilgeräte
  
     // Kopiere Text in Textfeld
    navigator.clipboard.writeText(copyUrl.value);

  }