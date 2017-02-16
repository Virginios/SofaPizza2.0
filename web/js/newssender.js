/**
 * Script per l'invio di notizie al server in modo asincrono.
 */

/**
 * Questa funzione associa all'evento click dell'oggetto #sendnews
 * la funzione sendnews.
 */
$(document).ready(function () {
//	$("#addnews").submit(sendnews);
    $("#sendnews").click(sendnews);
});

/**
 * La funzione sendnews() estrae il contenuto degli elemento
 * #newstitle e #newsbody per inviarli al server con un
 * metodo POST asincrono.
 * Al termine dell'esecuzione, i campi vengono vuotati.
 */
function sendnews() {
    console.info("Avvio del processo d'invio notizie.");

    // imposta tipo di notizia per la servlet
    var formtype = "news"

    // recupera i contenuti dei campi per titolo e corpo notizia
    var newstitle = encode_utf8($("#newstitle").val());
//	alert("Titolo notizia: " + newstitle);
    var newsbody = encode_utf8($("#newsbody").val());

    // invia la notizia
    console.log("Invio in corso...");
    $.post('dataload',
            {"formtype": formtype, "newstitle": newstitle, "newsbody": newsbody},
            function () {
                $("#newstitle").val("");
                $("#newsbody").empty();
            })
            .done(successfullysent)
            .fail(failedsent)
            .always(sent);
}

/**
 * La funzione successfullysent() scrive nella console un messaggio di conferma invio
 * e mostra lo stesso messaggio nell'oggetto #dialog, prima mostrandolo e poi
 * nascondendolo dopo tre secondi.
 */
function successfullysent() {
    console.log("Invio delle notizie riuscito!");
    $("#dialog").fadeIn(750);
    $("#infomsg").text("Invio delle notizie riuscito!");
    $("#dialog").delay(3000).fadeOut(2000);
}

/**
 * La funzione failessent() scrive nella console un messaggio d'errore invio
 * e mostra lo stesso messaggio nell'oggetto #formerr, prima mostrandolo e poi
 * nascondendolo dopo tre secondi.
 */
function failedsent() {
    console.error("Invio delle notizie non riuscito!")
    $("#formerr").fadeIn(750);
    $("#infomsg").text("Invio delle notizie non riuscito!");
    $("#formerr").delay(3000).fadeOut(2000);
}

/**
 * La funzione sent() scrive in console un messaggio che comunica la fine
 * dell'esecuzione dello script.
 */
function sent() {
    console.info("Fine processo d'invio notizie")
}

