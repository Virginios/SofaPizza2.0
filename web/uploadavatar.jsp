<%@ page language="java"
		session="true"
		errorPage="error.jsp"
		contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="fragments/head.jsp">
			<jsp:param name="pageTitle" value="MusiCase - Carica immagine profilo" />
			<jsp:param name="customCSS" value="userprofile.css" />
		</jsp:include>
		<script type="text/javascript" src="../js/uploadfileemptyform.js"></script>
	</head>
	<body>
		<jsp:include page="fragments/header.jsp"></jsp:include>
		<jsp:include page="fragments/nav.jsp"></jsp:include>
		<jsp:include page="fragments/nojs.jsp"></jsp:include>
		<jsp:include page="fragments/sessioncheck.jsp"></jsp:include>
		<div id="container">
			<div id="formcontainer">
				<div id="formcontainer">
						<h2><i class="fa fa-sign-in" aria-hidden="true">&nbsp;</i>Accedi</h2>
				</div>
				<div id="formerr" class="message"><!-- spazio per errori gestito in js -->
						<h3>Attenzione!</h3>
						<span id="errmsg">&nbsp;</span>
				</div>
				<form name="imgupload" onsubmit="return uploadfileemptyform();" method="POST" enctype="multipart/form-data" action="avatarupload" accept-charset="UTF-8" >
					<fieldset>
						<legend><i class="fa fa-picture-o" aria-hidden="true"></i>&nbsp;Carica immagine profilo</legend>
						<label for="upfile">Percorso immagine locale</label>
						<input type="file" name="upfile" accept="image/*" placeholder="Nome immagine" required></input>
						<%--<label>Notes about the file</label><input type="text" name="note"></input>--%>
						<div id="subtn">
							<input type="submit" value="Carica"></input>
							<input type="reset" value="Cancella" />
						</div>
					</fieldset>
				</form>
			</div>
		</div>
		<%@ include file="fragments/footer.jsp" %>
	</body>
</html>