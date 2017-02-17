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
        <script type="text/javascript" src="js/checkpassworda.js">
        </script>
        <script type="text/javascript" src="js/invioComuni.js">
        </script>
        <script type="text/javascript" src="js/controlForm.js">
        </script>
         <script type="text/javascript" src="js/jquery.js">
        </script>
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
    <form name="modulo" id="form" action="RegistrazioneCliente" method="post" onSubmit="return controlForm()">
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
                            <input class="input" id="Nome" name="nome" type="text" required pattern="[A-Za-z\s]{3,45}" 
                                   placeholder=" nome" itle="nome utente (dai 3 ai 45 caratteri)" />
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
                            <select id="selectcat" name="categoryselected">
                                <option value="" class="rhth">Select Category</option>
                                <option class="edibles" value="Edible Oils" id="selectionone">Edible Oils</option>
                                <option class="vegfats" value="Vegetable Cooking Fats" id="selectiontwo">Vegetable Cooking Fats</option>
                                <option value="Personal Care" id="selectionthree">Personal Care</option>
                                <option class="marga" value="Margarines" id="selectionfour">Margarines</option>
                                <option class='bak' value="Baking" id="selectionfive">Baking</option>
                                <option class="launddet" value="Laundry Detergents" id="selectionsix">Laundry Detergents</option>
                                <option class='laundsop' value="Laundry Soaps" id="selectionseven">Laundry Soaps</option>
                            </select>
                        </td>
                    </tr>
                    <tr>

                    </tr>
                <td><b>Comune di residenza</b></td>
                <td>
                    <select id="selectprod" name="articleID">
                        <option value="" class="rhth23">Select Product</option>
                        <option value="elianto" class="selectors edibles">Elianto</option>
                        <option value="ufuta" class="hidden selectors edibles">Ufuta</option>
                        <option value="bahari-fry" class="selectors edibles">Bahari Fry</option>
                        <option value="golden-fry" class="selectors edibles">Golden Fry</option>
                        <option value="olive-gold" class="selectors edibles">Olive Gold</option>
                        <option value="soya-gold" class="selectors edibles">Soya Gold</option>
                        <option value="sun-gold" class="selectors edibles">Sun Gold</option>
                        <option value="chipo-pus-3" class="selectors vegfats">Chipo Plus 3</option>
                        <option value="cowboy" class="selectors vegfats">Cowboy</option>
                        <option value="kimbo" class="selectors vegfats">Kimbo</option>
                        <option value="mallo" class="selectors vegfats">Mallo</option>
                        <option value="veebol-vegetable-cooking-fat" class="selectors vegfats">Veebol Vegetable Fat</option>
                        <option value="yello" class="selectors vegfats">Yello</option>
                        <option value="pure-natural-active-man" class="selectors percare">Pure & Natural Active-Man</option>
                        <option value="pure-natural-beauty-soap" class="selectors percare">Pure & Natural Beauty Soap</option>
                        <option value="biddy" class="selectors marga">Biddy&#39;s</option>
                        <option value="gold-band-margarine" class="selectors marga">Gold Band Margarine</option>
                        <option value="veebol-pastry" class="selectors marga">Veebool Pastry</option>
                        <option value="bake-rite" class="selectors bak">Bake&#39;rite</option>
                        <option value="mariandazi" class="selectors bak">Mariandazi</option>
                        <option value="gental-hand-wash" class="selectors launddet">Gental Hand Wash</option>
                        <option value="powerboy-pro-activ-liquid-detergent" class="selectors launddet">Powerboy Pro-Activ Liquid Detergent</option>
                        <option value="powerboy-washing-powder" class="selectors launddet">Powerboy Washing Powder</option>
                        <option value="pure-and-natural-soap-flakes" class="selectors launddet">Pure And Natural Soap Flakes</option>
                        <option value="bidco-cream" class="selectors laundsop">Bidco Cream</option>
                        <option value="bidco-idp" class="selectors laundsop">BIDCO IDP</option>
                        <option value="kuku" class="selectors laundsop">KUKU</option>
                        <option value="msafi" class="selectors laundsop">Msafi</option>
                        <option value="nuru-lemon-fresh-scouring-powder" class="selectors laundsop">Nuru Lemon Fresh Scouring Powder</option>
                        <option value="nuru-multipurpose-soap" class="selectors laundsop">Nuru Multipurpose Soap</option>
                        <option value="the-star-range-of-soaps" class="selectors laundsop">The Star Range Of Soaps</option>
                        <option value="white-star-laundry-soap" class="selectors laundsop">White Star</option>
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
                        <input class="input" id="Numero" name="num_telefono" type="text" required 
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
                        <input  class="input" id="Password" name="password" type="text" required
                                placeholder="Password" pattern="[^\s]{4,8}" 
                                title="Password (dai 4 a 8 caratteri alfanumerici e speciali, spazi esclusi)"/>
                    </td>
                </tr>
                <tr>
                    <td><b>Conferma Password</b></td>
                    <td>
                        <input  class="input" id="Conferma" name="conferma" type="text" required 
                                placeholder=" Password" pattern="[^\s]{4,8}" 
                                title=" Conferma password (dai 4 a 8 caratteri alfanumerici e speciali, spazi esclusi)"
                                onblur="checkpassworda()" />
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


