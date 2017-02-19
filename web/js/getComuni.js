/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $('#provincia').change(function () {
        $('#comune option').remove();
        var selezionato = $('#provincia option:selected').text();
        $.post('/InvioComuni', {"selezionato": selezionato}, function (data) {
            $.each(data, function (i, j) {
                $('<option>').text(j).appendTo('#comune');
            });
        }).done(successfullysent)
                .fail(failedsent())
                .always(sent);
    });
});
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
    console.error("Invio delle notizie non riuscito!");
    $("#formerr").fadeIn(750);
    $("#infomsg").text("Invio delle notizie non riuscito!");
    $("#formerr").delay(3000).fadeOut(2000);
}

/**
 * La funzione sent() scrive in console un messaggio che comunica la fine
 * dell'esecuzione dello script.
 */
function sent() {
    console.info("Fine processo d'invio notizie");
}

