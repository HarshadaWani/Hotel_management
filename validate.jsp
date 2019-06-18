<html>
<head>
<title>validate</validate>
</head>
<body>
<%@page import="java.sql.*,javax.sql.*,java.util.*"%>
<%
String user=request.getParameter("user");
String pass=request.getParameter("pass");
String ID=request.getParameter("bookID");
try
{
	class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root123");
		Statement st=c.createStatement();
		ResultSet rs=st.executeQuery("select *from student where name=' "+user+" ' and password=' "+pass+" ' and id=' "+bookID+" ');
		int count=0;
		out.println("in process");
		while(rs.next())
		{
			count++;
		}
			if(count>0)
			{
				out.println("welcome "+user+"ur session id is"+ID);
			}
			else
			{
				out.println("wrong");
			}
		catch(Exception e){
			System.out.println(e);
			}
/%>
</body>
</html>
</html>