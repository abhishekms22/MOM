<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,com.quinnox.mom.dao.*,com.quinnox.mom.model.Employees,com.quinnox.mom.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<h1 align="center" style="color:Red">Employees List</h1>
	<div align="center">
		
	</div>
	<%
		List<Employees> list =EmployeeDAO.getAllEmployees();
		
	%>
	<div class="test">
		<table border=1>
			<tr>
				<th>EMPLOYEE ID</th>
				<th>EMPLOYEE NAME</th>
				<th>EMAIL</th>
				<th>PASSWORD</th>
					
				<th>DESIGNATION</th>
				<th>STATUS</th>
				<th>START DATE</th>
				<th>DEPARTMENT ID</th>
			</tr>
			<%
				for (Employees i : list) {
			%>
			<TR>
				<TD><%=i.getEmp_id()%></TD>
				<TD><%=i.getEmp_name()%></TD>
				<TD><%=i.getEmp_email()%></TD>
				<TD><%=i.getEmp_pass()%></TD>
				<TD><%=i.getEmp_desgn()%></TD>
				<TD><%=i.getEmp_status()%></TD>
				<TD><%=i.getEmp_startdate()%></TD>
				<TD><%=i.getDept_id()%></TD>
				<TD><a href="UpdateEmployee.jsp?id=<%=i.getEmp_id()%>">Edit</a></TD>
				<TD><a href="">Deactivate</a></TD>
			</TR>
			<%
				}
			%>
	

		</table>
	</div>
</body>
</body>
</html>
