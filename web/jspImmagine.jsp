<%-- 
    Document   : jspImmagine
    Created on : 24-feb-2017, 13.12.57
    Author     : Valerio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="js/jquery.js">
        </script>
        <script type="text/javascript" src="js/jquery.min.js">
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Home.css" rel="stylesheet" type="text/css">
                <link href="css/Immagine.css" rel="stylesheet" type="text/css">

        <link href="css/prova.css" rel="stylesheet" type="text/css">
    <div align="center" id="contlogo"><a href="Home.jsp"> <img src="logo.png" alt="Logo" id="logo"></a> </div>

<ul class="menu">
               
                  <li><a href="ChiSiamo.jsp">Chi Siamo</a></li> 
                <%if(request.getSession().getAttribute("utente")==null){%>
                
                <li class="spost"><a >Login</a><ul id="containerComaparsaLogin">
                 <li id="liLoginCliente"><a href="LoginCliente.jsp" id="comparsaLoginCliente">Cliente</a></li>
                 <li id="liLoginPizzeria"><a href="LoginPizzeria.jsp" id="comparsaLoginPizzeria">Pizzeria</a></li>
                </ul></li>
                <li class="spost"><a href="">Registrazione</a><ul id="containerComaparsaRegistrazione">
                 <li id="liRegistrazioneCliente"><a href="RegistrazioneCliente.jsp" id="comparsaRegistrazioneCliente">Cliente</a></li>
                 <li id="liRegistrazionePizzeria"><a href="RegistrazionePizzeria.jsp" id="comparsaRegistrazionePizzeria">Pizzeria</a></li>
                    </ul></li><%}else{%>
                     
                <li class="spost"><a href="/Logout">Esci</a>
                <li class="spost"><a href="ProfiloCliente.jsp">Profilo</a>
                 <li class="spost"><a href="Carrello.jsp">Carrello</a>   
                   <%}%> 
        <title>JSP Page</title>
    </head>
    <body>
<form name="uploadForm" action="upload.jsp" enctype="multipart/form-data" method="post" onSubmit="return validate()" id="form">
<div>
<input  type="file" name="file" id="imgInp">
	</div>
	<div>
<img id="blah" src="#" alt="inserisci un immagine prima di proseguire"/>
	</div>
<input class="bottoneInput" name="Upload" Value="Avanti"  type="submit">
</form>
    </body>
    <script>   
        function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            };
            
            reader.readAsDataURL(input.files[0]);
        }
    }
    
    $("#imgInp").change(function(){
        readURL(this);
  
  });
  function validate(){

  valid = true;

     if($("#imgInp").val() === ''){
         // your validation error action
        valid = false;

     }

    return valid; //true or false
}
</script>
</html>
