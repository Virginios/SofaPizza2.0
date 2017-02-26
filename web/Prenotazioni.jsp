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
        <%Prenotazione a = access.prendiPrenotazioni("ggh", 1);
        if(a!=null){
        %>
        <div id="produttore" name="produttore" >"Produttore"= <%=a.getCliente()%></div>
        <div id="cliente" name="cliente">"Cliente"= <%=a.getProduttore()%></div>
        <div id="numeroPrenotazione" name="numeroPrenotazione">"NumeroPrenotazione"= <%=a.getNumero_prenotazione()%></div>
        <div id="tipoPrenotazione" name="tipoPrenotazione">"TipoPrenotazione"= <%=a.getTpo_prenotazione()%></div>
        <div id="tipoPagamento" name="tipoPagamento">"TipoPagamento"= <%=a.getTipo_pagamento()%></div>
        <div id="dataPrenotazione" name="dataPrenotazione">"DataPrenotazione"= <%=a.getData_prenotazione()%></div>
        <%}else{%>
        <div id="vuoto" name="vuoto" >vacanto</div>
        <%}%>
    </body>
    <script>
        
    </script>
</html>
