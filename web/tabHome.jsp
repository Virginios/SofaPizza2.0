<%-- 
    Document   : tabNonLog
    Created on : 28-feb-2017, 1.04.44
    Author     : Valerio
--%>

<%@page import="DataAccessSito.Pizzeria"%>
<%@page import="DataAccessSito.Cliente"%>
<%@ page language="java"
         session="true"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%Cliente c = (Cliente) session.getAttribute("cliente");
    Pizzeria p = (Pizzeria) session.getAttribute("pizzeria");
%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <%if (c == null && p == null) {%>
    <div align="center" id="contlogo"><a href="Home.jsp"> <img src="logo.png" alt="Logo" id="logo"></a> </div>

    <ul class="menu">

        <li><a class="active" href="Home.html">Home</a></li>
        <li><a href="ChiSiamo.jsp">Chi Siamo</a></li>
        <li class="spost"><a href="Carrello.jsp">Carrello</a></li>
        <li class="spost"><a >Login</a><ul id="containerComaparsaLogin">
                <li id="liLoginCliente"><a href="LoginCliente.jsp" id="comparsaLoginCliente">Cliente</a></li>
                <li id="liLoginPizzeria"><a href="LoginPizzeria.jsp" id="comparsaLoginPizzeria">Pizzeria</a></li>
            </ul></li>
        <li class="spost"><a>Registrazione</a><ul id="containerComaparsaRegistrazione">
                <li id="liRegistrazioneCliente"><a href="RegistrazioneCliente.jsp" id="comparsaRegistrazioneCliente">Cliente</a></li>
                <li id="liRegistrazionePizzeria"><a href="RegistrazionePizzeria.jsp" id="comparsaRegistrazionePizzeria">Pizzeria</a></li>
            </ul></li>
    </ul>
    <%} else if (c != null) {%>
    <ul class="menu">
        <li><a  class="active" href="Home.jsp">Home</a></li>               
        <li><a href="ChiSiamo.jsp">Chi Siamo</a></li>
        <li class="spost"><a href="/Logout">Esci</a></li>
        <li class="spost"><a href="Carrello.jsp">Carrello</a></li>
        <li class="spost"><a href="ProfiloCliente.jsp">Profilo</a></li>
    </ul>
    <%} else {%>
    <ul class="menu">
        <li><a class="active"  href="Home.jsp">Home</a></li>
        <li><a href="Ch Siamo.jsp">Chi Siamo</a></li>
        <li class="spost"><a href="/Logout">Esci</a></li>
        <li class="spost"><a href="Prenotazioni.jsp">Prenotazioni</a></li>
        <li class="spost"><a href="ProfiloPizzeria.jsp">Nome Pizzeria</a></li>
    </ul> 
    <%}%>
</head>
<body>
</body>
</html>
