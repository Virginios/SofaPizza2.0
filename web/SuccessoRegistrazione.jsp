<%-- 
    Document   : SuccessoCliente
    Created on : 27-feb-2017, 13.17.42
    Author     : Alessandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="css/Home.css" rel="stylesheet" type="text/css">
<link href="css/prova.css" rel="stylesheet" type="text/css">
<link href="css/SuccessoPizzeria.css" rel="stylesheet" type="text/css">
<title>LoginCliente</title>
<meta http-equiv="refresh" content="3;URL=HomeLoggato.jsp">
</head>
<div align="center" id="contlogo"> <img src="logo.png" alt="Logo" id="logo" > </div>
<ul class="menu">
                <li><a  href="Home.jsp">Home</a></li>
                <li><a href="ChiSiamo.jsp">Chi Siamo</a></li>
                <li class="spost"><a href="Login.jsp" class="active">Login</a></li>
                <li class="spost"><a href="RegistrazioneCliente.jsp">Registrazione</a></li>
            </ul>      
<body>
<div id="storico">
	<h1 align="center">Registrazione Effettuata con Successo!</h1>
	<h3 align="center">A breve sarai reindirizzato alla Home.</h3>
</div>
</body>
<script>
  setTimeout(function() {
      document.location = "Prenotazioni.jsp";
  }, 2000); // <-- this is the delay in milliseconds
</script>
</html>