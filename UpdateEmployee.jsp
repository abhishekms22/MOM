<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,com.quinnox.mom.dao.*,com.quinnox.mom.model.Employees,com.quinnox.mom.controller.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table
{
align:"center";
}

</style>
<body align="center">
	<%
	String id = request.getParameter("id");
	Employees c = EmployeeDAO.getEmployeeById(Long.parseLong(id));
	%>

	<h1>Edit Employees</h1>

	<form action="EditEmployee" method="post">
		<input type="hidden" name="id" value="<%=c.getEmp_id()%>" />
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value="<%=c.getEmp_name()%>" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" value="<%=c.getEmp_pass() %>" /> 
					</td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" value="<%=c.getEmp_email()%>" /></td>
			</tr>
			<tr>
				<td>Department</td>
				<td><input type="text" name="deptid" value="<%=c.getDept_id()%>" />
						
				</td>
			</tr>
			
			<tr>
				<td>DESIGNATION</td>
				<td><input type="text" name="desgn" value="<%=c.getEmp_desgn()%>" />
						
				</td>
			</tr>
			
			<tr>
				<td>EMPLOYEE STATUS</td>
				<td><input type="text" name="status" value="<%=c.getEmp_status()%>" />
						
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Update Customer" /></td>
			</tr>

		</table>

	</form>

</body>
</html>