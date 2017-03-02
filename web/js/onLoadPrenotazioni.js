/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $(window).on("load", function () {
        functa();
    });
});
function functa() {
    var x = $("#pIva").val();
    $.post('/ControlPerenotazioneTab', {"produttore": x}, function (data) {
        var data1 = data[0];
        if (data1 === null) {
            if ($("#nonCiSonoOrdini").length) {

            } else {
                $('<h2 id="nonCiSonoOrdini">Non ci sono ordini disponibili,verranno mostrati gli ordini appena disponnibili....</h2>').appendTo(".spazio");
            }
            $("#dopo").remove();
            $(".prenotazione").remove();
            $("#totale").remove();
            $("#bottone").hide();
            setTimeout(functa, 7000, x);

        } else {
            $("#nonCiSonoOrdini").remove();
            $("#bottone").show();
            var data2 = [];
            data2 = data[1];
            var totale = data[2];
            var cliente = data[3];
            console.log("" + data1.data_prenotazione);
            var pagamento = "";
            if (data1.tpo_prenotazione === 0)
                pagamento = "carta di credito";
            else
                pagamento = "pagamento a consegna";
            $("#bottone").before($('<b id="dopo">Cliente :' + cliente.nome + ' ' + 'Via :' + cliente.via + ' Paese :' + cliente.paese + ' Pagamento: ' + pagamento + '</b>'));
            $.each(data2, function (i, j) {
                $(".dopo").after('<p class="prenotazione">' + j.nome + ' ' + j.ingredienti + '&nbsp;&nbsp;&nbsp;</p>');
                console.log("cazzo");
            });
            $("#bottone").before($('<p id="totale">' + ' totalez : ' + totale + '</p>'));
        }

    });
}

