<%@ page language ="java" import="java.sql.*" %>

<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cbit",
       "root", "klp102@S74");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select curdate(),drugname,exdate1,exdate2,instock from drug");
  String fir = rs.getString(1);
  //ResultSet rs=st.executeQuery("select * from drug");
  String second = rs.getString(3);
  while(rs.next())
  {
  if(fir.equals(second))
  {
	  %>
	 <tr>
	 <td>The expiry of drug has occured :<%=rs.getString("curdate()") %></td>
	 </tr> 
	  <%
  }
  else
  {
	  %>
	   response.sendRedirect("stock.jsp");
	  <%
  }
  }
  %>
	