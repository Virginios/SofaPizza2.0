<%-- 
    Document   : ComposizioneOrdine
    Created on : 20-feb-2017, 22.13.14
    Author     : Valerio
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DataAccessSito.DataAccessPizze"%>
<%@page import="DataAccessSito.Pizze"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DataAccessPizze daop = new DataAccessPizze();
    ArrayList<Pizze> pizze = daop.estraiPizze("ds");
%>
<!doctype html>
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
        <%for(int i = 0; i < pizze.size(); i++) {%>
        <input type="button"  class="bottone" value="<%=pizze.get(i).getPrezzo()%>" onclick="yourFunction(this)"></input>
            <b id="<%=pizze.get(i).getIdpizza()%>">1</b>
            <%
                }%>
            <form action="/Ordina" method="Post">
<input type="submit" class="bottoneordina">

<script> function yourFunction(this){
   console.log(this.value);
}</script>
                <h3><b id="prezzo">Totale Ordine £ 0 </b></h3>

            </form>
    </body>

</html>
