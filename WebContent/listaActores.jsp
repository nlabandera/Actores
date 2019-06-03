<%@ page language="java" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<li><a href="insertar.jsp">Añadir actor</a></li>
	
	<table border=1>
		<tr>
			<th>Codigo</th>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Fecha Rodaje</th>
			<th></th>
			<th></th>
	
		</tr>			
		<%
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn=null;
			ResultSet rs=null;
			Statement st=null;
			
			try{
				conn=DriverManager.getConnection("jdbc:mysql://localhost/actores?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");
				st=conn.createStatement();
				rs=st.executeQuery("select * from actor");
				while (rs.next()){
					%>
					<tr>
						<td><%=rs.getInt("actor_id") %></td>
						<td><%=rs.getString("first_name") %></td>
						<td><%=rs.getString("last_name") %></td>
						<td><%=rs.getDate("last_update") %></td>
						<td><a href="borrar.jsp?actor_id=<%=rs.getInt("actor_id") %>">Borrar</a></td>
						<td><a href="editar.jsp?actor_id=<%=rs.getInt("actor_id") %>">Editar</a></td>
					</tr>
					<%
				}
				rs.close();
				st.close();
				conn.close();
				
				
			}
			catch(Exception e){
				System.out.print(e.getMessage());
			}
			%>
	
	</table>

</body>
</html>