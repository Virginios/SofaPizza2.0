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
        <title>ComponiPizza</title>
    </head>
    <div align="center" id="contlogo"> <img src="logo.png" alt="Logo" id="logo" > </div>
    <ul class="menu">
        <li><a  href="Home.html">Home</a></li>
        <li><a href="Chi Siamo.html">Chi Siamo</a></li>
        <li class="spost"><a href="Login.html" class="active">Login</a></li>
        <li class="spost"><a href="RegistrazioneCliente.html">Registrazione</a></li>
    </ul>      
    <body>
        <h1 align="center" class="titolo">Componi il tuo MenÃ¹</h1>
        <form class="tabellamenu">
            <input type="url" id="text" value="Inserisci il nome della pizza" size="20" class="textarea" aria-hidden="true" jsaction="mousedown:ntp.fkbxclk">
            <input type="type" id="text" value="Inserisci Ingredienti" size="20" class="textarea">
            <input type="button" value="+" onclick="Aumenta('numero', 01)" class="bottone">
        </form>
    <tr id="salva">
        <td>
            <input name="Submit" id="salva"  type="button" value="Salva" onclick="controllo(); return false" />
        </td>
    </tr>
</body>
</html>
