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
            <jsp:include page="tabHome.jsp"></jsp:include>

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
