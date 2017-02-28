<%-- 
    Document   : newjsp
    Created on : 16-feb-2017, 17.51.03
    Author     : Valerio
--%>

<%@page import="DataAccessSito.Pizzeria"%>
<%@page import="DataAccessSito.DataAccessPizzeria"%>
<%@page import="DataAccessSito.Prenotazione"%>
<%@page import="DataAccessSito.DataAccessPrenotazione"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    DataAccessPizzeria daop = new DataAccessPizzeria();
    Pizzeria p = daop.trovaPizzeria("051245154", "i tre");
%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <link href="css/Prenotazioni.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/jquery.js">
        </script>
        <script type="text/javascript" src="js/onLoadPrenotazioni.js">
        </script>
        <title>LoginCliente</title>
    </head>
    <body>
        <div align="center" id="contlogo"> <a href="Home.jsp"> <img src="logo.png" alt="Logo" id="logo"></a> </div>
        <ul class="menu">
            <li><a  href="Home.html">Home</a></li>
            <li><a href="Chi Siamo.html">Chi Siamo</a></li>
            <li class="spost"><a href="/Logout">Esci</a></li>
            <li class="spost"><a href="Prenotazioni.jsp">Prenotazioni</a></li>
            <li class="spost"><a href="ProfiloPizzeria.html">Nome Pizzeria</a></li>
        </ul>      
        <div id="prenotazioni">
            <h1 align="center" class="title">Prenotazioni</h1>
            <div align="center">
                <input type="hidden" id="pIva" value="<%=p.getPiva()%>"></input>
                <hr>
                <pre class="spazio">
<input name="Submit" id="bottone"  type="button" value="Conferma Prenotazione" onclick="funct('<%=p.getPiva()%>')" ></pre>

                <hr>
            </div>
        </div>
    </body>

    <script>
        function funct(produttore) {
            var x = produttore;
            console.log("cazzo" + x);
            $.post('/ControlPrenotazione', {"produttore": x}, function (data) {
                var data1 = data[0];
                console.log("cazzo" + x);

                if (data1 === null) {
                    if ($("#nonCiSonoOrdini").length) {

                    } else
                    {
                        $('<h2 id="nonCiSonoOrdini">Non ci sono ordini disponibili,verranno mostrati gli ordini appena disponnibili....</h2>').appendTo(".spazio");
                    }
                    $(".dopo").remove();
                    $(".prenotazione").remove();
                    $("#totale").remove();
                    $("#bottone").hide();
                    setTimeout(functa, 7000, x);

                } else {
                    $("#nonCiSonoOrdini").remove();
                    console.log("c");
                    $("#dopo").remove();
                    $(".prenotazione").remove();
                    $("#totale");
                    $("#bottone").show();
                    var data2 = [];
                    data2 = data[1];
                    var totale = data[2];
                    var cliente = data[3];
                    console.log("" + data1.data_prenotazione);
                    var pagamento = "";
                    if (data1.tpo_prenotazione === 0)
                        pagamento = "carte di credito";
                    else
                        pagamento = "pagamento a consegna";
                    $("#bottone").before($('<b id="dopo">Cliente :' + cliente.nome + ' ' + 'Via :' + cliente.via + ' Paese :' + cliente.paese + ' Pagamento: ' + pagamento + '</b>'));
                    $.each(data2, function (i, j) {
                        $("#dopo").after('<p class="prenotazione">' + j.nome + ' ' + j.ingredienti + '&nbsp;&nbsp;&nbsp;</p>');
                    });
                    $("#bottone").before($('<p id="totale">' + ' totale : ' + totale + '</p>'));
                }

            });
        }


    </script>


</html>

