<%@ page import ="java.sql.*" %>
<%
    String drug = request.getParameter("drugnameu");    
    String exdate1 = request.getParameter("exdate1u");
    String exdate2 = request.getParameter("exdate2u");
    String instock = request.getParameter("instocku");
    
    
    //Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cbit",
            "root", "klp102@S74");
    Statement st = con.createStatement();
  %>
  <table>
  <tr>
  <td> <% out.println(con);%>
  <% 
    //ResultSet rs;
   String query1="update drug set instock='"+instock+"',exdate1='"+exdate1+"',exdate2='"+exdate2+"' where drugname='"+drug+"'";
    
    int i = st.executeUpdate(query1);
     
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!");
    } else {
        response.sendRedirect("menu.jsp");
    }
    
%>
