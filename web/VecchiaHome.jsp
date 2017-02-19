<%-- 
    Document   : Home
    Created on : 18-feb-2017, 16.55.28
    Author     : Valerio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataAccessSito.OggettoStub"%>
<%@page import="java.util.ArrayList"%>
<%ArrayList<OggettoStub> oggetti = (ArrayList<OggettoStub>)session.getAttribute("pizze");
%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">

        <title>Home</title>
    </head>

    <div align="center" id="contlogo"> <img src="logo.png" alt="Logo" id="logo" > </div>

    <ul>
        <li><a class="active" href="Home.html">Home</a></li>
        <li><a href="Chi Siamo.html">Chi Siamo</a></li>
        <li class="spost"><a href="LoginCLIENTE.html">Login</a></li>
        <li class="spost"><a href="RegistrazioneCliente.html">Registrazione</a></li>
    </ul>     


    <body>
        <form id="conteiner_imm_ricerca_did" action="" method="post"> 
            <div id="didascalia">  Ordina pizza a domicilio </div>
            <div id="didascalia2"> Centinaia di pizzerie per te </div>
            <input name="cerco" type="search" id="barraricerca" placeholder="   Inserisci l'indirizzo di consegna, un punto di riferimento o il nome di un ristorante" value=""> 
            <input type="submit" id="tastocerca" name="sub" value="Cerca">
                <ol class="commentlist">
            <%for(int i=0;i<oggetti.size();i++){%>
            <li class="tuttiFiltri"style="display: none"><%=oggetti.get(i).getNome()%></li>
            <li class="tuttiFiltri"style="display: none"><%=oggetti.get(i).getVia()%></li>
            <%}%>
        </ol>
        </form>
    </body>
</html>

