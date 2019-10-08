<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/resort_validation_js.js"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
</head>
<%-- <%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %> --%>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="admin_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
		<fieldset>
			<legend>
				Manager Daily Task 
			</legend>
			<form:form action="rep_sl_taskmanager_by_admin.res" method="get" commandName="salesManagerTastBean" target="_blank">
				<table>
					<tr>
						<td>
							Date:
						</td>
						<td>
							<form:input path="date1" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
						</td>
						<td>
							Employee Id
						</td>
						<td>
							<form:select path="deltby" id="slmanagerids"></form:select>
						</td>
						<td>
							<input type="submit" value="Search"/>
						</td>
					</tr>
					
				</table>
		</form:form>		
			</fieldset> 
	</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<%-- <% }
else
{
response.sendRedirect("login.res");
}%> --%>	
</body>
</html>