/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function checkpassworda()
{
    var password1 = document.getElementById("Password");
    var password2 = document.getElementById("Password");
    if(password1 === password2){
        document.getElementById("erroreConfermaPassword").style.display= '';
    }
    
}
