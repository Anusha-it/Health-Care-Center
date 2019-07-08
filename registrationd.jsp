<%@ page import ="java.sql.*" %>
<%
    String opno = request.getParameter("opno");    
    String name = request.getParameter("name");
    String dept = request.getParameter("dept");
    String age = request.getParameter("age");
    String sex = request.getParameter("sex");
    String address = request.getParameter("address");
    String family = request.getParameter("family");
    String email = request.getParameter("email");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cbit",
            "root", "klp102@S74");
    Statement st = con.createStatement();
    //ResultSet rs;
    String query="insert into register(opno,name,dept,age,sex,address,family,email) values ('" + opno + "','" + name + "','" + dept+ "','" +age+ "','" + sex + "','" +address+ "','" + family + "','" + email+ "')";
    
    int i = st.executeUpdate(query);
     
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!");
    } else {
        response.sendRedirect("index.jsp");
    }
    
%>
