/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function controlForm(){
    var password1 = document.getElementById("Password").value;
    var password2 = document.getElementById("Conferma").value;
    if(password1 !== password2){
        return false;    
    }else{
        return true;
    }
} 