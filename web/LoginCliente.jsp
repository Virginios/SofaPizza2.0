<%-- 
    Document   : Login
    Created on : 18-feb-2017, 15.24.19
    Author     : Valerio
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
                <li><a  href="Home.html">Home</a></li>
                
                 
                   
                                
                <li><a href="Chi Siamo.html">Chi Siamo</a></li>
                <li class="spost"><a class="active">Login</a><ul id="containerComaparsaLogin">
                        <li id="liLoginCliente"><a href="LoginCLIENTE.html" id="comparsaLoginCliente" >Cliente</a></li>
                 <li id="liLoginPizzeria"><a href="LoginPIZZERIA.html" id="comparsaLoginPizzeria">Pizzeria</a></li>
                </ul></li>
                <li class="spost"><a href="">Registrazione</a><ul id="containerComaparsaRegistrazione">
                 <li id="liRegistrazioneCliente"><a href="RegistrazioneCLIENTE.html" id="comparsaRegistrazioneCliente">Cliente</a></li>
                 <li id="liRegistrazionePizzeria"><a href="RegistrazionePIZZERIA.html" id="comparsaRegistrazionePizzeria">Pizzeria</a></li>
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
                            <td><b>E-mail</b></td>
                            <td>
                                <input class="input" id="E-mail" name="email" type="text"/>
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
