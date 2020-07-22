<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>RSA Encryption & Decryption</title>
</head>
<body>
	<div class="container">
		<div sytyle="padding-top:1%;">
			<h1>RSA Encryption and Decryption</h1>
		</div>
		<div class="card">
		<div class="card-body">
		
		<form:form action="encrypt" modelAttribute="inputData" method="POST"
			acceptCharset="UTF-8">
			<div class="form-group row">
				<label for="inputStr" class="col-sm-2 col-form-label font-weight-normal">Input String</label>
				<div class="col-sm-7">
					<form:textarea path="inputStr" rows="6" cols="100" />
				</div>
			</div>
			<div class="form-group row">
				<form:button id="encryptbtn" class="btn btn-primary">Encrypt</form:button>
			</div>
			<div class="form-group row">
				<label for="inputStr" class="col-sm-2 col-form-label font-weight-normal">Encrypted String</label>
				<div class="col-sm-7">
					<form:textarea path="encryptStr" readonly="true" value="${inputData.encryptStr}" rows="5" cols="100" />
				</div>
			</div>
			<div class="form-group row">
				<form:button id="decryptbtn" class="btn btn-primary">Decrypt</form:button>
			</div>
			<div class="form-group row">
				<label for="inputStr" class="col-sm-2 col-form-label font-weight-normal">Decrypted String</label>
				<div class="col-sm-7">
					<form:textarea path="decryptStr" readonly="true" value="${inputData.decryptStr}" rows="5" cols="100" />
				</div>
			</div>
		</form:form>
		</div>
		</div>
	</div>
</body>
</html>
