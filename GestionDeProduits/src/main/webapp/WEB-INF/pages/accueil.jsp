 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>	

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

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>SQLI SC JAVA</title>
</head>
<body>  
	<div class="container">
	<div class="page-header" style="margin-top: 40px;">
    <h1 style="font-size: 15px;">SQLI SC JAVA</h1>      
  </div>
		<div align="center"  style="margin-top: 110px;">
			<div style="text-align: left">
			<h3>SQLI  <sec:authentication property="principal.username"/></h3>
			<div style="float: right;">
			<form id="logout" action="<%=request.getContextPath()%>/logout" method="post" >
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<button type="submit" value="logout" class="btn btn-default btn-sm" style="font-size: 25px;">Log out</button>
			</form>
			</div>
			</div>	

			<h1>Liste des produits SQLI  </h1>

			<table class="table">   
				<thead>
					<tr>
						<th>Produit</th>
						<th>Type</th>
						<th>Prix</th>
						<sec:authorize access="hasRole('ROLE_ADMIN')">
						<th>Action</th>
						</sec:authorize>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listProduit}" var="produit">
						<tr>
							<td><c:out value="${produit.getLibelle()}"></c:out></td>
							<td><c:out value="${produit.getType().getLibelleFamille()}"></c:out></td>
							<td><c:out value="${produit.getPrix()}"></c:out></td>
							<td> 
							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<a href="supprimer/${produit.getId()}" data-toggle="confirmation" >
									<img alt="delete ${produit.getLibelle()}" src="<c:url value="/resources/images/icons/trash.png"  />" width="30px" height="30px">
								</a>
							</sec:authorize>
							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<a href="modifier/${produit.getId()}">
									<img alt="edit ${produit.getLibelle()}" src="<c:url value="/resources/images/icons/edit.png" />" width="30px" height="30px">
								</a>
							</sec:authorize>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>  
			<h4>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<a href="ajouterProduit"><button type="button" class="btn btn-success">add product</button></a>
			</sec:authorize>
			</h4>
		</div>
	</div>
	<div class="footer" style="position: fixed;left: 0;bottom: 0;width: 100%;background-color: #85744D;color: white;text-align: center;">
  <p style="margin: 15px 0 10px;">SQLI SC JAVA</p>
</div>
</body>
</html>