<%-- 
    Document   : ProfiloPizzeria
    Created on : 27-feb-2017, 12.05.48
    Author     : Alessandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="css/Home.css" rel="stylesheet" type="text/css">
<link href="css/prova.css" rel="stylesheet" type="text/css">
<link href="css/ProfiloPizzeria.css" rel="stylesheet" type="text/css">


<title>Home</title>
</head>

<div align="center" id="contlogo"><a href="Home.jsp"> <img src="logo.png" alt="Logo" id="logo"></a> </div>

<ul class="menu">
                <li><a href="Home.jsp">Home</a></li>               
                <li><a href="Chi Siamo.jsp">Chi Siamo</a></li>
                <li class="spost"><a href="Home.jsp">Esci</a></li>
	<li class="spost"><a href="Prenotazioni.jsp">Prenotazioni</a></li>
	<li class="spost"><a href="ProfiloPizzeria.jsp">Nome Pizzeria</a></li>
  </ul>     
  <body>
  <div id="storico">
 <table width="300" height="400" border="0" align="center" class="tabella">
  <tbody>
    <tr>
		<th height="30"><h1><b>Nome Pizzeria</h1></b></th>
    </tr>
    <tr>
      <td align="center" height="10"><button class="bottone2">
              <span class="storico-ordini"><a href="StoricoOrdini.jsp">Storico Ordini</a></span></td>
    </tr>
    <tr>
      <td align="center" height="10"><button class="bottone1">
              <span class="storico-ordini"><a href="ModificaDati.jsp">Modifica Dati</a></span></td>
    </tr>
    <tr>
    <td align="center" height="10" ><button class="bottone3">
            <span class="storico-ordini"><a href ="ModificaMenu.jsp">Modifica Menu</a></span></td>
    </tr>
  </tbody>
</table>
	  </div>
  </body>
</html>