<%-- 
    Document   : LoginPizzeria
    Created on : 25-feb-2017, 23.58.44
    Author     : Virginio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <link href="css/Login.css" rel="stylesheet" type="text/css">
        <title>LoginCliente</title>
    </head>
    <div align="center" id="contlogo"> <img src="logo.png" alt="Logo" id="logo" > </div>

<ul class="menu">
                <li><a  href="Home.jsp">Home</a></li>
                
                 
                   
                                
                <li><a href="Chi Siamo.html">Chi Siamo</a></li>
                <li class="spost"><a class="active">Login</a><ul id="containerComaparsaLogin">
                        <li id="liLoginCliente"><a href="LoginCliente.jsp" id="comparsaLoginCliente" >Cliente</a></li>
                 <li id="liLoginPizzeria"><a href="LoginPizzeria.jsp" id="comparsaLoginPizzeria">Pizzeria</a></li>
                </ul></li>
                <li class="spost"><a href="">Registrazione</a><ul id="containerComaparsaRegistrazione">
                 <li id="liRegistrazioneCliente"><a href="RegistrazioneCliente.jsp" id="comparsaRegistrazioneCliente">Cliente</a></li>
                 <li id="liRegistrazionePizzeria"><a href="RegistrazionePizzeria.jsp" id="comparsaRegistrazionePizzeria">Pizzeria</a></li>
     </ul></li>
            </ul>     
    <body>
        <form name="modulo" id="form" action="/Login" method="post">
            <div id="tabella">
                <table cellspacing="6">
                    <tbody>
                        <tr>

                        </tr>
                        <tr>
                            <td><b>Partita Iva</b></td>
                            <td>
                                <input class="input" id="partitaiva" name="partitaiva" type="text"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="errore" id="erroreNome">il campo non può essere lasciato vuoto</span>
                            </td>
                        </tr>
                        <tr></tr>
                    <td><b>Password</b></td>
                    <td>
                        <input class="input" id="Pssword" name="password" type="text"/>
                    </td>
                    <tr>
                        <td>
                            <span class="errore" id="erroreNome">il campo non può essere lasciato vuoto</span>
                        </td>
                    </tr>

                    <tr id ="contReg">
                        <td></td>
                        <td>
                            <input type="submit" value="Accedi" id="login"/>						
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </form>
    </body>
</html>
