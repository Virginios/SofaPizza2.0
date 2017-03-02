<%-- 
    Document   : ModificaProfClienteErrato
    Created on : 25-feb-2017, 0.21.12
    Author     : Valerio
--%>

<%@page import="DataAccessSito.Pizzeria"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DataAccessSito.DataAccessFile"%>
<%@page import="DataAccessSito.Cliente"%>
<%@page import="DataAccessSito.DataAccessCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Pizzeria c = (Pizzeria) session.getAttribute("pizzeria");
    DataAccessFile daof = new DataAccessFile();
    ArrayList<String> comuni = daof.getComuni(c.getProvincia());
%>
<!DOCTYPE html>
<html> 
    <head>
        <meta charset="utf-8">
        <script type="text/javascript" src="js/checkpassword.js">
            </script>
            <script type="text/javascript" src="js/controlForm.js">
        </script>
           <script type="text/javascript" src="js/jquery.js">
        </script>
        <script type="text/javascript" src="js/getComuni.js">
        </script>
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <link href="css/ModificaProfilo.css" rel="stylesheet" type="text/css">
        <title>Registrazione</title>
    </head>
    <div align="center" id="contlogo"><a href="Home.jsp"> <img src="logo.png" alt="Logo" id="logo"></a> </div>
    <ul class="menu">
        <li><a  href="Home.jsp">Home</a></li>
        <li><a href="ChiSiamo.jsp">Chi Siamo</a></li>
        <li class="spost"><a href="Login.jsp">Login</a></li>
        <li class="spost"><a href="RegistrazioneCliente.jsp" class="active">Registrazione</a></li>
    </ul>      
    <form name="modulo" id="form" action="/ProfiloCliente" method="post" onSubmit="return controlForm()">
        <div id="tabella">
            <table cellspacing="6">
                <tbody>
                    <tr>
                        <td><b>Nome</b></td>
                        <td>
                            <input class="input" id="Nome" name="nome" type="text" required pattern="[A-Za-z\s]{3,45}" 
                                   placeholder=" nome" title="nome utente (dai 3 ai 45 caratteri)" value="<%=c.getNome()%>"/>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Provincia</b></td>

                        <td>
                            <select class="input" name="provincia" id="provincia">
                                <option value="<%=c.getProvincia()%>"><%=c.getProvincia()%></option> <option value="Agrigento">AGRIGENTO</option><option value="Alessandria">ALESSANDRIA</option><option value="Ancona">ANCONA</option><option value="Aosta">AOSTA</option><option value="Arezzo">AREZZO</option><option value="Ascoli Piceno"> ASCOLI PICENO</option><option value="Asti">ASTI</option><option value="Avellino">AVELLINO</option><option value="Bari">BARI</option><option value="Barletta-Andria-Trani">BARLETTA-ANDRIA-TRANI</option><option value="Belluno">BELLUNO</option><option value="Benevento">BENEVENTO</option><option value="Bergamo">BERGAMO</option><option value="Biella">BIELLA</option><option value="Bologna">BOLOGNA</option><option value="Bolzano">BOLZANO</option><option value="Brescia">BRESCIA</option><option value="Brindisi">BRINDISI</option><option value="Cagliari">CAGLIARI</option><option value="Caltanissetta">CALTANISSETTA</option><option value="Campobasso">CAMPOBASSO</option><option value="Carbonia-Iglesias">CARBONIA-IGLESIAS</option><option value="Caserta">CASERTA</option><option value="Catania">CATANIA</option><option value="Catanzaro">CATANZARO</option><option value="Chieti">CHIETI</option><option value="Como">COMO</option><option value="Cosenza">COSENZA</option><option value="Cremona">CREMONA</option><option value="Crotone">CROTONE</option><option value="Cuneo">CUNEO</option><option value="Enna">ENNA</option><option value="Fermo">FERMO</option><option value="Ferrara">FERRARA</option><option value="Firenze">FIRENZE</option><option value="Foggia">FOGGIA</option><option value="Forl�-Cesena">FORLI-CESENA</option><option value="Frosinone">FROSINONE</option><option value="Genova">GENOVA</option><option value="Gorizia">GORIZIA</option><option value="Grosseto">GROSSETO</option><option value="Imperia">IMPERIA</option><option value="Isernia">ISERNIA</option><option value="La Spezia">LA SPEZIA</option><option value="L'Aquila">L'AQUILA</option><option value="Latina">LATINA</option><option value="Lecce">LECCE</option><option value="Lecco">LECCO</option><option value="Livorno">LIVORNO</option><option value="Lodi">LODI</option><option value="Lucca">LUCCA</option><option value="Macerata">MACERATA</option><option value="Mantova">MANTOVA</option><option value="Massa-Carrara">MASSA CARRARA</option><option value="Matera">MATERA</option><option value="Medio Campidano">MEDIO CAMPIDANO</option><option value="Messina">MESSINA</option><option value="Milano">MILANO</option><option value="Modena">MODENA</option><option value="Monza e della Brianza">MONZA E DELLA BRIANZA</option><option value="Napoli">NAPOLI</option><option value="Novara">NOVARA</option><option value="Nuoro">NUORO</option><option value="Ogliastra">OGLIASTRA</option><option value="Olbia-Tempio">OLBIA-TEMPIO</option><option value="Oristano">ORISTANO</option><option value="Padova">PADOVA</option><option value="Palermo">PALERMO</option><option value="Parma">PARMA</option><option value="Pavia">PAVIA</option><option value="Perugia">PERUGIA</option><option value="Pesaro e Urbino">PESARO E URBINO</option><option value="Pescara">PESCARA</option><option value="Piacenza">PIACENZA</option><option value="Pisa">PISA</option><option value="Pistoia">PISTOIA</option><option value="Pordenone">PORDENONE</option><option value="Potenza">POTENZA</option><option value="Prato">PRATO</option><option value="Ragusa">RAGUSA</option><option value="Ravenna">RAVENNA</option><option value="Reggio Calabria">REGGIO CALABRIA</option><option value="Reggio Emilia">REGGIO EMILIA</option><option value="Rieti">RIETI</option><option value="Rimini">RIMINI</option><option value="Roma">ROMA</option><option value="Rovigo">ROVIGO</option><option value="Salerno">SALERNO</option><option value="Sassari">SASSARI</option><option value="Savona">SAVONA</option><option value="Siena">SIENA</option><option value="Siracusa">SIRACUSA</option><option value="Sondrio">SONDRIO<option value="Taranto">TARANTO</option><option value="Teramo">TERAMO</option><option value="TERNI">TERNI</option><option value="TORINO">TORINO</option><option value="TRAPANI">TRAPANI</option><option value="TRENTO">TRENTO</option><option value="TREVISO">TREVISO</option><option value="TRIESTE">TRIESTE</option><option value="UDINE">UDINE</option><option value="VARESE">VARESE</option><option value="VENEZIA">VENEZIA</option><option value="VERBANO-CUSIO-OSSOLA">VERBANO-CUSIO-OSSOLA</option><option value="VERCELLI">VERCELLI</option><option value="VERONA">VERONA</option><option value="VIBO VALENTIA">VIBO VALENTIA</option><option value="VICENZA">VICENZA</option><option value="VITERBO">VITERBO</option> </option>
                            </select>
                        </td>
                    </tr>
                    <tr>
     
                    </tr>
                <td><b>Comune di residenza</b></td>
                <td>
                    <select class="input" name="paese" id="comune">
                        <option value="<%=c.getPaese()%>"><%=c.getPaese()%></option>
                        <%for(int i=0;i<comuni.size();i++){%>
                        <option value="<%=comuni.get(i)%>"><%=comuni.get(i)%></option>
                        <%}%>
                    </select> 
                </td>   
                <tr>
                    
                </tr>
                <tr>
                    <td><b>Indirizzo</b></td>
                    <td>
                        <input class="input" id="Indirizzo" name="indirizzo" type="text" required  pattern="[A-Za-z0-9\s]{3,45}" 
                                   placeholder=" indirizzo" title="via (dai 3 ai 45 caratteri)" value="<%=c.getVia()%>"/>
                    </td>
                </tr>
                <tr class="hidden">
                    <td><b>Vecchia Password</b></td>
                    <td>
                        <input  class="input" id="VecchiaPassword" name="VecchiaPassword" type="text" required
                                placeholder="Password" pattern="[^\s]{4,8}" 
                                title="Password (dai 4 a 8 caratteri alfanumerici e speciali, spazi esclusi)" value="<%=c.getPassword()%>"/>
                    </td>
                </tr>
                <tr >
                    <td>
                        <span id="errori" id="erroreVecchiaPassword">password vecchia errata</span>
                    </td>
                </tr>
                <tr class="hidden">
                    <td><b>Nuova Password</b></td>
                    <td>
                        <input  class="input" id="Conferma" name="NuovaPassword" type="text" required 
                                placeholder=" Password" pattern="[^\s]{4,8}" 
                                title=" Conferma password (dai 4 a 8 caratteri alfanumerici e speciali, spazi esclusi)"
                                onblur="checkpassword()" />
                    </td>
                </tr>
                 <tr class="hidden">
                    <td><b>Conferma Nuova Password</b></td>
                    <td>
                        <input  class="input" id="Password" name="ConfermaNuovaPassword" type="text" required
                                placeholder="Password" pattern="[^\s]{4,8}" 
                                title="Password (dai 4 a 8 caratteri alfanumerici e speciali, spazi esclusi)"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="errore" id="erroreConfermaPassword">le password non corrispondono</span>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input name="mostraPassword" id="visualizzaPassword"  type="button" value="modifica password" onclick="funct()">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input name="Submit" id="registrati"  type="submit" value="salva">
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <script>
          function funct(){
              $("#VecchiaPassword").val("");
            $(".hidden").show();
          }  
        </script>
    </form>
