<%-- 
    Document   : Ordine
    Created on : 21-feb-2017, 11.57.42
    Author     : Valerio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <link href="css/Ordine.css" rel="stylesheet" type="text/css">


        <title>Home</title>
    </head>

    <div align="center" id="contlogo"> <img src="logo.png" alt="Logo" id="logo" > </div>

    <ul class="menu">
        <li><a href="Home.html">Home</a></li>               
        <li><a href="Chi Siamo.html">Chi Siamo</a></li>
        <li class="spost"><a href="Home.html">Esci</a></li>
        <li class="spost"><a>Carrello</a></li>
        <li class="spost"><a href="ProfiloCliente.Html">Ciao,Utente</a></li>
    </ul>     
    <body>
        <table class="pizzerie" cellspacing="13" width="620" align="center" style="float:none" >
            <thead align="center">
                <tr align="center"><td></td><th height="30" >Ai Tre Monelli</th></tr>
            </thead>
            <tbody>
                <tr>
                    <td height="90" width="120" >Image</td>
                    <td height="5">
                        <table align="center">
                            <thead><tr><th>Pizza, Italiano</th></tr></thead>
                            <tbody><tr><td>Via Giuseppe Atzori, 235, Nocera Inferiore, 84014</td></tr></tbody>
                        </table>
                    </td>
                </tr>
            </tbody>

        </table>
        <ul id="sceltamenu">
            <li> <a class="active">Menu</a></li>
        </ul>
        <table class="pizzemenu" cellspacing="13" width="620" align="center" style="float:none" >
            <thead align="center">
                <tr align="center"><th height="30" >Le Nostre Pizze</th></tr>
            </thead>
            <tbody>
                <tr>
                    <td><pre><b>Marinara</b>
Pomodoro, Olio, Origano</pre></td>
                    <td><button class="bottone">
                            <span class="aggiungielemento">+</span>
                        </button></td>
                </tr>
                <tr >
                    <td><pre><b>Margherita</b>
Pomodoro, Mozzarella</pre></td>
                    <td><button class="bottone">
                            <span class="aggiungielemento">+</span>
                        </button></td>
                </tr>
                <tr>
                    <td><pre><b>Diavola</b>
Pomodoro, Mozzarella, Salame Piccante</pre></td>
                    <td><button class="bottone">
                            <span class="aggiungielemento">+</span>
                        </button></td>
                </tr>
            </tbody>
        </table>
    </body>
    <div class="menucarrello" style="position: absolute; top: 250px; right: 90px">
        <table>
            <header>
                <p>
                    <span class="totaleordine"><b>Totale Ordine</b></span>
                    <span data-baskettotal class="infototale"> â‚¬ 0,00</span>
                </p>
            </header>
            <thead>
            <td><button class="bottoneordina">
                    <span class="aggiungielemento">Ordina Adesso</span>
                </button></td>
            </thead>
        </table>
    </div>

</html>