<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

Connection conn = null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost/actores?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");
	try{
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("select first_name, last_name, last_update from actor where actor_id ="+request.getParameter("actor_id")+";");
		while (rs.next()){
			%>
			<form method="post" action="actualizar.jsp">
				<table border=1>
					<tr>
						<th>Nombre: </th>
						<td>
							<input type="text" name="campo_nombre" value="<%=rs.getString("first_name") %>"/>
						</td>
						
					</tr>
					<tr>
						<th>Apellido: </th>
						<td>
							<input type="text" name="campo_apellido" value="<%=rs.getString("last_name") %>"/>
						</td>
						
					</tr>
					<tr>
						<th>Fecha: </th>
						<td>
							<input type="text" name="campo_fecha" value="<%=rs.getString("last_update") %>"/>
						</td>
						
					</tr>
				</table>
				<p><input type="submit" value="Actualizar" name="submit">
					<input type="reset" value="Borrar" name="reset"></p>
			</form>
			<table border=1>
				<tr>
					<td>
				</tr>
			</table>
			<p><a href="listaActores.jsp">Volver a página de inicio</a></p>
			
			<%
		}
	}catch(SQLException ex){
		
	}
}catch (Exception e){
	
}
%>


</body>
</html>