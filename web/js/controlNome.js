/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function controlNome() {
    var nome = document.getElementsByClassName("NomePizza");
    var i;
    var flag=0;
    for(i=0;i<nome.length-1;i++){
        var j;
        for( j=i+1;j<nome.length;j++){
            if(nome[j].value===nome[i].value){
                document.getElementById("uguale").style.display='block';  
                return false;
            }
        }
    }
    return true;
}

