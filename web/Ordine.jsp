<%-- 
    Document   : Ordine
    Created on : 21-feb-2017, 11.57.42
    Author     : Valerio
--%>

<%@page import="DataAccessSito.Pizze"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DataAccessSito.DataAccessPizze"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%DataAccessPizze p = new DataAccessPizze();
    ArrayList<Pizze> pizze = p.estraiPizze("ds");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <link href="css/Ordine.css" rel="stylesheet" type="text/css">

        <script type="text/javascript" src="js/jquery.js">
        </script>
        <script type="text/javascript" src="js/jquery.min.js">
        </script>
        <script type="text/javascript" src="js/add.js">
        </script>
        <script type="text/javascript" src="js/decr.js">
        </script>
        <script type="text/javascript" src="js/sendCarrelo.js">
        </script>
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
        <table class="pizzerie" cellspacing="13" width="620" align="center" style="float:none" >
            <thead align="center">
                <tr align="center"><td></td><th height="30" >Ai Tre Monelli</th></tr>
            </thead>
            <tbody>
                <tr>
                    <td height="90" width="120" >Image</td>
                    <td height="5">
                        <table align="center">
                            <thead><tr><th>Pizza, Italiano</th></tr></thead>
                            <tbody><tr><td>Via Giuseppe Atzori, 235, Nocera Inferiore, 84014</td></tr></tbody>
                        </table>
                    </td>
                </tr>
            </tbody>

        </table>
        <ul id="sceltamenu">
            <li> <a class="active">Menu</a></li>
        </ul>
        <table class="pizzemenu" cellspacing="13" width="620" align="center" style="float:none" >
            <thead align="center">
                <tr align="center"><th height="30" >Le Nostre Pizze</th></tr>
            </thead>
            <tbody>
                <tr>
                    <%for (int i = 0; i < pizze.size(); i++) {%>
                    <td><pre><b><%=pizze.get(i).getNome()%></b><%=pizze.get(i).getIngredienti()%></pre><b class="quantita" id="<%=pizze.get(i).getIdpizza()%>">0</b>
                    </td>
                    <td>            <input  type="button" value="+" class="bottone" id="<%=pizze.get(i).getPrezzo()%>" OnClick="add('<%="#" + pizze.get(i).getIdpizza()%>', this.id);"/>
                        <input  type="button" value="-" class="bottone" id="<%=pizze.get(i).getPrezzo()%>" OnClick="decr('<%="#" + pizze.get(i).getIdpizza()%>', this.id);"/>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>
    </body>
    <form action="/Carrello" method="post">
    <div class="menucarrello" style="position: absolute; top: 250px; right: 90px">
        <table>
            <header>
                <p>
                    <span class="totaleordine"><b>Totale Ordine</b></span>
                    <span data-baskettotal class="infototale" id="totale">0.0</span>
                </p>
            </header>
            <thead>
            <td><button class="bottoneordina" OnClick="inviaCarrello()">
                    <span class="aggiungielemento">Ordina Adesso</span>
                </button></td>
            </thead>
        </table>
    </div>
    </form>
</html>