<%-- 
    Document   : provaeicerca
    Created on : 19-feb-2017, 15.45.19
    Author     : Valerio
--%>

<%@ page language="java"
         session="true"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="js/jquery.js">
        </script>
        <script type="text/javascript" src="js/ricerc.js">
        </script>
        <script type="text/javascript" src="js/autocomplete.js">
        </script>
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <jsp:include page="tabHome.jsp"></jsp:include>
</head>
<body>
    <form id="conteiner_imm_ricerca_did" action="/Ricerca" method="post"> 
        <div id="didascalia">  Ordina pizza a domicilio </div>
        <input name="cerco" type="search" id="barraricerca" placeholder="   Inserisci l'indirizzo di consegna, un punto di riferimento o il nome di un ristorante" value="" autocomplete="off"> 
        <input type="submit" id="tastocerca" name="sub" value="Cerca">
        <div id="celiaci"><input type="checkbox" id="celiaci" name="cel"  value="celiaci"><b>Cerca contenuti per celiaci</b></div>
        <ol class="commentlist">
         </ol> 
    </form>
</body>
</html>
