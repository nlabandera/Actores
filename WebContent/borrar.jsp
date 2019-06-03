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
	conn=DriverManager.getConnection("jdbc:mysql://localhost/users?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");
	try{
		Statement st=conn.createStatement();
		int borra = st.executeUpdate("delete from actor where actor_id='"+request.getParameter("actor_id")+"'");
		conn.close();
		%>
		<p>Actor eliminado</p>
		<p><a href="listaActores.jsp">Volver</a></p>
		<%
		
	}catch(SQLException sql){
		
	}
	
}catch(Exception e){
	
}
%>

</body>
</html>