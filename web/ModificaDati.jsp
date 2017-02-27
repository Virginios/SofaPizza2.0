<%-- 
    Document   : ModificaDati
    Created on : 27-feb-2017, 12.31.43
    Author     : Alessandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="css/Home.css" rel="stylesheet" type="text/css">
<link href="css/prova.css" rel="stylesheet" type="text/css">
<link href="css/ModificaDati.css" rel="stylesheet" type="text/css">


<title>Home</title>
</head>

<div align="center" id="contlogo"> <img src="logo.png" alt="Logo" id="logo" > </div>

<ul class="menu">
                <li><a href="Home.jsp">Home</a></li>               
                <li><a href="ChiSiamo.jsp">Chi Siamo</a></li>
                <li class="spost"><a href="Home.jsp">Esci</a></li>
	<li class="spost"><a href="Prenotazioni.jsp">Prenotazioni</a>
	<li class="spost"><a href="ProfiloCliente.jsp">Nome Pizzeria</a></li>
  </ul>     
                              
<body>
<div class="MenuImpostazioniCliente">
	<h1>Il Mio Account</h1>
	<div class="ControlloImpostazioni">
		<label class="from-label" for="Nome"><b class="name">Nome</b></label>
		<div class="ControlloDati">
		<input class="form-input form-input--icon" data-test-id="nome" data-val="true" data-val-length="Lunghezza massima 100 caratteri" data-val-length-max="100" data-val-regex="Il tuo nome non dovrebbe contenere numeri" data-val-regex-pattern="^[\.\(\),!\/&amp;:\u0022\u2019\u00b4\u0060\u00C0-\u00F6\u00F8-\u017Fa-zA-Z-'' ]*$" data-val-required="Inserisci Nome e Cognome" id="account-name" name="Name" type="text" value="Nome Pizzeria">
		<span class="field-validation-valid has-error" data-valmsg-for="Name" data-valmsg-replace="true"></span>
	</div>
	</div>
	<div class="ControlloImpostazioni">
		<label class="from-label" for="Nome"><b class="name">Indirizzo</b></label>
		<div class="ControlloDati">
		<input class="form-input form-input--icon" data-test-id="indirizzo" data-val="true" data-val-length="Lunghezza massima 100 caratteri" data-val-length-max="100" data-val-regex="L'indirizzo deve contenere il numero civico" data-val-regex-pattern="^[\.\(\),!\/&amp;:\u0022\u2019\u00b4\u0060\u00C0-\u00F6\u00F8-\u017Fa-zA-Z-'' ]*$" data-val-required="Inserisci Indirizzo" id="address" name="Address" type="text" value="Via Roma 54">
		<span class="field-validation-valid has-error" data-valmsg-for="Name" data-valmsg-replace="true"></span>
	</div>
	</div>
	<div class="ControlloImpostazioni">
	  <label class="from-label" for="Email"><strong class="name">E-mail</strong></label>
	  <div class="ControlloDati">
	<input class="form-input form-input--icon" data-test-id="email" data-val="true" data-val-email="Inserisci il tuo indirizzo email valido" data-val-length="Inserisci il tuo indirizzo email valido" data-val-length-max="50" data-val-required="Inserisci il tuo indirizzo email" id="account-email" name="Email" type="email" value="PincoPallino@gmail.com" disabled>
	<span class="field-validation-valid has-error" data-valmsg-for="Email" data-valmsg-replace="true"></span>
		</div>
	</div>
	<div class="ControlloImpostazioni">
		<label class="from-label" for="Telefono"><b class="name">Telefono</b></label>
	<div class="ControlloDati">
	<input class="form-input form-input--icon" data-test-id="phone" data-val="true" data-val-length="Lunghezza massima 15 caratteri" data-val-length-max="15" data-val-regex="Il tuo numero di cellulare deve essere lungo almeno 9 caratteri e non deve conte lettere o caratteri speciali" data-val-regex-pattern="^\d{6,}$" data-val-required="Inserisci il tuo cellulare" id="account-phoneNumber" name="Phone" type="tel" value="3333333333">
	<span class="field-validation-valid has-error" data-valmsg-for="Phone" data-valmsg-replace="true"></span>
		</div>
	</div>
	<div class="ControlloImpostazioni">
		<label class="form-label" for="Password"><b class="name">Password</b></label>
                            <div class="ControlloDati">
                                <input class="form-input form-input--icon" data-test-id="Password" data-val="true" data-val-length="Lunghezza massima 15 caratteri" data-val-length-max="15" data-val-regex="La tua Password deve essere lunga almeno 8 caratteri e deve contenere almeno un numero" data-val-regex-pattern="^\d{6,}$" data-val-required="Inserisci la tua Password" id="account-passwor" name="Password" type="password" value="PincoPallino10">
                                <a href="ModificaPassword.html">Modifica Passoword</a>
                            </div>
                        </div>
                        <button type="submit" class="bottone" id="SalvaBottone" data-test-id="saveButton"><span class="is-loading-hidden">Salva modifiche</span></button>
</div>
<ul id="menu">
    <li class="active"><a href="#">Modifica Dati</a></li>
    <li><a href="#">Storico Ordini</a></li>
    <li><a href="#">Modifica Menu</a></li>
</ul>
</body>
</html>