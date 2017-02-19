/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).on("click",".commentlist li",function() {
    var text = $(this).text();
    $("#barraricerca").val(text);
    $(".tuttiFiltri").hide();
});