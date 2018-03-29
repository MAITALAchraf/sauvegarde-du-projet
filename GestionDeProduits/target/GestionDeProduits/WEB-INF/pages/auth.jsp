<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<%@ page isELIgnored="false" %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://unpkg.com/tooltip.js/dist/umd/tooltip.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>Gestion des produits SQLI</title>
</head>
<body>
<div class="container">
  <div class="page-header">
    <h1 style="font-size: 15px;">SQLI SC JAVA</h1>      
  </div>
	<div class="container" style="margin-top: 110px;">
		<div class="center">
			<div>
				<div class="panel-head">
					<h3 style="font-size:46px;margin: auto;">Log In </h3>
				</div>
				<div class="panel-body">
					<form action="<c:out value='submit' />" method="POST" >
				
						<div class="form-group">
							<label for="login">Login : </label>
							<input type="text" class="form-control" placeholder="Enter login" name="login"/>
						</div>
						<div class="form-group">	
						<label for="login">Password : </label><input type="password" class="form-control" placeholder="Enter password" name="password"/>
						</div>
						 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
						<div class="form-group">
							<input type="submit" class="btn btn-primary" value="Log In" style="padding-left: 65px;padding-right:  65;margin-left:  473px;"/>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="footer" style="position: fixed;left: 0;bottom: 0;width: 100%;background-color: #85744D;color: white;text-align: center;">
  <p style="margin: 15px 0 10px;">SQLI SC JAVA</p>
</div>
	
</body>
</html>