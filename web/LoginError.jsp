<%-- 
    Document   : LoginError
    Created on : 18-feb-2017, 16.03.10
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
    <div align="center" id="contlogo"> <a href="Home.jsp"> <img src="logo.png" alt="Logo" id="logo"></a> </div>
    <ul>
        <li><a  href="Home.html">Home</a></li>
        <li><a href="ChiSiamo.html">Chi Siamo</a></li>
        <li class="spost"><a href="Login.html" class="active">Login</a></li>
        <li class="spost"><a href="RegistrazioneCliente.html">Registrazione</a></li>
    </ul>      
    <body>
        <form name="modulo" id="form" action="/Login" method="post">
            <div id="tabella">
                <table cellspacing="6">
                    <tbody>
                        <tr>

                        </tr>
                        <tr>
                            <td>
                                <span id="errori" style="display: block;color: red" >username o password errati</span>
                            </td>
                        </tr>
                        <tr>
                            <td><b>E-mail</b></td>
                            <td>
                                <input class="input" id="E-mail" name="email" type="text"/>
                            </td>
                        </tr>
                        <tr></tr>
                    <td><b>Password</b></td>
                    <td>
                        <input class="input" id="Pssword" name="password" type="password"/>
                    </td>
                    <tr id ="contReg">
                        <td></td>
                        <td>
                            <input type="submit" value="submit" id="login"/>						
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </form>
    </body>
</html>
