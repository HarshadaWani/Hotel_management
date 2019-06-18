<html>
<head>
<title>database</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%
String f=request.getParameter("fname");
String l=request.getParameter("lname");
String e1=request.getParameter("email");
String fb=request.getParameter("fback");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/harshada","root","root123");
	Statement st=con.createStatement();
	st.executeUpdate("insert into student2(firstname,lastname,email,fback)values('"+f+"','"+l+"','"+e1+"','"+fb+"')");
	out.println("data is successfully inserted");
}
catch(Exception e)
{
	out.println(e.getMessage());
}
%>
</body>
</html>