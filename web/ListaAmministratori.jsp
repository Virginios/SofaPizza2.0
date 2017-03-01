<%-- 
    Document   : ListaAmministratori
    Created on : 1-mar-2017, 12.14.45
    Author     : Alessandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="css/Home.css" rel="stylesheet" type="text/css">
<link href="css/prova.css" rel="stylesheet" type="text/css">
<link href="css/ListaAmministratori.css" rel="stylesheet" type="text/css">
<title>LoginCliente</title>
</head>
<div align="center" id="contlogo"><a href="Home.jsp"> <img src="logo.png" alt="Logo" id="logo"></a> </div>
<ul class="menu">
                <li><a  href="Home.jsp">Home</a></li>
                <li><a href="ChiSiamo.jsp">Chi Siamo</a></li>
               <li class="spost"><a href="Home.jsp">Esci</a></li>
	<li class="spost"><a href="ListaUtenti.jsp">Profilo</a></li>
	<li class="spost"><a >Ciao, Amministratore</a><ul id="containerComparsaAmministratore">
     <li id="liListaUtenti"><a href="ListaUtenti.jsp" id="comparsaListaUtenti">Lista Utenti</a></li>
     <li id="liListaPizzerie"><a href="ListaPizzerie.jsp" id="comparsaListaPizzerie">Lista Pizzerie</a></li>
     <li id="liListaAmministratori"><a href="ListaAmministratori.jsp" id="comparsaListaAmministratori">Lista Amministratori</a></li>
		</ul></li>
            </ul>  
            </ul>      
<body>
	<div id="storico">
		<h1 class="title" align="center">Lista Amministratori</h1>
		<div align="center">
		<hr>
		<p>
			<b>Alessandro Petrosino</b>, Via Villanova 42, Nocera Inferiore, 84014 <input name="Submit" id="login"  type="button" value="Rimuovi Amministratore" >
		</p>
		<hr>
		<p>
			<b>Virginio Santonicola</b>, Via Atzori 123, Nocera Inferiore, 84014 <input name="Submit" id="login"  type="button" value="Rimuovi Amministratore" >
		</p>
		<hr>
		</div>
	</div>
</body>
</html>