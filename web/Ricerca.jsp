<%-- 
    Document   : Ristoranti
    Created on : 18-feb-2017, 21.51.37
    Author     : Valerio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link href="css/Home.css" rel="stylesheet" type="text/css">
<link href="css/prova.css" rel="stylesheet" type="text/css">
<link href="css/Ricerca.css" rel="stylesheet" type="text/css">

<title>Home</title>
</head>

<div align="center" id="contlogo"> <img src="logo.png" alt="Logo" id="logo" > </div>

<ul class="menu">
                <li><a class="active" href="Home.html">Home</a></li>
                
                 
                   
                                
                <li><a href="Chi Siamo.html">Chi Siamo</a></li>
                <li class="spost"><a href="LoginCLIENTE.html">Login</a></li>
                <li class="spost"><a href="RegistrazioneCliente.html">Registrazione</a></li>
            </ul>     
                              
          
<body>
    <div>
        <h2>1 Ristorante trovato a Via Villanova 42, Nocera Inferiore</h2>
    </div>
    <div id="contenitore">
    <table id="pizzerie" cellspacing="25" style="height: 40%">
        <thead align="center" style="height: 5%" >
            <tr align="center"><td></td><th >Ai Tre Monelli</th></tr>
        </thead>
        <tbody id="conte" >
            <tr>
                <td  id="immagine">
                <div id="immc">
					<img src="immaginehome.jpeg" alt="immaginehome">
               </div>
                </td>
                <td id="cont_info">
                    <table align="center">
                        <thead><tr><th>Pizza, Italiano</th></tr></thead>
                        <tbody><tr><td>Via Giuseppe Atzori, 235, Nocera Inferiore, 84014</td></tr></tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
            <div style="height: 5px"></div>

    </div>
</body>
</html>