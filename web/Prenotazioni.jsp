<%-- 
    Document   : newjsp
    Created on : 16-feb-2017, 17.51.03
    Author     : Valerio
--%>

<%@page import="DataAccessSito.Prenotazione"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DataAccessSito.DataAccessPrenotazione"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <%DataAccessPrenotazione access = new DataAccessPrenotazione();%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%ArrayList<Prenotazione> a = access.prendiPrenotazioni("ggh", 1);
        %>
        <div id="produttore" name="produttore" widht="100px">"Produttore"= <%=a.get(0).getCliente()%></div>
        <div id="cliente" name="cliente">"Cliente"= <%=a.get(0).getProduttore()%></div>
        <div id="numeroPrenotazione" name="numeroPrenotazione">"NumeroPrenotazione"= <%=a.get(0).getNumero_prenotazione()%></div>
        <div id="tipoPrenotazione" name="tipoPrenotazione">"TipoPrenotazione"= <%=a.get(0).getTpo_prenotazione()%></div>
        <div id="tipoPagamento" name="tipoPagamento">"TipoPagamento"= <%=a.get(0).getTipo_pagamento()%></div>
        <div id="dataPrenotazione" name="dataPrenotazione">"DataPrenotazione"= <%=a.get(0).getData_prenotazione()%></div>
    </body>
</html>
