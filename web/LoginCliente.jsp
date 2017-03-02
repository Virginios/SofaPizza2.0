<%-- 
    Document   : Login
    Created on : 18-feb-2017, 15.24.19
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
            <jsp:include page="tabHome.jsp"></jsp:include>
   
    <body>
        <form name="modulo" id="form" action="/LoginCliente" method="post">
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
