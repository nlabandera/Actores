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
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/actores?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","1234");
	try{
		Statement st = conn.createStatement();
		String nombre=request.getParameter("campo_nombre");
		String apellido=request.getParameter("campo_apellido");
		String fecha=request.getParameter("campo_fecha");
		int actualizar = st.executeUpdate("update actor set first_name='"+nombre+"', last_name='"+apellido+"', last_update='"+fecha+"' where actor_id ="+request.getParameter("actor_id")+";");
		conn.close();
		%>
		<p>Actualización correcta</p>
		<p><a href="listaActores.jsp">Volver a página de inicio</a></p>
		<%
	}catch(SQLException ex){
		
	}
}catch(Exception e){
	
}

%>

</body>
</html>