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
        });
    });
});

