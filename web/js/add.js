/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function add(id, myid) {
    var bottone = parseFloat(myid);
    var txt = $(id).text();
    var number = parseInt(txt);
    number++;
    $(id).text(number);

    var txt = $(id).text();
    var totale = $("#totale").text();
    var numero = parseFloat(totale);
    var tot = numero + bottone;
    $("#totale").text(tot.toFixed(2));
}
