<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
try {
/*here mysqltest is the database name. you have to give the database name you have created and 3306 is the default sql port */
String connectionURL = "jdbc:mysql://localhost:3306/mysqltest"; 
 
Connection connection = null; 
 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
 
/* "root" and "root" are the mysql username and password . if you have a different user name and password you have to change that in code */
 
connection = DriverManager.getConnection(connectionURL, "root", "root");
 
if(!connection.isClosed())
%&gt;
 
&lt;% 
out.println("Successfully connected to " + "MySQL server using TCP/IP...");
connection.close();
}
catch(Exception ex){
%&gt;
 
&lt;%
out.println("Unable to connect to database.");
}
</body>
</html>