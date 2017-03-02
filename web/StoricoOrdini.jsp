<%-- 
    Document   : StoricoOrdini
    Created on : 27-feb-2017, 12.29.51
    Author     : Alessandro
--%>

<%@page import="DataAccessSito.Prenotazione"%>
<%@page import="DataAccessSito.Pizzeria"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DataAccessSito.DataAccessPrenotazione"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DataAccessPrenotazione daop = new DataAccessPrenotazione();
    Pizzeria p = (Pizzeria) session.getAttribute("pizzeria");
    ArrayList<Prenotazione> prenotazioni = daop.prendiStorico(p.getPiva());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="css/Home.css" rel="stylesheet" type="text/css">
<link href="css/prova.css" rel="stylesheet" type="text/css">
<link href="css/StoricoOrdini.css" rel="stylesheet" type="text/css">
<title>LoginCliente</title>
</head>
<div align="center" id="contlogo"><a href="Home.jsp"> <img src="logo.png" alt="Logo" id="logo"></a> </div>
<ul class="menu">
                <li><a  href="Home.jsp">Home</a></li>
                <li><a href="ChiSiamo.jsp">Chi Siamo</a></li>
               <li class="spost"><a href="Home.jsp">Esci</a></li>
	<li class="spost"><a href="Prenotazioni.jsp">Prenotazioni</a>
	<li class="spost"><a href="ProfiloPizzeria.jsp">Nome Pizzeria</a></li>
            </ul>      
<body>
	<div id="storico">
		<h1 align="center" class="title">Storico Ordini</h1>
		<div align="center">
		<hr>
                <%for(int i=0;i<prenotazioni.size();i++){%>
		<p>
                    <b><%=prenotazioni.get(i).getCliente()%></b>, <%=prenotazioni.get(i).getIndirizzoCliente()+" "+prenotazioni.get(i).getData_prenotazione()%>
		<hr>
                <%}%>
		<div align="center">
			<input name="Submit" id="login"  type="button" value="Svuota tutto" >
		</div>
	</div>
</body>
</html>
