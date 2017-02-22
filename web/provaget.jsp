<%-- 
    Document   : provaget
    Created on : 21-feb-2017, 12.49.40
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
        <script type="text/javascript" src="js/jquery.min.js">
        </script>
    </head>
    <body>
            <input type="button" value="+" class="bottone" id="3.5" OnClick="funct('#quantita', this.id);"/>
        <b data-baskettotal class="infototale" id="quantita">0</b>
        <span data-baskettotal class="infototale" id="totale">0.0</span>
        <script>
            function funct(id, myid) {
                var newcurrentpageTemp = parseFloat(myid);
                console.log(newcurrentpageTemp);
                var txt = $(id).text();
                var number = parseInt(txt);
                number++;
                console.log(number);
                $(id).text(number);
                var txt = $(id).text();
                console.log(txt);
                var totale = $("#totale").text();
                var numero = parseFloat(totale);
                var tot = number*newcurrentpageTemp;
                console.log(tot);

            }

        </script>
    </body>
</html>
