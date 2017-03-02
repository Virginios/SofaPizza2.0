<%-- 
    Document   : ordinee
    Created on : 22-feb-2017, 16.46.54
    Author     : Valerio
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page import="DataAccessSito.Pizze"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DataAccessSito.Prodotti"%>
<%@ page language="java"
         session="true"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    Prodotti p = (Prodotti) session.getAttribute("carrello");
    ArrayList<Pizze> pp = new ArrayList<Pizze>();
    ArrayList<Integer> quantita = new ArrayList<Integer>();
    if (p != null) {
        pp = p.getPizza();
        int[] numQuant = new int[p.getQuantita().length];
        numQuant = p.getQuantita();
        for (int i = 0; i < p.getQuantita().length; i++) {
            quantita.add(Integer.valueOf(numQuant[i]));
            System.out.println(quantita.get(i));
        }
    }

%>
<html>
    <head>
        <meta charset="utf-8">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <link href="css/Carrello.css" rel="stylesheet" type="text/css">
        <link href="css/Ordine.css" rel="stylesheet" type="text/css">
        <title>Carrello</title>

    </head>

    <div align="center" id="contlogo"><a href="Home.jsp"> <img src="logo.png" alt="Logo" id="logo"></a> </div>

    <ul>
        <li><a href="Home.jsp">Home</a></li>
        <li><a href="Chi Siamo.jsp">Chi Siamo</a></li>
        <li class="spost"><a href="Login.jsp">Login</a></li>
        <li class="spost"><a href="RegistrazioneCliente.jsp">Registrazione</a></li>
    </ul> 

    <body>
        <div id="imm">
            <table width="300" border="0" class="tabella" align="left" height="400" summary="" style="float:right;">
                <tbody>
                    <%if (pp.size() > 0) {%>

                    <tr>
                        <th width="400" align="" class="riepilogo"><strong>Riepilogo</strong></th>
                    </tr>
                    <tr>
                        <%for (int i = 0; i < pp.size(); i++) {%>
                        <td><b>Nome <%=pp.get(i).getNome()%></b></td> <td><b class="prezzopizza">prezzo &euro;<%=pp.get(i).getPrezzo()%></b></td>

                    </tr>
                    <tr>
                        <td><b>Quantità</b></td> <td><b class="prezzopizza"> &nbsp;&nbsp;&nbsp; <%=quantita.get(i)%></b></td>

                    </tr>
                    <%}%>
                    <tr>
                        <td><b>TOTALE</b></td><td><b class="prezzopizza">totale &euro;<%=p.getTotale()%></b></td>
                    </tr>
                    <tr>
                        <td align="center">Ai tre Monelli, Via Giuseppe Atzori, 235, 84014</td>
                    </tr>
                </tbody>
                <table class="tabella2" summary="" style="float:left;">
                    <h1 id="pagamento"> Come vuoi pagare?</h1>
                    <form method="post" action="/ConfermaPrenotazione">
                        <fieldset style="border: none;  right: 25%; margin-top: -1%;" class="menu">
                            <legend></legend>

                            <select name="siti" class="menu">
                                <option value="Contanti.html" selected="selected">Contanti alla Consegna</option>
                                <option value="Carta.html">Carta di Credito</option>
                            </select>
                        </fieldset>
                        <button class="confermaordine" type="sumbit">Conferma Ordine</button>
                    </form>
                    <form method="post" action="/CancellaPrenotazione">
                        <button class="svuotacarrello " type="sumbit">Svuota Carrello</button>
                    </form>
                </table> 
                <%} else {
                %>
                <h2>non ci sono elementi disponibili nel carrello</h2>
                <%
                    }
                %>

            </table>
        </div>

    </body>
</html>
