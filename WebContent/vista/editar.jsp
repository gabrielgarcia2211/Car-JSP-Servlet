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

    <title>Actualizar Vehiculo</title>
  </head>
<body>

	<div class="container" style="margin-top:5%; margin-bottom:8%; box-shadow: 10px 10px 21px 0px rgba(0,0,0,0.75);">
		  <div class="row" style="padding:20px">
		    <div class="col-sm-6">
		    <div class="card" style="width: 25rem;margin-left:30px">
			  <img src="img/logo2.jpg" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 style="text-align:center"class="card-title">Actualizar Vehiculo</h5>
			  </div>
			</div>
		    </div>
		    <div class="col-sm-6">
		     <form action="AdminCarro?action=editar" method="POST" >
		     <div class="form-group">
			    <label for="codigo">Codigo</label>
			    <input type="text" class="form-control" id="codigo" name="id"  value="<c:out value="${carro.getCodcoche()}"></c:out>" requerid>
			  </div>
			  <div class="form-group">
			    <label for="nombre">Nombre</label>
			    <input type="text" class="form-control" id="nombre" name="nombre" value='<c:out value="${carro.getNombre()}"></c:out>' requerid>
			  </div>
			  <div class="form-group">
			    <label for="modelo">Modelo</label>
			    <input type="text" class="form-control" id="modelo" name="modelo" value='<c:out value="${carro.getModelo()}"></c:out>' requerid>
			  </div>
			  <div class="form-group">
			    <label for="precio">Precio</label>
			    <input type="number" class="form-control" id="precio" name="precio" value='<c:out value="${carro.getPrecio()}"></c:out>' requerid>
			  </div>
			  <div class="form-group">
			    <label for="cantidad">Cantidad</label>
			    <input type="number" class="form-control" id="cantidad" name="cantidad" value='<c:out value="${carro.getCantidad()}"></c:out>' requerid>
			  </div>
			  <div class="form-group">
			    <label for="placa">Placa</label>
			    <input type="text" class="form-control" id="placa" name="placa" value='<c:out value="${carro.getPlaca()}"></c:out>' requerid>
			  </div>
			  <button type="submit" class="btn btn-primary" name="agregar">Guardar</button>
			  <a href="AdminCarro?action=index" class="btn btn-warning">Ir al menú</a> 
			</form>
			
		    </div>
		  </div>
		</div>
		
		
</body>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</html>