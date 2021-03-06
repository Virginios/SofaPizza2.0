<%-- 
    Document   : OrdineDefinitivo
    Created on : 23-feb-2017, 22.48.23
    Author     : Valerio
--%>

<%@page import="DataAccessSito.Pizzeria"%>
<%@page import="DataAccessSito.Pizze"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DataAccessSito.DataAccessPizze"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Pizzeria pizzeria = (Pizzeria) session.getAttribute("pizzeria");
    DataAccessPizze p = new DataAccessPizze();
    ArrayList<Pizze> pizze = p.estraiPizze(pizzeria.getPiva());
%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <link href="css/Ordine2.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="js/jquery.js">
    </script>
    <script type="text/javascript" src="js/jquery.min.js">
    </script>
    <script type="text/javascript" src="js/add.js">
    </script>
    <script type="text/javascript" src="js/decremento.js">
    </script>

               <jsp:include page="tabRicerca.jsp"></jsp:include>

    <title>Home</title>
</head>

<body>
    <div id="container">
        
<form action="/Carrello" method="post">
        <div class="menucarrello">
            <table>
                <header>
                    <p>
                        <span class="totaleordine">  <b>Totale Ordine</b> &euro;</span>
                        <span data-baskettotal class="infototale" id="totale">0.00</span>
                    </p>
                </header>
                <thead>
                <td><button class="bottoneordina" OnClick="inviaCarrello()" type="sumbit">
                        <span class="aggiungielemento">Ordina Adesso</span>
                    </button></td>
                </thead>
            </table>
        </div>
    </form>
        <div>
            <table  id="tab" width="800" class="pizzerie" align="center" height="250">
                <tbody>

                    <tr id="nomePizz">

                        <th colspan="2"><h1><%=pizzeria.getNome()%></h1></th>

                    </tr>
                    <tr id="pizzeria">
                        <td colspan="2" align="center" height="10" ><pre id="caratt"><strong>Pizzeria</strong>
<%=pizzeria.getVia()%>,<%=pizzeria.getPaese()%></pre></td>
                    </tr>
                    <tr align="center" class="titolo1">
                        <td align="center"><strong data_temp_dwid="1">Le Nostre Pizze</strong></td>
                    </tr>
                                        <%for (int i = 0; i < pizze.size(); i++) {%>

                    <tr>
                        <td width="60%"><pre id="caratt"><strong style="float: left"><%=pizze.get(i).getNome()%></strong> <strong style="float: right"><%=pizze.get(i).getPrezzo()%> &euro; </strong>
<%=pizze.get(i).getIngredienti()%>                                </pre>
                        <td width="30%" align="center"><b>Quantita' </b>
                            <span data-baskettotal class="infoquantita" id="<%=pizze.get(i).getIdpizza()%>">0</span>
                        </td></td>
                        <td width="20" height="30"><button class="bottone1" id="<%=pizze.get(i).getPrezzo()%>" OnClick="add('<%="#" + pizze.get(i).getIdpizza()%>', this.id);" required>
                                <span class="aggiungielemento">+</span>
                            </button>
                            <button class="bottone1" id="<%=pizze.get(i).getPrezzo()%>" OnClick="decr('<%="#" + pizze.get(i).getIdpizza()%>', this.id);" required>
                                <span class="aggiungielemento">-</span>
                            </button></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
</body>
<script>
        function inviaCarrello() {
            var quantita = [];
            var id = [];
            $(".infoquantita").each(function () {
                quantita.push($(this).text());
                id.push($(this).attr('id'));
            });
            $.post('/GetCarrello', {"id": id, "quantita": quantita});
            //$("form").submit();

        }
    </script>
</html
