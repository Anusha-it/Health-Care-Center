<%@ page language ="java" import="java.sql.*" %>

<% 

String userlde=request.getParameter("opno");
 
     try{
     
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cbit",
            "root", "klp102@S74");
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from register");
     while(rs.next())
         {
         String first = rs.getString(1);
   

         if(userlde.equals(first))
             {
        	 
      %>  	  <tr style="background-color:pink;"><td>the rollno is:<%=rs.getString("name") %></td></tr></br>
    <table>   
    <tr>Name:
     <input type="text" value=<%=rs.getString("name") %>></td></tr></br>
      </table>  
             <%
             }
         
         else {
        	 }
         }
     
       
         
     
         }catch(Exception e1)
{}
%>