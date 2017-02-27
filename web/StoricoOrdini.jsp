<%-- 
    Document   : StoricoOrdini
    Created on : 27-feb-2017, 12.29.51
    Author     : Alessandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <li><a href="Chi Siamo.jsp">Chi Siamo</a></li>
               <li class="spost"><a href="Home.jsp">Esci</a></li>
	<li class="spost"><a href="Prenotazioni.jsp">Prenotazioni</a>
	<li class="spost"><a href="ProfiloPizzeria.jsp">Nome Pizzeria</a></li>
            </ul>      
<body>
	<div id="storico">
		<h1 align="center" class="title">Storico Ordini</h1>
		<div align="center">
		<hr>
		<p>
			<b>Alessandro Petrosino</b>, Via Villanova 42, Nocera Inferiore, 84014, Totale Spesa: $10,00
		</p>
		<hr>
		<p>
			<b>Virginio Santonicola</b>, Via Atzori 123, Nocera Inferiore, 84014, Totale Spesa: $15,00
		</p>
		<hr>
		</div>
		<div align="center">
			<input name="Submit" id="login"  type="button" value="Svuota tutto" >
		</div>
	</div>
</body>
</html>
