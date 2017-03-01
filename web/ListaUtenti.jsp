<%-- 
    Document   : ListaUtenti
    Created on : 1-mar-2017, 12.09.33
    Author     : Alessandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="css/Home.css" rel="stylesheet" type="text/css">
<link href="css/prova.css" rel="stylesheet" type="text/css">
<link href="css/ListaUtenti.css" rel="stylesheet" type="text/css">
<title>LoginCliente</title>
</head>
<div align="center" id="contlogo"><a href="Home.jsp"> <img src="logo.png" alt="Logo" id="logo"></a> </div>
<ul class="menu">
                <li><a  href="Home.jsp">Home</a></li>
                <li><a href="ChiSiamo.jsp">Chi Siamo</a></li>
               <li class="spost"><a href="Home.jsp">Esci</a></li>
	<li class="spost"><a href="ListaUtenti.jsp">Profilo</a></li>
	<li class="spost"><a>Ciao, Amministratore</a><ul id="containerComparsaAmministratore">
     <li id="liListaUtenti"><a href="ListaUtenti.jsp" id="comparsaListaUtenti">Lista Utenti</a></li>
     <li id="liListaPizzerie"><a href="ListaPizzerie.jsp" id="comparsaListaPizzerie">Lista Pizzerie</a></li>
     <li id="liListaAmministratori"><a href="ListaAmministratori.jsp" id="comparsaListaAmministratori">Lista Amministratori</a></li>
		</ul></li>
            </ul>      
<body>
	<div id="storico">
	
		<h1 class="title" align="center">Lista Utenti</h1>
		<div align="center">
                    <form action="Filtra Per:">
    <fieldset style="border: none">
        <legend>Filtra Per:</legend>
        E-mail <input type="radio" name="linguaggio" value="E-mail"/>
        Nome  <input type="radio" name="linguaggio" value="Nome"/>
        Cognome <input type="radio" name="linguaggio" value="Cognome"/>
        Provincia <input type="radio" name="linguaggio" value="Provincia"/>
        Tipo Cliente <input type="radio" name="linguaggio" value="TipoCliente"/>
        <input type="text" name="tuoTesto" value="Search">
        <input name="Submit" id="login"  type="button" value="Elimina Utente" >&nbsp;&nbsp;<input name="Submit" id="login"  type="button" value="Rendi Amministratore" >
    </fieldset>
		</form>
		<hr>
		<p>
			<input type="checkbox" name="spunta" value="spunta"><b>Alessandro Petrosino</b>, Via Villanova 42, Nocera Inferiore,(SA), 84014
		</p>
		<hr>
		<p>
			<input type="checkbox" name="spunta" value="spunta"><b>Virginio Santonicola</b>, Via Atzori 123, Nocera Inferiore,(SA), 84014
		</p>
		<hr>
		</div>
	</div>
</body>
</html>
