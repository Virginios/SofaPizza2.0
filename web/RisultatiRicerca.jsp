<%-- 
    Document   : provaeicerca
    Created on : 19-feb-2017, 15.45.19
    Author     : Valerio
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
        <meta charset="utf-8">
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <link href="css/Ricerca.css" rel="stylesheet" type="text/css">

        <title>Home</title>
    </head>

    <div align="center" id="contlogo"> <img src="logo.png" alt="Logo" id="logo" > </div>

    <ul class="menu">
        <li><a class="active" href="Home.html">Home</a></li>




        <li><a href="Chi Siamo.html">Chi Siamo</a></li>
        <li class="spost"><a href="LoginCLIENTE.html">Login</a></li>
        <li class="spost"><a href="RegistrazioneCliente.html">Registrazione</a></li>
    </ul>     


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
                <thead align="center" style="height: 5%">
                    <tr align="center"><td></td><th><a href="#" onclick="document.getElementById('<%=i%>').submit();" ><%=pizzerie.get(i).getNome()%></a>
                        <input type="hidden" name="pizzeria" value="<%=pizzerie.get(i).getPiva()%>"></th></tr>
                </thead>
                <tbody id="conte" >
                    <tr>
                        <td  id="immagine">
                            <div id="immc">
                                <img src="/img/admin.jpg" alt="immaginehome">
                            </div>
                        </td>
                        <td id="cont_info">
                            <table align="center">
                                <thead><tr><th>Pizza, Italiano</th></tr></thead>
                                <tbody><tr><td><%="Via "+pizzerie.get(i).getVia()+" Pase "+pizzerie.get(i).getPaese()+"Numero di Telefono "+pizzerie.get(i).getNumero()%></td></tr></tbody>
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
                }else{

            %><h1>non ci sono pizzerie disponibili</h1>
            <%}%>
        </div>
    </body>
</html>