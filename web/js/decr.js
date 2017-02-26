/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function decr(id, myid) {
    var bottone = parseFloat(myid);
    var txt = $(id).text();
    var number = parseInt(txt);
    if (number > 0)
        number--;
    $(id).text(number);
    var totale = $("#totale").text();
    var numero = parseFloat(totale);
    if (number >=0&&numero>0){
        var tot = numero - bottone;
    }
    $("#totale").text(tot.toFixed(2));

}

