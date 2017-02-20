<%-- 
    Document   : provaeicerca
    Created on : 19-feb-2017, 15.45.19
    Author     : Valerio
--%>
<%@ page language="java"
         session="true"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="DataAccessSito.DataAccessPizzeria"%>
<%@page import="DataAccessSito.OggettoStub"%>
<%@page import="java.util.ArrayList"%>
<%  
    DataAccessPizzeria p = new DataAccessPizzeria();
    ArrayList<OggettoStub> oggetti = p.getAll();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <script type="text/javascript" src="js/jquery.js">
        </script>
        <script type="text/javascript" src="js/ricerca.js">
        </script>
        <script type="text/javascript" src="js/autocomplete.js">
            </script>
                    <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <div align="center" id="contlogo"> <img src="logo.png" alt="Logo" id="logo" > </div>

    <ul>
        <li><a class="active" href="Home.html">Home</a></li>
        <li><a href="Chi Siamo.html">Chi Siamo</a></li>
        <li class="spost"><a href="LoginCLIENTE.html">Login</a></li>
        <li class="spost"><a href="RegistrazioneCliente.html">Registrazione</a></li>
    </ul> 
    </head>
        


    <body>
       <form id="conteiner_imm_ricerca_did" action="/Ricerca" method="post"> 
            <div id="didascalia">  Ordina pizza a domicilio </div>
            <div id="didascalia2"> Centinaia di pizzerie per te </div>
            <input name="cerco" type="search" id="barraricerca" placeholder="   Inserisci l'indirizzo di consegna, un punto di riferimento o il nome di un ristorante" value="" autocomplete="off"> 
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
