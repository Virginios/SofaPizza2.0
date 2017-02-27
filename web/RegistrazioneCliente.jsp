<%-- 
    Document   : error
    Created on : 18-feb-2017, 13.34.42
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
        <script type="text/javascript" src="js/getComuni.js">
        </script>
        <script type="text/javascript" src="js/autocomplete.js">
        </script>
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <link href="css/RegistrazioneCliente.css" rel="stylesheet" type="text/css">
    <div align="center" id="contlogo"> <img src="/img/logo.png" alt="Logo" id="logo" > </div>

<ul class="menu">
                <li><a href="Home.jsp">Home</a></li>
                
                 
                   
                                
                <li><a href="Chi Siamo.html">Chi Siamo</a></li>
                <li class="spost"><a >Login</a><ul id="containerComaparsaLogin">
                 <li id="liLoginCliente"><a href="LoginCliente.jsp" id="comparsaLoginCliente">Cliente</a></li>
                 <li id="liLoginPizzeria"><a href="LoginPizzeria.jsp" id="comparsaLoginPizzeria">Pizzeria</a></li>
                </ul></li>
                <li class="spost"><a class="active" href="">Registrazione</a><ul id="containerComaparsaRegistrazione">
                 <li id="liRegistrazioneCliente"><a href="RegistrazioneCliente.jsp" id="comparsaRegistrazioneCliente">Cliente</a></li>
                 <li id="liRegistrazionePizzeria"><a href="RegistrazionePizzeria.jsp" id="comparsaRegistrazionePizzeria">Pizzeria</a></li>
     </ul></li>
            </ul>      

</head>
<body>
    <div id="container">
    <form name="modulo" id="form" action="/RegistrazioneCliente" method="post" onSubmit="return controlForm()">
        <div id="tabella">
            <table cellspacing="6">
                <tbody>
                    <tr>
                        <td><b>Nome</b></td>
                        <td>
                            <input class="input" id="Nome" name="nome" type="text" required pattern="[A-Za-z\s]{3,45}" 
                                   placeholder=" nome" title="nome utente (dai 3 ai 45 caratteri)" />
                        </td>
                    </tr>
                    <tr>
                        <td><b>Cognome</b></td>
                        <td>
                            <input class="input" id="Cognome"  name="cognome" type="text" required pattern="[A-Za-z\s]{3,45}" 
                                   placeholder=" cognome" title="cognome  utente (dai 3 ai 45 caratteri)"/>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Data di nascita</b></td>
                        <td>		 
                            <input class="input" id="Giorno"  style="width: 30px" type="text" name="giorno" required pattern="[0-9]{2}" placeholder="es:01" title="giorno di nascita( solo due caratteri)"/> /
                            <input class="input" id="Mese"   style="width: 30px" type="text" name="mese" required pattern="[0-9]{2}"  placeholder="es:01" title="mese di nascita( solo due caratteri)"/> /
                            <input class="input" id="Anno" style="width: 50px" type="text" name="anno" required pattern="[0-9]{4}"  placeholder="es:1981" title="mese di nascita( solo 4 caratteri)"/>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Provincia</b></td>

                        <td>
                            <select class="input" name="provincia" id="provincia">
                                <option value="Agrigento">AGRIGENTO</option><option value="Alessandria">ALESSANDRIA</option><option value="Ancona">ANCONA</option><option value="Aosta">AOSTA</option><option value="Arezzo">AREZZO</option><option value="Ascoli Piceno"> ASCOLI PICENO</option><option value="Asti">ASTI</option><option value="Avellino">AVELLINO</option><option value="Bari">BARI</option><option value="Barletta-Andria-Trani">BARLETTA-ANDRIA-TRANI</option><option value="Belluno">BELLUNO</option><option value="Benevento">BENEVENTO</option><option value="Bergamo">BERGAMO</option><option value="Biella">BIELLA</option><option value="Bologna">BOLOGNA</option><option value="Bolzano">BOLZANO</option><option value="Brescia">BRESCIA</option><option value="Brindisi">BRINDISI</option><option value="Cagliari">CAGLIARI</option><option value="Caltanissetta">CALTANISSETTA</option><option value="Campobasso">CAMPOBASSO</option><option value="Carbonia-Iglesias">CARBONIA-IGLESIAS</option><option value="Caserta">CASERTA</option><option value="Catania">CATANIA</option><option value="Catanzaro">CATANZARO</option><option value="Chieti">CHIETI</option><option value="Como">COMO</option><option value="Cosenza">COSENZA</option><option value="Cremona">CREMONA</option><option value="Crotone">CROTONE</option><option value="Cuneo">CUNEO</option><option value="Enna">ENNA</option><option value="Fermo">FERMO</option><option value="Ferrara">FERRARA</option><option value="Firenze">FIRENZE</option><option value="Foggia">FOGGIA</option><option value="Forl�-Cesena">FORLI-CESENA</option><option value="Frosinone">FROSINONE</option><option value="Genova">GENOVA</option><option value="Gorizia">GORIZIA</option><option value="Grosseto">GROSSETO</option><option value="Imperia">IMPERIA</option><option value="Isernia">ISERNIA</option><option value="La Spezia">LA SPEZIA</option><option value="L'Aquila">L'AQUILA</option><option value="Latina">LATINA</option><option value="Lecce">LECCE</option><option value="Lecco">LECCO</option><option value="Livorno">LIVORNO</option><option value="Lodi">LODI</option><option value="Lucca">LUCCA</option><option value="Macerata">MACERATA</option><option value="Mantova">MANTOVA</option><option value="Massa-Carrara">MASSA CARRARA</option><option value="Matera">MATERA</option><option value="Medio Campidano">MEDIO CAMPIDANO</option><option value="Messina">MESSINA</option><option value="Milano">MILANO</option><option value="Modena">MODENA</option><option value="Monza e della Brianza">MONZA E DELLA BRIANZA</option><option value="Napoli">NAPOLI</option><option value="Novara">NOVARA</option><option value="Nuoro">NUORO</option><option value="Ogliastra">OGLIASTRA</option><option value="Olbia-Tempio">OLBIA-TEMPIO</option><option value="Oristano">ORISTANO</option><option value="Padova">PADOVA</option><option value="Palermo">PALERMO</option><option value="Parma">PARMA</option><option value="Pavia">PAVIA</option><option value="Perugia">PERUGIA</option><option value="Pesaro e Urbino">PESARO E URBINO</option><option value="Pescara">PESCARA</option><option value="Piacenza">PIACENZA</option><option value="Pisa">PISA</option><option value="Pistoia">PISTOIA</option><option value="Pordenone">PORDENONE</option><option value="Potenza">POTENZA</option><option value="Prato">PRATO</option><option value="Ragusa">RAGUSA</option><option value="Ravenna">RAVENNA</option><option value="Reggio Calabria">REGGIO CALABRIA</option><option value="Reggio Emilia">REGGIO EMILIA</option><option value="Rieti">RIETI</option><option value="Rimini">RIMINI</option><option value="Roma">ROMA</option><option value="Rovigo">ROVIGO</option><option value="Salerno">SALERNO</option><option value="Sassari">SASSARI</option><option value="Savona">SAVONA</option><option value="Siena">SIENA</option><option value="Siracusa">SIRACUSA</option><option value="Sondrio">SONDRIO<option value="Taranto">TARANTO</option><option value="Teramo">TERAMO</option><option value="TERNI">TERNI</option><option value="TORINO">TORINO</option><option value="TRAPANI">TRAPANI</option><option value="TRENTO">TRENTO</option><option value="TREVISO">TREVISO</option><option value="TRIESTE">TRIESTE</option><option value="UDINE">UDINE</option><option value="VARESE">VARESE</option><option value="VENEZIA">VENEZIA</option><option value="VERBANO-CUSIO-OSSOLA">VERBANO-CUSIO-OSSOLA</option><option value="VERCELLI">VERCELLI</option><option value="VERONA">VERONA</option><option value="VIBO VALENTIA">VIBO VALENTIA</option><option value="VICENZA">VICENZA</option><option value="VITERBO">VITERBO</option> </option>
                            </select>
                        </td>
                    </tr>
                    <tr>
     
                    </tr>
                <td><b>Comune di residenza</b></td>
                <td>
                    <select class="input" name="paese" id="comune">
                        <option value="Agrigento">AGRIGENTO</option><option value="Alessandria della Rocca">ALESSANDRIA DELLA ROCCA</option><option value="Aragona">ARAGONA</option><option value="Bivona">BIVONA</option><option value="Burgio">BURGIO</option><option value="Calamonaci">CALAMONACI</option><option value="Caltabellotta">CALTABELLOTTA</option><option value="Camastra">CAMASTRA</option><option value="Cammarata">CAMMARATA</option><option value="Campobello di Licata">CAMPOBELLO DI LICATA</option><option value="CANICATTI'">CANICATTI'</option><option value="Casteltermini">CASTELTERMINI</option><option value="Castrofilippo">CASTROFILIPPO</option><option value="Cattolica">CATTOLICA</option><option value="Eraclea">ERACLEA</option><option value="Cianciana">CIANCIANA</option><option value="Comitini">COMITINI</option><option value="Favara">FAVARA</option><option value="Grotte">GROTTE</option><option value="Joppolo">JOPPOLO</option><option value="Giancaxio">GIANCAXIO</option><option value="Lampedusa e Linosa">LAMPEDUSA E LINOSA</option><option value="Licata">LICATA</option><option value="Lucca Sicula">LUCCA SICULA</option><option value="Menfi">MENFI</option><option value="Montallegro">MONTALLEGRO</option><option value="Montevago">Montevago</option><option value="Naro">NARO</option><option value="Palma di Montechiaro">PALMA DI MONTECHIARO</option><option value="Porto Empedocle">PORTO EMPEDOCLE</option><option value="Racalmuto">RACALMUTO</option><option value="Raffadali">RAFFADALI</option><option value="Ravanusa">RAVANUSA</option><option value="Realmonte">REALMONTE</option><option value="Ribera">RIBERA</option><option value="Sambuca di Sicilia">SAMBUCA DI SICILIA</option><option value="San Biagio Platani">San Biagio Platani</option><option value="San Giovanni Gemini">SAN GIOVANNI GEMINI</option><option value="Santa Elisabetta">SANTA ELISABETTA</option><option value="Santa Margherita di Belice">SANTA MARGHERITA DI BELICE</option><option value="Sant'Angelo Muxaro">SANT'ANGELO MUXARO</option><option value="Santo Stefano">SANTO STEFANO</option><option value="Quisquina">QUISQUINA</option><option value="Sciacca">SCIACCA</option><option value="Siculiana">SICULIANA</option><option value="Villafranca Sicula">VILLAFRANCA SICULA</option>
                    </select> 
                </td>   
                <tr>
                    
                </tr>
                <tr>
                    <td><b>Indirizzo</b></td>
                    <td>
                        <input class="input" id="Indirizzo" name="indirizzo" type="text" required  pattern="[A-Za-z0-9\s]{3,45}" 
                                   placeholder=" indirizzo" title="via (dai 3 ai 45 caratteri)"/>
                    </td>
                </tr>
                <tr>
                    <td><b>Telefono</b></td>
                    <td>
                        <input class="input" id="Numero" name="numeroTelefono" type="text" required 
                               pattern="[0-9]{10}" placeholder="es:0815143536" title="giorno di nascita( solo due caratteri)"/>
                    </td>
                </tr>
                <tr>
                    <td><b>Email</b></td>
                    <td>
                        <input class="input" id="Email" name="email" type="text" required 
                               placeholder="Indirizzo e-mail"
                               pattern="\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\b" 
                               title="Indirizzo di posta elettronica" />
                    </td>
                </tr>
                <tr>
                    <td><b>Password</b></td>
                    <td>
                        <input  class="input" id="Password" name="password" type="password" required
                                placeholder="Password" pattern="[^\s]{4,8}" 
                                title="Password (dai 4 a 8 caratteri alfanumerici e speciali, spazi esclusi)"/>
                    </td>
                </tr>
                <tr>
                    <td><b>Conferma Password</b></td>
                    <td>
                        <input  class="input" id="Conferma" name="conferma" type="password" required 
                                placeholder=" Password" pattern="[^\s]{4,8}" 
                                title=" Conferma password (dai 4 a 8 caratteri alfanumerici e speciali, spazi esclusi)"
                                onblur="checkpassword()" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="errore" id="erroreConfermaPassword">le password non corrispondono</span>
                    </td>
                </tr>
                <tr id ="contReg">
                    <td></td>
                    <td>
                        <input name="Submit" id="registrati"  type="submit" value="Registrati">
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </form>
    </div>

</body>
</html>
