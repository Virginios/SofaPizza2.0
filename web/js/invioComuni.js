/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {    
    var allOptions = $('#selectprod option');
    $('#selectcat').change(function () {
        $('#selectprod option').remove();
        var classN = $('#selectcat option:selected').prop('class');
        var opts = allOptions.filter('.' + classN);
        $.each(opts, function (i, j) {
            $(j).appendTo('#selectprod');
        });
    });
});