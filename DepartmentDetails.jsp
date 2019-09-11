<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,com.quinnox.mom.dao.*,com.quinnox.mom.model.Departments,com.quinnox.mom.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<h1 align="center" style="color:Red">Departments List</h1>
	<div align="center">
		
	</div>
	<%
		List<Departments> list =EmployeeDAO.getAllDepartments();
		
	%>
	<div class="test">
		<table border=1>
			<tr>
				<th>DEPARTMENT ID</th>
				<th>DEPARTMENT NAME</th>
				
			</tr>
			<%
				for (Departments i : list) {
			%>
			<TR>
				<TD><%=i.getDept_id()%></TD>
				<TD><%=i.getDept_name()%></TD>
				
				
			</TR>
			<%
				}
			%>
	

		</table>
	</div>
</body>
</body>
</html>