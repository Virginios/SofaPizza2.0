<%-- 
    Document   : ordinee
    Created on : 22-feb-2017, 16.46.54
    Author     : Valerio
--%>

<%@page import="DataAccessSito.Pizze"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DataAccessSito.Prodotti"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Prodotti p = (Prodotti)session.getAttribute("carrello");
    ArrayList<Pizze> pp = p.getPizza();
    
%>
<!DOCTYPE html>
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
    <tr>
		<th width="400" align="" class="riepilogo"><strong>Riepilogo</strong></th>
    </tr>
    <tr>
        <%for(int i=0;i<pp.size();i++){%>
        <td><b>Nome <%=pp.get(i).getNome()%></b></td> <td><b class="prezzopizza">prezzo &euro;<%=pp.get(i).getPrezzo()%></b></td>
        <%}%>
   
    </tr>
  <tr>
	<td><b>Quantità</b></td> <td><b class="prezzopizza"> &nbsp;&nbsp;&nbsp;  1</b></td>
   
    </tr>
    <tr>
        <%for(int i=0;i<pp.size();i++){%>
        <td><b>Nome <%=pp.get(i).getNome()%></b></td> <td><b class="prezzopizza">prezzo &euro;<%=pp.get(i).getPrezzo()%></b></td>
        <%}%>
   
    </tr>
    <tr>
	<td><b>Quantità</b></td> <td><b class="prezzopizza"> &nbsp;&nbsp;&nbsp;  1</b></td>
   
    </tr>
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
	<button class="confermaordine">Conferma Ordine</button>
        <button class="svuotacarrello">Svuota Carrello</button>
                    </form>
            </table>
        </table>
        </div>

</body>
</html>
