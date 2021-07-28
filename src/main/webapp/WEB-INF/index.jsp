<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<style>
		form{
		text-align: center;
		display: inline-block;
		margin: 20px;
		padding: 10px;
		border: 2px solid black;
		}
		
		#global {
		height: 400px;
		width: 800px;
		border: 1px solid #ddd;
		background: #f1f1f1;
		overflow-y: scroll;
		}
		.mensajes {
		height: auto;
		.texto {
		padding:4px;
		background:#fff;
		}
	</style>
	<title>Ninja Gold Game</title>
</head>
<body>

<h1>Your Gold : <c:out value="${oro}"/></h1><hr>

<form  method="POST" action="/granja" >
    <p>Granja </p>
    <p>Gana 10-20 Oro </p>     
    <button onclick="myFunction()">Buscar Oro!</button>
</form>

<form  method="POST" action="/cueva">
    <p>Cueva </p>
    <p>Gana 5-10 Oro </p>
    <button onclick="myFunction()">Buscar Oro!</button>
</form>

<form  method="POST" action="/casa">
    <p>Casa </p>
    <p>Gana 2-5 Oro </p>
    <button onclick="myFunction()">Buscar Oro!</button>
</form>

<form  method="POST" action="/casino">
    <p>Casino! </p>
    <p>Gana/Pierde 0-50 Oro </p>
    <button onclick="myFunction()">Buscar Oro!</button>
</form><hr>

<h1>Actividad :</h1><hr>
<div id="global">
  <div id="mensajes" >
  	<div id="texto"></div>
     
  </div>
</div>

<script>
function myFunction() {
  document.getElementById("texto").innerHTML = "<h3><c:out value="${oro}"/></h3>";
}
</script>

</body>
</html>