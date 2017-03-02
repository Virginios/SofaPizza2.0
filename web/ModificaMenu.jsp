<%-- 
    Document   : ModificaMenu
    Created on : 27-feb-2017, 12.36.45
    Author     : Alessandro
--%>

<%@page import="DataAccessSito.Pizze"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DataAccessSito.DataAccessPizze"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%DataAccessPizze daop = new DataAccessPizze();
    ArrayList<Pizze> pizze = daop.estraiPizze("051245154");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <link href="css/MenuPizzeria.css" rel="stylesheet" type="text/css">
 <script type="text/javascript" src="js/jquery.js">
        </script>
        <script type="text/javascript" src="js/jquery.min.js">
        </script>
        <script type="text/javascript" src="js/controlNome.js">
        </script>

        <title>Home</title>
    </head>

    <div align="center" id="contlogo"><a href="Home.jsp"> <img src="logo.png" alt="Logo" id="logo"></a> </div>

    <ul class="menu">
        <li><a href="Home.jsp">Home</a></li>               
        <li><a href="ChiSiamo.jsp">Chi Siamo</a></li>
        <li class="spost"><a href="Home.jsp">Esci</a></li>
        <li class="spost"><a href="Prenotazioni.jsp">Prenotazioni</a></li>
        <li class="spost"><a href="ProfiloCliente.jsp">Nome Pizzeria</a></li>
    </ul>     

    <body>
        <form action="/ModificaMenu" method="post" onSubmit="return controlNome()">
         <div class="tabellamenu">
                                        <h2 id="uguale" style="display: none;color: red">Le pizze nel menu non possono avere nome uguale</h2>
                                        
            <%for (int i = 0; i < pizze.size(); i++) {%>
                <%if(i+1==pizze.size()&&i!=0){%>
                  <div class="contenitore" id="<%=i+"del"%>">
                    <input value="<%=pizze.get(i).getNome()%>"type="text" name="nomePizza" id="text" placeholder="Nome Pizza" size="20" class="NomePizza" aria-hidden="true" jsaction="mousedown:ntp.fkbxclk" required>
                    <input value="<%=pizze.get(i).getIngredienti()%>"type="text" name="nomeIngredienti" id="text" placeholder="Ingredienti" size="20" class="textarea" required>
                    <input value="<%=pizze.get(i).getPrezzo()%>"type="text" name="prezzo" id="text" placeholder="Prezzo" size="5" class="textarea" aria-hidden="true" jsaction="mousedown:ntp.fkbxclk" required>
                    <input type="button" value="+"  class="bottone">
                    <input type="button" value="-"  class="bottoneDecr" id="<%=i%>">
                    <input type="hidden" value="<%=pizze.get(i).getIdpizza()%>" name="id">
                   </div>
                <%}%>
                <%if(i+1==pizze.size()&&i==0){%>
                  <div class="contenitore" id="<%=i%>">
                     <input value="<%=pizze.get(i).getNome()%>"type="text" name="nomePizza" id="text" placeholder="Nome Pizza" size="20" class="NomePizza" aria-hidden="true" jsaction="mousedown:ntp.fkbxclk" required>
                    <input value="<%=pizze.get(i).getIngredienti()%>"type="text" name="nomeIngredienti" id="text" placeholder="Ingredienti" size="20" class="textarea" required>
                    <input value="<%=pizze.get(i).getPrezzo()%>"type="text" name="prezzo" id="text" placeholder="Prezzo" size="5" class="textarea" aria-hidden="true" jsaction="mousedown:ntp.fkbxclk" required>
                    <input type="button" value="+"  class="bottone">
                                        <input type="hidden" value="<%=pizze.get(i).getIdpizza()%>" name="id">

                   </div>
                <%}%>
                <%if(i+1!=pizze.size()&&i==0){%>
                  <div class="contenitore" id="<%=i%>">
                     <input value="<%=pizze.get(i).getNome()%>"type="text" name="nomePizza" id="text" placeholder="Nome Pizza" size="20" class="NomePizza" aria-hidden="true" jsaction="mousedown:ntp.fkbxclk" required>
                    <input value="<%=pizze.get(i).getIngredienti()%>"type="text" name="nomeIngredienti" id="text" placeholder="Ingredienti" size="20" class="textarea" required>
                    <input value="<%=pizze.get(i).getPrezzo()%>"type="text" name="prezzo" id="text" placeholder="Prezzo" size="5" class="textarea" aria-hidden="true" jsaction="mousedown:ntp.fkbxclk" required >
                                        <input type="hidden" value="<%=pizze.get(i).getIdpizza()%>" name="id">

                    </div>
                <%}%>
                <%if(i+1!=pizze.size()&&i!=0){%>
                  <div class="contenitore" id="<%=i+"del"%>">
                     <input value="<%=pizze.get(i).getNome()%>"type="text" name="nomePizza" id="text" placeholder="Nome Pizza" size="20" class="NomePizza" aria-hidden="true" jsaction="mousedown:ntp.fkbxclk" required>
                    <input value="<%=pizze.get(i).getIngredienti()%>"type="text" name="nomeIngredienti" id="text" placeholder="Ingredienti" size="20" class="textarea" required>
                    <input value="<%=pizze.get(i).getPrezzo()%>"type="text" name="prezzo" id="text" placeholder="Prezzo" size="5" class="textarea" aria-hidden="true" jsaction="mousedown:ntp.fkbxclk" required >
                                        <input type="hidden" value="<%=pizze.get(i).getIdpizza()%>" name="id">

                    </div>
                <%}%>
                
            <%}%>
                        </div>

              <tr id="salva">
                <td>
                    <input name="Submit" id="salva"  type="submit" value="Salva" />
                </td>
            </tr>
        </form>
    </body>
    <script>
    $(document).on("click", ".bottone", function () {
        var id = $(this).closest('div').attr('id');
        var num = parseInt(id);
        num++;
        $(this).remove();
        var idDiv = num + "del";
        $('.bottoneDecr').remove();
        $('<div class="contenitore" id="att"><input type="text" name="nomePizza" id="text" placeholder="Nome Pizza" size="20" class="NomePizza" aria-hidden="true" jsaction="mousedown:ntp.fkbxclk" required> <input type="text" name="nomeIngredienti"  id="text" placeholder="Ingredienti" size="20" class="textarea" required><input type="text" name="prezzo" id="text" placeholder="Prezzo" size="5" class="margin" aria-hidden="true" jsaction="mousedown:ntp.fkbxclk" required pattern="[0-9]+([\,|\.][0-9]+)?"><input type="button" value="+"  class="bottone"><input type="button" value="-"  class="bottoneDecr" id="bottoneDecre"></div>').appendTo('.tabellamenu');
        $("#att").attr('id', idDiv);
        $("#bottoneDecre").attr('id', num);
        var n = "#" + num;
        console.log("idDecr =" + $(n).attr('id'));
    });
    $(document).on("click", ".bottoneDecr", function () {
        var idTemp = $(this).attr('id');
        console.log(idTemp);
        var id = $(this).closest('div').attr('id');
        var del = "#" + id;
        $(del).remove();
        var num = parseInt(idTemp);
        num--;
        if (num !== 0) {
            console.log("" + num);
            var idDivPrec = "#" + num + "del";
            $('<input type="button" value="+"  class="bottone"><input type="button" value="-"  class="bottoneDecr" id="bottoneDecre">').appendTo(idDivPrec);
            $("#bottoneDecre").attr('id', num);
            console.log("div attuale= " + $(idDivPrec).attr('id'));
        } else {
            var id = "#0";
            $('<input type="button" value="+"  class="bottone">').appendTo(id);
        }
    });
</script>
</html>