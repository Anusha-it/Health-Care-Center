<%@ page import ="java.sql.*" %>
<%
    String drug = request.getParameter("drugname");    
    String exdate1 = request.getParameter("exdate1");
    String exdate2 = request.getParameter("exdate2");
    String instock = request.getParameter("instock");
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cbit",
            "root", "klp102@S74");
    Statement st = con.createStatement();
    //ResultSet rs;
    String query="insert into drug(drugname,exdate1,exdate2,instock) values ('" + drug + "','" + exdate1 + "','" + exdate2+ "','" +instock+ "')";
    
    int i = st.executeUpdate(query);
     
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!");
    } else {
        response.sendRedirect("index.jsp");
    }
    
%>
