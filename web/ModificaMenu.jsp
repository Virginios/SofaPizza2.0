<%-- 
    Document   : ModificaMenu
    Created on : 27-feb-2017, 12.36.45
    Author     : Alessandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="css/Home.css" rel="stylesheet" type="text/css">
<link href="css/prova.css" rel="stylesheet" type="text/css">
<link href="css/ModificaMenu.css" rel="stylesheet" type="text/css">


<title>Home</title>
</head>

<div align="center" id="contlogo"><a href="Home.jsp"> <img src="logo.png" alt="Logo" id="logo"></a> </div>

<ul class="menu">
                <li><a href="Home.jsp">Home</a></li>               
                <li><a href="Chi Siamo.jsp">Chi Siamo</a></li>
                <li class="spost"><a href="Home.jsp">Esci</a></li>
	<li class="spost"><a href="Prenotazioni.jsp">Prenotazioni</a></li>
	<li class="spost"><a href="ProfiloCliente.jsp">Nome Pizzeria</a></li>
  </ul>     
                              
<body>
<div class="MenuImpostazioniCliente">
	<h1>Modifica Menu</h1>
	<div class="ControlloImpostazioni">
		<label class="from-label" for="Nome"></label>
		<div class="ControlloDati">
		<input class="form-input form-input--icon"  type="text" value="Nome Pizza">
	</div>
	</div>
          <div class="ControlloImpostazioni2">
		<label class="from-label" for="Nome"></label>
		<div class="ControlloDati">
		<input class="form-input form-input--icon"  type="text" value="Ingredienti Pizza" >
	</div>
	</div>
                        <button type="submit" class="bottone" id="SalvaBottone" data-test-id="saveButton"><span class="is-loading-hidden">Salva modifiche</span></button>
</div>
<ul id="menu">
    <li><a href="#">Modifica Dati</a></li>
    <li><a href="#">Storico Ordini</a></li>
    <li class="active"><a href="#">Modifica Menu</a></li>
</ul>
</body>
</html>