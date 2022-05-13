<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Aplicacion Gestion de usuarios</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" 
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
			<div>
				<a href="#" class="navbar-brand">Gestion de usuarios</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list" class="nav-link">Usuarios</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${usuario != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${usuario == null}">
					<form action="insert" method="post">
				</c:if>
				<caption>
					<h2>
						<c:if test="${usuario != null}">
							Editar Usuario
						</c:if>
						<c:if test="${usuario == null}">
							Agregar Nuevo Usuario
						</c:if>
					</h2>
				</caption>
				<c:if test="${usuario != null}">
					<input type="hidden" name="id" value='<c:out value="${usuario.id}"></c:out>'/>
				</c:if>
				<fieldset class="form-group">
					<label>Nombre de Usuario </label>
					<input type="text" value='<c:out value="${usuario.nombre}"></c:out>' class="form-control" name="nombre" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Email del usuario </label>
					<input type="text" value='<c:out value="${usuario.email}"></c:out>' class="form-control" name="email">
				</fieldset>
				<fieldset class="form-group">
					<label>Pais del Usuario </label>
					<input type="text" value='<c:out value="${usuario.pais}"></c:out>' class="form-control" name="pais">
				</fieldset>
				<button type="submit" class="btn btn-success">Guardar</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>