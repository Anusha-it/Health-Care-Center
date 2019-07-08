<%@ page language ="java" import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Contact V4</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form"  method="post">
				<span class="contact100-form-title">
					Register Form
				</span>

				<div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100">O.P.No</span>
					<input class="input100" type="text" name="opno" placeholder="Enter opno">
					<span class="focus-input100"></span>
				</div>
<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							<span>
								Submit
								<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
							</span>
						</button>
					</div>





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
        	 
      %> 
      <form> 	 
    <table>   
    <br>
    <br>
    <br>
    <div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100"><b>O.P.No : <%=rs.getString("name") %></b></span>
			
					<span class="focus-input100"></span>
				</div>
    
   <div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100"><b>Department : <%=rs.getString("dept") %></b></span>
			
					<span class="focus-input100"></span>
				</div>
				 <div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100"><b>Age : <%=rs.getString("age") %></b></span>
			
					<span class="focus-input100"></span>
				</div>
				 <div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100"><b>Sex : <%=rs.getString("sex") %></b></span>
			
					<span class="focus-input100"></span>
				</div>
				 <div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100"><b>Address : <%=rs.getString("address") %></b></span>
			
					<span class="focus-input100"></span>
				</div>
				 <div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100"><b>Family : <%=rs.getString("family") %></b></span>
			
					<span class="focus-input100"></span>
				</div>
				 <div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100"><b>Email : <%=rs.getString("email") %></b></span>
			
					<span class="focus-input100"></span>
				</div>
				<br>
				<br>
				<br>
    
      </table>  
      </form>
             <%
             }
         
         else {
        	 }
         }
     
       
         
     
         }catch(Exception e1)
{}
%>
<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

</body></html>
