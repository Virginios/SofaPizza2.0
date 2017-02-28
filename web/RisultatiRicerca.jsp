<%-- 
    Document   : provaeicerca
    Created on : 19-feb-2017, 15.45.19
    Author     : Virginio
--%>
<%@ page language="java"
         session="true"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="DataAccessSito.Pizzeria"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Pizzeria> pizzerie = (ArrayList<Pizzeria>) session.getAttribute("pizzerie");
%>
<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="js/jquery.js">
        </script>
        <script type="text/javascript" src="js/ricerc.js">
        </script>
        <script type="text/javascript" src="js/autocomplete.js">
        </script>
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <link href="css/Ricerca.css" rel="stylesheet" type="text/css">

        <jsp:include page="tabRicerca.jsp"></jsp:include>

        </head>

        <body>
            <div>
                <h2><%="Ristoranti trovati"%></h2>
        </div>
        <div id="contenitore">
            <%if (pizzerie != null) {
            %>
            <% for (int i = 0; i < pizzerie.size(); i++) {%>
            <form id="<%=i%>" action="/RisultatiRicerca">
                <table id="pizzerie" cellspacing="25" style="height: 40%">
                    <thead align="center">
                        <tr align="center"><td></td><th><a href="#" onclick="document.getElementById('<%=i%>').submit();" ><%=pizzerie.get(i).getNome()%></a>
                                <input type="hidden" name="pizzeria" value="<%=pizzerie.get(i).getPiva()%>"></th></tr>
                    </thead>
                    <tbody id="conte" >
                        <tr>
                            <td  id="immagine">
                                <div id="immc">
                                    <img src="/img/logo.png" alt="immaginehome">
                                </div>
                            </td>
                            <td id="cont_info">
                                <table align="center">
                                    <thead><tr><th>Pizza, Italiano</th></tr></thead>
                                    <tbody><tr><td><%="Via " + pizzerie.get(i).getVia() + " Pase " + pizzerie.get(i).getPaese() + "Numero di Telefono " + pizzerie.get(i).getNumero()%></td></tr></tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div style="height: 5px"></div>
            </form>
            <%
                }
            %>
            <%
            } else {

            %><h1>Non ci sono pizzerie disponibili</h1>
            <%}%>
        </div>
    </body>
</html>