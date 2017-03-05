function odliczanie() {
    var dzisiaj = new Date();

    var minuta = dzisiaj.getMinutes();
    var godzina = dzisiaj.getHours();
    var sekunda = dzisiaj.getSeconds();
    if (sekunda < 10) {
        sekunda = "0" + sekunda
    }
    ;
    if (minuta < 10) {
        minuta = "0" + minuta
    }
    ;

    document.getElementById("zegar").innerHTML = godzina + ":" + minuta + ":" + sekunda;

    setTimeout("odliczanie()", 1000)




}