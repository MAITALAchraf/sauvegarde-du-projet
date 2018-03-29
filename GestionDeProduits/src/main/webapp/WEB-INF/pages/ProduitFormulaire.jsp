<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	

<title>Ajouter/Modifier Produit</title>
</head>
<body>
	<div class="thumbnail">
	<div class="container">
	<div class="page-header" style="margin-top: 40px;">
    <h1 style="font-size: 15px;margin-left: 231px;">SQLI SC JAVA</h1>      
  </div>
		<div align="center">
			<h1>Ajouter/Modifier Produit</h1>
			<br>
			<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
			
			<!-- Formulaire Ajout/modification -->
			<form:form action="ajouterProduit" modelAttribute="produit" method="post" style="width:50%">
				<form:hidden path="id"/>
				<div class="form-group">
			    	<label>libelle : </label>
			    	<form:input path="libelle" cssClass="form-control" />
			   </div>
				<div class="form-group">
			    	<label>Prix : </label>
			    	<form:input path="prix" cssClass="form-control" />
			   </div>
			   <div class="form-group">
			   	<label>Type : </label>
				<form:select path="type"  cssClass="form-control">
					<form:options/>
				</form:select>
			  </div>
			  <input type="submit"  value="Add" class="btn btn-primary" style="padding-left: 30px;padding-right:  30px;"> 
			  <a href="${contextPath}/"><button type="button" class="btn btn-secondary" style="float: right;">Return</button></a>
			  <form:errors path="*" cssClass="alert alert-danger" cssStyle="display:block;margin-top:60px;text-align:left;"></form:errors>
			</form:form>  
		</div>
	</div>
	</div>
	<div class="footer" style="position: fixed;left: 0;bottom: 0;width: 100%;background-color: #85744D;color: white;text-align: center;">
  <p style="margin: 15px 0 10px;">SQLI SC JAVA</p>
</div>
</body>
</html>