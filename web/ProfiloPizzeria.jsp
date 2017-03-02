<%-- 
    Document   : ProfiloPizzeria
    Created on : 27-feb-2017, 12.05.48
    Author     : Alessandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="css/Home.css" rel="stylesheet" type="text/css">
<link href="css/prova.css" rel="stylesheet" type="text/css">
<link href="css/ProfiloPizzeria.css" rel="stylesheet" type="text/css">


<title>Home</title>

        <jsp:include page="TabPizzeria.jsp"></jsp:include>

</head>    
  <body>
 <table width="300" height="400" border="0" align="center" class="tabella">
  <tbody>
    <tr>
        <th height="30"><h1><b>Nome Pizzeria</b></h1></th>
    </tr>
  <form action="ModificaDatiPizzeria.jsp" method="post">>
    <tr>
        <td align="center" height="10"><button class="bottone2" type="submit">Modifica Dati</button>
              <span class="storico-ordini"></span></td>
    </tr>
      </form>

  <form action="/ControlStorico" method="post">
    <tr>
        <td align="center" height="10"><button class="bottone1" type="submit">Storico</button>
              <span class="storico-ordini"></span></td>
    </tr>
    </form>

    <tr>
        <td align="center" height="10" ><button class="bottone3">Modifica Menu</button>
            <span class="storico-ordini"></span></td>
    </tr>
  </tbody>
</table>
	  </div>
  </body>	