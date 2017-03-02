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
    <div align="center" id="contlogo"> <a href="Home.jsp"> <img src="logo.png" alt="Logo" id="logo"></a> </div>

            <jsp:include page="tabRegistrazione.jsp"></jsp:include>
   
    <body>
        <form name="modulo" id="form" action="/LoginPizze" method="post">
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
                        <input class="input" id="Pssword" name="password" type="password"/>
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
