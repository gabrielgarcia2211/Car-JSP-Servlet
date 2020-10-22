<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Vehiculos</title>
  </head>
  <body>
    <div class="container" style="margin-top:8%">
     <h1 style="text-align:center">Administrar Vehiculos</h1>
	   
	    <div class="row justify-content-center">
	    <div class="col-sm-12">
	      <table class="table">
			  <thead class="bg-primary">
			    <tr>
			      <th style="text-align:center" scope="col">¿Que desea hacer?</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
					<td align="center"><a href="AdminCarro?action=nuevo">Añadir un nuevo vehiculo</a></td>			
				</tr>
				<tr>
					<td align="center"><a href="AdminCarro?action=mostrar">Listar los vehiculos</a></td>
				</tr>
			  </tbody>
		</table>
	    </div>
	  </div>
    </div>
    

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  </body>
</html>