/**
 * Script per il recupero asincrono di notizie dalla base di dati
 */

/**
 * Associa la funzione loadNews() all'elemento #articlelists quando è pronto. 
 */
$(function () {
    $("#articleslist").ready(loadNews);
});

/**
 * La funzione loadNews() invia una richiesta POST asincrona alla base di dati
 * per ottenere un elenco delle ultime quattro notizie disponibili; le notizie
 * vengono stampate nel blocco #articleslist con un iteratore.
 * Se l'elenco è vuoto, viene inserito un messaggio apposito in #articleslist.
 */
function loadNews() {
    console.info("Avvio del processo di recupero notizie.");
    // svuota il div notizie
    $("#art0").remove();
    console.log("Contenitore articoli svuotato.");

    // invia richiesta articoli
    $.post('getnews', function (data) {
        // stampa le notizie
        if (data != null || data != "")
        {
            // cicla tutte le notizie in news
            var num = 0;
            $.each(data, function (i, news) {
                num = i;
                num++;
                var year = news.dataOra.date.year;
                var month = news.dataOra.date.month;
                var day = news.dataOra.date.day;
                var hour = news.dataOra.time.hour;
                var minute = news.dataOra.time.minute;
                var second = news.dataOra.time.second;
                $("#articleslist").append("\n	<article id=\"art" + num + "\"></article>");
                $("#art" + num).append("\n		<h2><a href=\"#" + num + "\">[" + news.id + "] " + decode_utf8(news.titolo) + "</a></h2>").hide();
                $("#art" + num).append("\n		<time>" + day + "/" + month + "/" + year + ", " + hour + ":" + minute + ":" + second + "</time>");
                $("#art" + num).append("\n		<p>" + news.corpo + "</p>").fadeIn(1750).delay(1750);
            });
        } else {
            $("#articleslist").append("\n	<p>Non ci sono notizie disponibili!</p>");
            console.warn("Non ci sono notizie da mostrare!");
        }
    })
            .done(successRetrieval)
            .fail(failedRetrieval)
            .always(endRetrieval);
    $("#articleveil").delay(1250).fadeOut(750).remove();
}

/**
 * La funzione successRetrieval() stampa in console un messaggio
 * di completamento richiesta avvenuto con successo.
 */
function successRetrieval() {
    console.log("Recupero delle notizie completato!");
}

/**
 * La funzione failedRetrieval() accoda al blocco #articleslist un
 * messaggio d'errore per il recupero delle notizie e stampa in
 * console un messaggio d'errore.
 */
function failedRetrieval() {
    $("#articleslist").remove("#art0").append("\n	<p><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\" style=\"color: #AA0000;\"></i>&nbsp;Le notizie non sono al momento disponibili!</p>");
    console.error("Errore nell'invio della richiesta di recupero notizie!");
}

/**
 * la funzione endRetrieval() stampa in console l'informazione di
 * fine recupero delle notizie.
 * @returns
 */
function endRetrieval() {
    console.info("Fine recupero notizie.");
}
