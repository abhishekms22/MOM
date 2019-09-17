<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.*,com.quinnox.mom.dao.*,com.quinnox.mom.model.*,com.quinnox.mom.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Dashboard</title>
</head>
<body>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/dashboard.css" rel="stylesheet" type="text/css">

<title></title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- CSS Files -->
<link href="assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="assets/demo/demo.css" rel="stylesheet" />

<%
	String sid = session.getAttribute("id").toString();
	int id = Integer.parseInt(sid);
	ArrayList<String> momAList = new ArrayList<String>();
	ArrayList<String> moms = new ArrayList<String>();
	moms = MomDAO.getMomDetails(momAList, id);
	ArrayList actionsList = new ArrayList();
	ArrayList getList = MomDAO.getActionDetails(actionsList, id);
	List<Actions> getActions = new ArrayList<Actions>();
	List<Actions> storeActions = MomDAO.getActionDetailsForEmp(getActions, id);
	ArrayList<Mom> createdMomList = MomDAO.getCreatorMom(id);
%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$('#submit').click(function(){
		var status = $('#status').val();
		$.ajax({
			type:'POST',
			data:{status:status},
			url : 'ChangeStatus',
			success: function(result)
			{
				$('#sts').html(result);
			}
		})
	});
});
</script>
</head>
<body>


<body class="dark-edition">
	<div class="wrapper ">
		<div class="sidebar" data-color="purple" data-background-color="black"
			data-image="../assets/img/sidebar-2.jpg">
		
			<div class="logo">
				<a href="#" class="simple-text logo-normal"> ABC Ltd. </a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item active  "><a class="nav-link"
						href="./dashboard.html"> <i class="material-icons">dashboard</i>
							<p>Dashboard</p>
					</a></li>
					<li class="nav-item "><a class="nav-link"
						href="UserProfile.html"> <i class="material-icons">person</i>
							<p>User Profile</p>
					</a></li>
					<ul class="nav">
						<li class="nav-item  "><a class="nav-link"
							href="DemoGenerateMom.jsp"> <i class="material-icons">content_paste</i>
								<p>Generate MoM</p>
						</a></li>

					</ul>
			</div>
		</div>
		<div class="main-panel">

			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top "
				id="navigation-example">
			<div class="container-fluid">
				<div class="navbar-wrapper">
					<a class="navbar-brand" href="javascript:void(0)">Dashboard of Employee
						</a>
                </div>
               
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-controls="navigation-index" aria-expanded="false"
					aria-label="Toggle navigation" data-target="#navigation-example">
					<span class="sr-only">Toggle navigation</span> <span
						class="navbar-toggler-icon icon-bar"></span> <span
						class="navbar-toggler-icon icon-bar"></span> <span
						class="navbar-toggler-icon icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end">

					<ul class="navbar-nav">

						<li class="nav-item"><a class="nav-link"
							href="javascript:void(0)"> <i class="material-icons">person</i>
								<p class="d-lg-none d-md-block">Account</p>
						</a></li>
					</ul>
				</div>
			</div>
            </nav>

            
			<div class="content">
                    
				<div class="container-fluid">
					<div class="row">
						<div class=" col-6">
							<div class="card card-chart" style="width:90%;">
					
                                    <div class="card-header card-header-primary">
                                            <center><h4 class="card-title mt-0"> Meetings Attended</h4></center>
                                          </div>
								<div class="card-body" >
                                        <%
										for (String m : moms) {
									%>
									<table>
										<tr>
											<td><%=m%></td>
										</tr>

									</table>
									<%
										}
									%>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons"></i>
									</div>
								</div>
							</div>
                        </div>
                        
                        
                        <div class=" col-6  float-right">
                            <div class="card card-chart" style="width:90%;float:right;">
                                    <div class="card-header card-header-primary">
                                            <center><h4 class="card-title mt-0">MoMs Generated </h4></center>
                                          </div>
                        <div class="card-body">
                            <!-- <h4 class="card-title" style="text-align: center;">MoMs generated by you</h4> -->
                            <center>
                            <table border="1" bordercolor="white";  style="width:100%;">
                                <th style="text-align:center;">Meeting Time</th>
                                <th style="text-align:center;">Meeting purpose</th>
                                <%
											for (Mom m : createdMomList) {
										%>



                                <tr>
                                    <td><%=m.getMom_s_date() %></td>
                                    <td><%=m.getMom_purpose() %></td>
                                </tr>
                                <%
											}
										%>
                                
                            </table>
                        </center>
                        </div>

                        <div class="card-footer">
                                <div class="stats">
                                    <i class="material-icons"></i>
                                </div></div>

                      
                    </div>
                </div>

                <div class=" col-6">
                    <div class="card card-chart" style="width:90%;">
                            <div class="card-header card-header-primary">
                                    <center><h4 class="card-title mt-0"> Action Approval</h4></center>
                                  </div>
                       <div class="card-body">
                            <!-- <h4 class="card-title" style="text-align: center;">Action Approval</h4> -->
                               


                        <table  border="1" bordercolor="white"; >
                        <th style="text-align:center;">Action Id</th>
                        <th style="text-align:center;">Action name</th>
                        <th style="text-align:center;">Action Status </th>
                        <th style="text-align:center;"> Assigned to </th>
                        <th style="text-align:center;"> Confirm </th>
                        <% ArrayList<Actions> aList = new ArrayList<Actions>();
                                aList = ActionDAO.getRFCActions(id);
                                for(Actions a : aList){
                            %>
                        
                        
                        <tr>
                                <td><%=a.getActionId() %></td>
								<td><%=a.getActionName() %></td>
								<td><%=a.getStatus()%></td>
								<td><%=a.getAssignedTo()%></td>
								
                        
                        <td>
                        
                        <form action="SetComplete">
                            <input type="hidden" name="actionid" value="<%=a.getActionId()%>"/>
                            
                            <input type="submit" name="accept "value="Completed/Accept">
                        </form>
                        
                        </td>
                        
                        
                        
                        </tr>
                        
                        <%} %>
            
                </table>
                        </div>


                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons"></i> 
                            </div>
                        </div>
                    </div>
                </div>
                <% 
                
                ArrayList<Integer> info = new ArrayList<Integer>();
                info = MomDAO.getUserInfo(id);
                %>
            
						<div class="col-6">
                            <div class="card card-chart" style="width:90%;float: right;">
                                    <div class="card-header card-header-primary">
                                            <center><h4 class="card-title mt-0"> Actions Assigned</h4></center>
                                          </div>
								<div class="card-body">
        
								
									<table  border="1" bordercolor="white"; >
										<thead>
											<th style="text-align:center;">Action Id</th>
											<th style="text-align:center;">Action name</th>
											<th style="text-align:center;">Action status</th>
											<th style="text-align:center;">Change Status</th>
										</thead>
										<tbody>





										</tbody>
										<%
											for (Actions a : storeActions)
											{
										%>

										<tr>

												<td><%=a.getActionName()%></td>
											<td><%=a.getActionName()%></td>
											<td id="sts"><%=a.getStatus()%></td>


											<td>

												<form action="ChangeStatus" id="actionsForm">
													<input type="hidden" name="aid"
														value="<%=a.getActionId()%>" /> <select
														class="mdb-select md-form" name="status">
														<option value="" disabled selected>Choose status</option>
														<option value="WIP">Work in progress</option>
														<option value="RFC">Ready for Closure</option>
													</select> <input id="submit" class="btn btn-primary btn-sm"
														type="submit" name="sub" />
												</form>

											</td>

                                        </tr>
                                        <%
											}
										%>

										
									</table>



								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons"></i>
									</div>
								</div>
							</div>
						</div>
					
						<div class="col-xl-7 col-lg-14">
							<div class="card card-chart">
					
							</div>
						</div>
							
					<script>
						const x = new Date().getFullYear();
						let date = document.getElementById('date');
						date.innerHTML = '&copy; ' + x + date.innerHTML;
					</script>
				</div>
			</div>
			
			
</body>

</body>
</html>