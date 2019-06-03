<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method="post" action="guardar.jsp">
<table>
	<tr>
		<th>Nombre: </th><td><input type="text" name="campo_first_name" size="50"/><td>
	</tr>
	<tr>
		<th>Apellido: </th><td><input type="text" name="campo_last_name" size="50"/><td>
	</tr>
	<tr>
		<th>Fecha de rodaje: </th><td><input type="text" name="campo_last_update" size="50"/><td>
	</tr>
</table>

<p><button type="submit" value="Submit" >Aceptar</button>
<button type="reset" value="Cancelar">Cancelar</button></p>
<p><a href="listaActores.jsp">Volver a página de inicio</a></p>
</form>
</body>
</html>