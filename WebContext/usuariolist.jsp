<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Aplicacion Gestion de usuarios</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" 
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark">
			<div>
				<a href="#" class="navbar-brand">Gestion de usuarios</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath() %>/list" class="nav-link">Usuarios</a></li>
			</ul>
		</nav>
	</header>
	<br>
	
	<div class="row">
		<div class="container">
			<h3 class="text-center">Listado de usuarios</h3>
			<hr>
			<div class="container text-left">
				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Agregar Nuevo Usuario</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Nombre</th>
						<th>Email</th>
						<th>Pa�s</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="usuario" items="${listUsuarios}">
						<tr>
							<td>
								<c:out value="${usuario.id}"></c:out>
							</td>
							<td>
								<c:out value="${usuario.nombre}"></c:out>
							</td>
							<td>
								<c:out value="${usuario.email}"></c:out>
							</td>
							<td>
								<c:out value="${usuario.pais}"></c:out>
							</td>
							<td>
								<a href="edit?id=<c:out value='${usuario.id}'/>">Editar</a> &nbsp;&nbsp;&nbsp;&nbsp;
								<a href="delete?id=<c:out value='${usuario.id}'/>">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>