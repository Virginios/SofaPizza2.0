<%-- 
    Document   : Prova
    Created on : 17-feb-2017, 13.59.29
    Author     : Valerio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script type="text/javascript" src="js/jquery.js">
        </script>
        <script type="text/javascript" src="js/getComuni.js">
        </script>
        <link href="prova.css" rel="stylesheet" type="text/css">
    </head>
    <body>
<div class="prodselectbox">
    <div class="floatleft cat">Provincia</div>
    <div class="floatleft catid">
        <select class="provincia" name="provincia" id="provincia">
            <option value="Agrigento">AGRIGENTO</option>
            <option value="Alessandria">ALESSANDRIA</option>
            <option value="Ancona">ANCONA</option>
        </select>
    </div>
    <div class="floatleft artid">Comune</div>
    <div class="floatleft selectarticle">
        <select class="comune" name="comune" id="comune">
            <option value="Agrigento">AGRIGENTO</option>
        </select>
    </div>
    <div class="clearfix"></div>
  </body>
</html>
