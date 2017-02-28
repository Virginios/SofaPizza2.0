<%-- 
    Document   : TabRegistrazione
    Created on : 28-feb-2017, 11.11.43
    Author     : Valerio
--%>


<%@ page language="java"
         session="true"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %><!DOCTYPE html>
<html>
    <head>
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
       <div align="center" id="contlogo"> <a href="Home.jsp"> <img src="logo.png" alt="Logo" id="logo"></a> </div>

<ul class="menu">
                <li><a href="Home.jsp">Home</a></li>
                
                 
                   
                                
                <li><a href="ChiSiamo.jsp">Chi Siamo</a></li>
                        <li class="spost"><a href="Carrello.jsp">Carrello</a></li>

                <li class="spost"><a >Login</a><ul id="containerComaparsaLogin">
                 <li id="liLoginCliente"><a href="LoginCliente.jsp" id="comparsaLoginCliente">Cliente</a></li>
                 <li id="liLoginPizzeria"><a href="LoginPizzeria.jsp" id="comparsaLoginPizzeria">Pizzeria</a></li>
                </ul></li>
                <li class="spost"><a class="active" href="">Registrazione</a><ul id="containerComaparsaRegistrazione">
                 <li id="liRegistrazioneCliente"><a href="RegistrazioneCliente.jsp" id="comparsaRegistrazioneCliente">Cliente</a></li>
                 <li id="liRegistrazionePizzeria"><a href="RegistrazionePizzeria.jsp" id="comparsaRegistrazionePizzeria">Pizzeria</a></li>
     </ul></li>
            </ul>      
</head>
<body>
</body>
</html>
