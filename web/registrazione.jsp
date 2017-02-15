<%-- 
    Document   : registrazione
    Created on : 14-feb-2017, 22.51.23
    Author     : Valerio
--%>

<%@ page language="java"
         session="true"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link href="css/Home.css" rel="stylesheet" type="text/css">
        <link href="css/prova.css" rel="stylesheet" type="text/css">
        <link href="css/RegistrazioneCliente.css" rel="stylesheet" type="text/css">
        <title>Registrazione</title>
    </head>
    <div align="center" id="contlogo"> <img src="logo.png" alt="Logo" id="logo" > </div>
    <ul>
        <li><a  href="Home.html">Home</a></li>
        <li><a href="Chi Siamo.html">Chi Siamo</a></li>
        <li class="spost"><a href="Login.html">Login</a></li>
        <li class="spost"><a href="RegistrazioneCliente.html" class="active">Registrazione</a></li>
    </ul>      
    <form name="modulo" id="form" action="RegistrazioneCliente" method="post">
        <div id="tabella">
            <table cellspacing="6">
                <tbody>
                    <tr>
                        <td><b>Tipo</b></td>
                        <td>
                            <input id= "Tipo" name="pizzeriacliente" type="radio" value="1" checked="checked">
                            <label class="radio-item"><b>Cliente</b></label>
                            <input id="Tipopizz" name ="pizzeriacliente" type="radio" value="0">
                            <label class="radio-item"><b>Pizzeria</b></label>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Nome</b></td>
                        <td>
                            <input class="input" id="Nome" name="nome" type="text"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="errore" id="erroreNome">il campo non pu� essere lasciato vuoto</span>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Cognome</b></td>
                        <td>
                            <input class="input" id="Cognome" name="cognome" type="text"/>
                        </td>
                    </tr><tr>
                        <td>
                            <span class="errore" id="erroreCognome">il campo non pu� essere lasciato vuoto</span>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Data di nascita</b></td>
                        <td>		 
                            <input class="input" id="Giorno" style="width: 30px" type="text" name="giorno"/> /
                            <input class="input" id="Mese" style="width: 30px" type="text" name="mese"/> /
                            <input class="input" id="Anno" style="width: 50px" type="text" name="anno"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="errore" id="erroreData">controlla la tua data di nascita(devi avere almeno 13 anni per iscriverti)</span>
                        </td>
                    </tr>                        
                    <tr>
                        <td>
                            <span class="errore" id="erroreCodice">il campo non pu� essere lasciato vuoto</span>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Provincia</b></td>

                        <td>
                            <select class="input" name="provincia">
                                <option value="Agrigento">AGRIGENTO</option><option value="Alessandria">ALESSANDRIA</option><option value="Ancona">ANCONA</option><option value="Aosta">AOSTA</option><option value="Arezzo">AREZZO</option><option value="Ascoli Piceno"> ASCOLI PICENO</option><option value="Asti">ASTI</option><option value="Avellino">AVELLINO</option><option value="Bari">BARI</option><option value="Barletta-Andria-Trani">BARLETTA-ANDRIA-TRANI</option><option value="Belluno">BELLUNO</option><option value="Benevento">BENEVENTO</option><option value="Bergamo">BERGAMO</option><option value="Biella">BIELLA</option><option value="Bologna">BOLOGNA</option><option value="Bolzano">BOLZANO</option><option value="Brescia">BRESCIA</option><option value="Brindisi">BRINDISI</option><option value="Cagliari">CAGLIARI</option><option value="Caltanissetta">CALTANISSETTA</option><option value="Campobasso">CAMPOBASSO</option><option value="Carbonia-Iglesias">CARBONIA-IGLESIAS</option><option value="Caserta">CASERTA</option><option value="Catania">CATANIA</option><option value="Catanzaro">CATANZARO</option><option value="Chieti">CHIETI</option><option value="Como">COMO</option><option value="Cosenza">COSENZA</option><option value="Cremona">CREMONA</option><option value="Crotone">CROTONE</option><option value="Cuneo">CUNEO</option><option value="Enna">ENNA</option><option value="Fermo">FERMO</option><option value="Ferrara">FERRARA</option><option value="Firenze">FIRENZE</option><option value="Foggia">FOGGIA</option><option value="Forl�-Cesena">FORLI-CESENA</option><option value="Frosinone">FROSINONE</option><option value="Genova">GENOVA</option><option value="Gorizia">GORIZIA</option><option value="Grosseto">GROSSETO</option><option value="Imperia">IMPERIA</option><option value="Isernia">ISERNIA</option><option value="La Spezia">LA SPEZIA</option><option value="L'Aquila">L'AQUILA</option><option value="Latina">LATINA</option><option value="Lecce">LECCE</option><option value="Lecco">LECCO</option><option value="Livorno">LIVORNO</option><option value="Lodi">LODI</option><option value="Lucca">LUCCA</option><option value="Macerata">MACERATA</option><option value="Mantova">MANTOVA</option><option value="Massa-Carrara">MASSA CARRARA</option><option value="Matera">MATERA</option><option value="Medio Campidano">MEDIO CAMPIDANO</option><option value="Messina">MESSINA</option><option value="Milano">MILANO</option><option value="Modena">MODENA</option><option value="Monza e della Brianza">MONZA E DELLA BRIANZA</option><option value="Napoli">NAPOLI</option><option value="Novara">NOVARA</option><option value="Nuoro">NUORO</option><option value="Ogliastra">OGLIASTRA</option><option value="Olbia-Tempio">OLBIA-TEMPIO</option><option value="Oristano">ORISTANO</option><option value="Padova">PADOVA</option><option value="Palermo">PALERMO</option><option value="Parma">PARMA</option><option value="Pavia">PAVIA</option><option value="Perugia">PERUGIA</option><option value="Pesaro e Urbino">PESARO E URBINO</option><option value="Pescara">PESCARA</option><option value="Piacenza">PIACENZA</option><option value="Pisa">PISA</option><option value="Pistoia">PISTOIA</option><option value="Pordenone">PORDENONE</option><option value="Potenza">POTENZA</option><option value="Prato">PRATO</option><option value="Ragusa">RAGUSA</option><option value="Ravenna">RAVENNA</option><option value="Reggio Calabria">REGGIO CALABRIA</option><option value="Reggio Emilia">REGGIO EMILIA</option><option value="Rieti">RIETI</option><option value="Rimini">RIMINI</option><option value="Roma">ROMA</option><option value="Rovigo">ROVIGO</option><option value="Salerno">SALERNO</option><option value="Sassari">SASSARI</option><option value="Savona">SAVONA</option><option value="Siena">SIENA</option><option value="Siracusa">SIRACUSA</option><option value="Sondrio">SONDRIO<option value="Taranto">TARANTO</option><option value="Teramo">TERAMO</option><option value="TERNI">TERNI</option><option value="TORINO">TORINO</option><option value="TRAPANI">TRAPANI</option><option value="TRENTO">TRENTO</option><option value="TREVISO">TREVISO</option><option value="TRIESTE">TRIESTE</option><option value="UDINE">UDINE</option><option value="VARESE">VARESE</option><option value="VENEZIA">VENEZIA</option><option value="VERBANO-CUSIO-OSSOLA">VERBANO-CUSIO-OSSOLA</option><option value="VERCELLI">VERCELLI</option><option value="VERONA">VERONA</option><option value="VIBO VALENTIA">VIBO VALENTIA</option><option value="VICENZA">VICENZA</option><option value="VITERBO">VITERBO</option> </option>
                            </select>
                        </td>
                    </tr>
                    <tr>

                    </tr>
                <td><b>Comune di residenza</b></td>
                <td>
                    <select class="input" name="paese">
                        <option value="Agrigento">AGRIGENTO</option><option value="Alessandria">ALESSANDRIA</option><option value="Ancona">ANCONA</option><option value="Aosta">AOSTA</option><option value="Arezzo">AREZZO</option><option value="Ascoli Piceno"> ASCOLI PICENO</option><option value="Asti">ASTI</option><option value="Avellino">AVELLINO</option><option value="Bari">BARI</option><option value="Barletta-Andria-Trani">BARLETTA-ANDRIA-TRANI</option><option value="Belluno">BELLUNO</option><option value="Benevento">BENEVENTO</option><option value="Bergamo">BERGAMO</option><option value="Biella">BIELLA</option><option value="Bologna">BOLOGNA</option><option value="Bolzano">BOLZANO</option><option value="Brescia">BRESCIA</option><option value="Brindisi">BRINDISI</option><option value="Cagliari">CAGLIARI</option><option value="Caltanissetta">CALTANISSETTA</option><option value="Campobasso">CAMPOBASSO</option><option value="Carbonia-Iglesias">CARBONIA-IGLESIAS</option><option value="Caserta">CASERTA</option><option value="Catania">CATANIA</option><option value="Catanzaro">CATANZARO</option><option value="Chieti">CHIETI</option><option value="Como">COMO</option><option value="Cosenza">COSENZA</option><option value="Cremona">CREMONA</option><option value="Crotone">CROTONE</option><option value="Cuneo">CUNEO</option><option value="Enna">ENNA</option><option value="Fermo">FERMO</option><option value="Ferrara">FERRARA</option><option value="Firenze">FIRENZE</option><option value="Foggia">FOGGIA</option><option value="Forl�-Cesena">FORLI-CESENA</option><option value="Frosinone">FROSINONE</option><option value="Genova">GENOVA</option><option value="Gorizia">GORIZIA</option><option value="Grosseto">GROSSETO</option><option value="Imperia">IMPERIA</option><option value="Isernia">ISERNIA</option><option value="La Spezia">LA SPEZIA</option><option value="L'Aquila">L'AQUILA</option><option value="Latina">LATINA</option><option value="Lecce">LECCE</option><option value="Lecco">LECCO</option><option value="Livorno">LIVORNO</option><option value="Lodi">LODI</option><option value="Lucca">LUCCA</option><option value="Macerata">MACERATA</option><option value="Mantova">MANTOVA</option><option value="Massa-Carrara">MASSA CARRARA</option><option value="Matera">MATERA</option><option value="Medio Campidano">MEDIO CAMPIDANO</option><option value="Messina">MESSINA</option><option value="Milano">MILANO</option><option value="Modena">MODENA</option><option value="Monza e della Brianza">MONZA E DELLA BRIANZA</option><option value="Napoli">NAPOLI</option><option value="Novara">NOVARA</option><option value="Nuoro">NUORO</option><option value="Ogliastra">OGLIASTRA</option><option value="Olbia-Tempio">OLBIA-TEMPIO</option><option value="Oristano">ORISTANO</option><option value="Padova">PADOVA</option><option value="Palermo">PALERMO</option><option value="Parma">PARMA</option><option value="Pavia">PAVIA</option><option value="Perugia">PERUGIA</option><option value="Pesaro e Urbino">PESARO E URBINO</option><option value="Pescara">PESCARA</option><option value="Piacenza">PIACENZA</option><option value="Pisa">PISA</option><option value="Pistoia">PISTOIA</option><option value="Pordenone">PORDENONE</option><option value="Potenza">POTENZA</option><option value="Prato">PRATO</option><option value="Ragusa">RAGUSA</option><option value="Ravenna">RAVENNA</option><option value="Reggio Calabria">REGGIO CALABRIA</option><option value="Reggio Emilia">REGGIO EMILIA</option><option value="Rieti">RIETI</option><option value="Rimini">RIMINI</option><option value="Roma">ROMA</option><option value="Rovigo">ROVIGO</option><option value="Salerno">SALERNO</option><option value="Sassari">SASSARI</option><option value="Savona">SAVONA</option><option value="Siena">SIENA</option><option value="Siracusa">SIRACUSA</option><option value="Sondrio">SONDRIO<option value="Taranto">TARANTO</option><option value="Teramo">TERAMO</option><option value="TERNI">TERNI</option><option value="TORINO">TORINO</option><option value="TRAPANI">TRAPANI</option><option value="TRENTO">TRENTO</option><option value="TREVISO">TREVISO</option><option value="TRIESTE">TRIESTE</option><option value="UDINE">UDINE</option><option value="VARESE">VARESE</option><option value="VENEZIA">VENEZIA</option><option value="VERBANO-CUSIO-OSSOLA">VERBANO-CUSIO-OSSOLA</option><option value="VERCELLI">VERCELLI</option><option value="VERONA">VERONA</option><option value="VIBO VALENTIA">VIBO VALENTIA</option><option value="VICENZA">VICENZA</option><option value="VITERBO">VITERBO</option> </option>
                    </select>
                </td>
                <tr>

                </tr>
                <tr>
                    <td><b>Indirizzo</b></td>
                    <td>
                        <input class="input" id="Indirizzo" name="indirizzo" type="text"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="errore" id="erroreIndirizzo">il campo non pu� essere lasciato vuoto</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="errore" id="erroreCAP">controlla il campo CAP</span>
                    </td>
                </tr>
                <tr>
                    <td><b>Telefono</b></td>
                    <td>
                        <input class="input" id="Numero" name="num_telefono" type="text"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="errore" id="erroreTelefono">controlla che il tuo numero di telefono sia corretto</span>
                    </td>
                </tr>
                <tr>
                    <td><b>Email</b></td>
                    <td>
                        <input class="input" id="Email" name="email" type="text"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="errore" id="erroreEmail">il campo non pu� essere lasciato vuoto</span>
                    </td>
                </tr>
                <tr>
                    <td><b>Password</b></td>
                    <td>
                        <input  class="input" id="Password" name="password" type="text"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="errore" id="errorePassword">la password deve essere compresa tra 4 e 10 caratteri</span>
                    </td>
                </tr>
                <tr>
                    <td><b>Conferma Password</b></td>
                    <td>
                        <input  class="input" id="Conferma" name="conferma" type="text"/>
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
                        <input type="submit" value="submit">						
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>


