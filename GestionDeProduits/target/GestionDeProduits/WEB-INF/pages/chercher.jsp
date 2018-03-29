<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false" %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


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


<title>Gestion des produits</title>
</head>
<body>
	<div class="container">
			<div id="search">
				<form action="chercherProduit" method="get">
				 	<input type="text" placeholder="Produit" name="id" class="form-control" style="width: 20%">
					<button type="submit" class="btn btn-primary" style="margin-top:15px;">Chercher</button>
				</form>
			</div>
	
			<div class="panel panel-default" style="margin-top: 20px">
			  <div class="panel-heading">Chercher Produit : </div>
			  <div class="panel-body">
			  	<c:if test="${produit.getId()!=0}">
			  		<span>Libelle : </span><b>${produit.getLibelle()}</b><br>
			  		<span>Prix : </span><b>${produit.getPrix()}</b>
			  	</c:if>
			  	<c:if test="${produit.getId()==0}">
			  		<h4>le produit n'existe pas :(</h4>
			  	</c:if>
			</div>
		</div>
	</div>
</body>
</html>