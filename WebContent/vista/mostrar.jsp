<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Aministrar Vehiculo</title>
  </head>
<body>
	<div class="container" style="margin-top:40px">
	<h1>Lista Carros</h1>
	<a href="AdminCarro?action=index" >Ir al menú</a> 
	<table class="table">
	  <thead class="bg-danger">
	    <tr>
	      <th scope="col">CODIGO</th>
	      <th scope="col">NOMBRE</th>
	      <th scope="col">MODELO</th>
	      <th scope="col">PRECIO</th>
	      <th scope="col">CANTIDAD</th>
	      <th scope="col">PLACA</th>
	      <th style="text-align:center"scope="col" colspan=2>ACCIONES</th>
	    </tr>
	  </thead>
	  <tbody>
	    <c:forEach var="carro" items="${lista}">
			<tr>
				<td><c:out value="${carro.getCodcoche()}"/></td>
				<td><c:out value="${carro.getNombre()}"/></td>
				<td><c:out value="${carro.getModelo()}"/></td>
				<td><c:out value="${carro.getPrecio()}"/></td>
				<td><c:out value="${carro.getCantidad()}"/></td>
				<td><c:out value="${carro.getPlaca()}"/></td>
				<td><a href="AdminCarro?action=showedit&id=<c:out value="${carro.getCodcoche()}" />"><button type="button" class="btn btn-primary">Editar</button></a></td>
				<td><a href="AdminCarro?action=eliminar&id=<c:out value="${carro.getCodcoche()}"/>"><button type="button" class="btn btn-danger">Eliminar</button></a> </td>				
			</tr>
		</c:forEach>
	  </tbody>
	</table>
	</div>
</body>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</html>