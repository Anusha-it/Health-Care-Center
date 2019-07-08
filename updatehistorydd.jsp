<%@ page import ="java.sql.*" %>
<%
    String opnou = request.getParameter("opnou");
    String bps= request.getParameter("bpsu");    
    String bpd = request.getParameter("bpdu");
    String sugar = request.getParameter("sugaru");
    String cho = request.getParameter("chou");
    
    
    
    //Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cbit",
            "root", "klp102@S74");
    Statement st = con.createStatement();
  %>
  <table>
  <tr>
  <td> 
  <% 
    //ResultSet rs;
   String query11="update history set bps='"+bps+"',bpd='"+bpd+"',sugar='"+sugar+"',cho='"+cho+"' where opno='"+opnou+"'";
    
    int i = st.executeUpdate(query11);
     
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!");
    } else {
        response.sendRedirect("menu.jsp");
    }
    
%>
