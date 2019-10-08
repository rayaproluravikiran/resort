<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/HRDetails.js"></script>

<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/CalendarControl.js"></script>
<link rel="stylesheet" href="css/CalendarControl.css" />
<link rel="stylesheet" href="css/resort_styles.css" />
<link rel="stylesheet" href="css/style.css"/>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<script src="js/employeeGrid.js"></script>
<script>
            var username = '';</script>
</head>
<%
	String username = (String) session.getAttribute("username");
	String pwd = (String) session.getAttribute("password");
	//System.out.println("hi"+username);
	//System.out.println("hi"+pwd);
	if ((username != null) && (pwd != null)) {
%>
<script>
        var username = '<%=username%>
	';
</script>
<!--<body onload="fetchEmployeeDetails();">-->
<body onload="leaveGrid();">
	<div class="project_title">
		<img src="images/logo_image123.jpg" alt="logo" id="logo" height="50px"
			width="100px" /> <span id="proj_title">RESORT MANAGEMENT</span> <span
			id="username_lbl"></span>

	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">
			<jsp:include page="hr_ex_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<div class="content_header">
			<div class="clear"></div>
				<div class="left">
					<a href="employee_details.res" class="primarybt left">new Employee</a>
				</div>
			</div>
			<div id="leaveGrid"></div>
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<%
		} else {
			response.sendRedirect("login.res");
		}
	%>

</body>

</html>
