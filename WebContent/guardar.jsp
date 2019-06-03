<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	Connection conn=null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/actores?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","1234");
	try{
		Statement st = conn.createStatement();
		String nombre = request.getParameter("campo_first_name");
		String apellido = request.getParameter("campo_last_name");
		String fecha = request.getParameter("campo_last_update");
		int datos=st.executeUpdate("insert into actor(first_name, last_name, last_update) values ('"+nombre+"','"+apellido+"','"+fecha+"');");
		conn.close();
		%>
		<p>El actor/actriz se ha guardado correctamente</p>
		<p><a href="listaActores.jsp">Volver a la página principal</a></p>
		<%
		
	}catch(SQLException ex){
		System.out.print("Error en el statement SQL");
	}
}catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>