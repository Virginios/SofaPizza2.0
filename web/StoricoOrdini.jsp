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
    ArrayList<Prenotazione> prenotazioni = (ArrayList<Prenotazione>)request.getAttribute("storico");
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
        <jsp:include page="TabPizzeria.jsp"></jsp:include>
     
<body>
	<div id="storico">
		<h1 align="center" class="title">Storico Ordini</h1>
		<div align="center">
		<hr>
                <%if(prenotazioni!=null){%>
                <%for(int i=0;i<prenotazioni.size();i++){%>
		<p>
                    <b><%=prenotazioni.get(i).getCliente()%></b>, <%=prenotazioni.get(i).getIndirizzoCliente()+" "+prenotazioni.get(i).getData_prenotazione()%>
		<hr>
                <%}%>
                <form action="/ControlCancellaStorico" method="post">
		<div align="center">
			<input name="Submit" id="login"  type="submit" value="Svuota tutto" >
		</div>
                    </form>
                <%}
                else{%>   
                <h1>Storico Vuoto</h1>
                        <%}%>
	</div>
</body>
</html>
