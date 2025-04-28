<%@ page import="java.sql.*"%>
<html>  
<body>  
<% out.print("Hello World !! Welcome to JSP"); %>
<p>Hello World !! Welcome to JSP</p>
<h1>Welcome to Sanjivani College of Engineering, IT Department</h1>
<table border='5'>
<tr><th>Stud_id</th><th>Name</th><th>Class</th><th>Division</th><th>City</th></tr>
<%
try{ 
Class.forName("com.mysql.jdbc.Driver");
 
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pragati","root","");

Statement stmt=con.createStatement();

ResultSet rs=stmt.executeQuery("select * from student_info"); 
while(rs.next()){    
//writing html in the stream  
out.println("<tr><td>"+rs.getObject(1).toString()+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td></tr>");

}
}catch(Exception e){ out.print(e);} 
%> 
</table>
</body>  
</html>  