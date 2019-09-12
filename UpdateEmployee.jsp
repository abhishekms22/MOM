<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,com.quinnox.mom.dao.*,com.quinnox.mom.model.Employees,com.quinnox.mom.controller.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Employee</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
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
	<!-- <link rel="stylesheet" type="text/css" href="css/util.css"> -->
	<link rel="stylesheet" type="text/css" href="css/updatemain.css">
<!--===============================================================================================-->

</head>
<style>
table
{
align:"center";
}
</style>
<body>
<%
	String id = request.getParameter("id");
	Employees c = EmployeeDAO.getEmployeeById(Long.parseLong(id));
%>

  

	<div class="container-contact100">
		<div class="wrap-contact100">
			<button class="btn-hide-contact100">
				<a href="AdminViewEmp.jsp"><i class="zmdi zmdi-close"></i></a>
			</button>

			<div class="contact100-form-title" style="background-image: url(images/bg-02.jpg);">
				<span>UPDATE EMPLOYEE</span>
			</div>
<form action="EditEmployee">
        <input type="hidden" name="id" value="<%=c.getEmp_id()%>" />
			<form class="contact100-form validate-form">
				<div class="wrap-input100 validate-input">
					<input id="name" class="input100" type="text" name="name" placeholder="Full name" value="<%=c.getEmp_name()%>">
					<span class="focus-input100"></span>
					<label class="label-input100" for="name">
						<span class="lnr lnr-user m-b-2"></span>
					</label>
				</div>


				<div class="wrap-input100 validate-input">
					<input id="email" class="input100" type="text" name="email" placeholder="Eg. example@email.com" value="<%=c.getEmp_email()%>">
					<span class="focus-input100"></span>
					<label class="label-input100" for="email">
						<span class="lnr lnr-envelope m-b-5"></span>
					</label>
				</div>


				<div class="wrap-input100 validate-input">
					<input id="pass" class="input100" type="password" name="password" placeholder="Password" value="<%=c.getEmp_pass() %>">
					<span class="focus-input100"></span>
					<label class="label-input100" for="password">
						<span class="lnr lnr-eye"></span>
					</label>
				</div>


				<div class="wrap-input100 validate-input">
					<input id="dept_id" class="input100" type="integer" name="deptid" placeholder="Department ID" value="<%=c.getDept_id()%>">
					<span class="focus-input100"></span>
					<label class="label-input100 rs1" for="message">
						<span class="lnr lnr-users"></span>
					</label>
				</div>
				<div class="wrap-input100 validate-input">
					<input id="designation" class="input100" type="text" name="desgn" placeholder="Designation" value="<%=c.getEmp_desgn()%>" >
					<span class="focus-input100"></span>
					<label class="label-input100" for="designation">
						<span class="lnr lnr-laptop"></span>
					</label>
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						UPDATE
					</button>
				</div>
			</form>
		</div>
	</div>
</form>


<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/updatemain.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	  gtag('config', 'UA-23581568-13');
	</script>
	

	

	

</body>
</html>