<%-- 
    Document   : MenuPizzeria
    Created on : 22-feb-2017, 18.59.16
    Author     : Valerio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <link href="css/MenuPizzeria.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/jquery.js">
        </script>
        <script type="text/javascript" src="js/jquery.min.js">
        </script>
        <title>ComponiPizza</title>
    </head>
    <div align="center" id="contlogo"> <img src="logo.png" alt="Logo" id="logo" > </div>
  
        <ul class="menu">
        <li><a href="Home.html">Home</a></li>               
        <li><a href="Chi Siamo.html">Chi Siamo</a></li>
        <li class="spost"><a href="Home.html">Esci</a></li>
        <li class="spost"><a href="ProfiloPizzeria.Html">Ciao,Pizzeria</a></li>
    </ul>     
    <body>
        <h1 align="center" class="titolo">Componi il tuo Men&ugrave</h1>
        <form class="tabellamenu">
            <div class="contenitore" id="1">
                <input type="url" id="text" value="Inserisci il nome della pizza" size="20" class="textarea" aria-hidden="true" jsaction="mousedown:ntp.fkbxclk">
                <input type="type" id="text" value="Inserisci Ingredienti" size="20" class="textarea">
                <input type="button" value="+"  class="bottone">
            </div>
        </form>
    <tr id="salva">
        <td>
            <input name="Submit" id="salva"  type="button" value="Salva" />
        </td>
    </tr>
</body>
<script>
    $(document).on("click", ".bottone", function () {
        var id = $(this).closest('div').attr('id');
        var num = parseInt(id);
        num++;
        $(this).remove();
        var idDiv = num + "del";
        $('.bottoneDecr').remove();
        $('<div class="contenitore" id="att"><input type="url" id="text" value="Inserisci il nome della pizza" size="20" class="textarea" aria-hidden="true" jsaction="mousedown:ntp.fkbxclk"> <input type="type" id="text" value="Inserisci Ingredienti" size="20" class="textarea"><input type="button" value="+"  class="bottone"><input type="button" value="-"  class="bottoneDecr" id="bottoneDecre"></div>').appendTo('.tabellamenu');
        $("#att").attr('id', idDiv);
        $("#bottoneDecre").attr('id', num);
        var n = "#" + num;
        console.log("idDecr =" + $(n).attr('id'));
    });
    $(document).on("click", ".bottoneDecr", function () {
        var idTemp = $(this).attr('id');
        console.log(idTemp);
        var id = $(this).closest('div').attr('id');
        var del = "#" + id;
        $(del).remove();
        var num = parseInt(idTemp);
        num--;
        if (num !== 1) {
            console.log("" + num);
            var idDivPrec = "#" + num + "del";
            $('<input type="button" value="+"  class="bottone"><input type="button" value="-"  class="bottoneDecr" id="bottoneDecre">').appendTo(idDivPrec);
            $("#bottoneDecre").attr('id', num);
            console.log("div attuale= " + $(idDivPrec).attr('id'));
        } else {
            var id = "#1";
            $('<input type="button" value="+"  class="bottone">').appendTo(id);
        }
    });
</script>
</html>
