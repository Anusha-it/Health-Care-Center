<%@ page import ="java.sql.*" %>
<%
String opno = request.getParameter("opno");  
    String bps = request.getParameter("bps");  
String bpd = request.getParameter("bpd");    
    String sugar = request.getParameter("sugar");
    String cho = request.getParameter("cho");
  
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cbit",
            "root", "klp102@S74");
    Statement st = con.createStatement();
    //ResultSet rs;
    String query11="insert into history(bps,bpd,sugar,cho,opno) values ('" + bps + "','"+bpd+"','" + sugar + "','" + cho+ "','"+opno+"')";
    
    int i = st.executeUpdate(query11);
     
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!");
    } else {
        response.sendRedirect("index.jsp");
    }
    
%>
