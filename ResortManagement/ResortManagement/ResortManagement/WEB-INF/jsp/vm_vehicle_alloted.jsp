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
<link rel="stylesheet" href="css/resort_styles.css"/>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if(pwd!=null)
 { %>
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
			<legend>Vehicle Alloted</legend>
			<form:form action="#" method="post" commandName="vehicleAllotmentBean">
			<table>
				<tr>
					<td>
						Driver Name:
					</td>
					<td>
						<form:select path="driver_name" id="driver_name"></form:select>
					</td>
					<td>
						Vehile No:
					</td>
					<td>
						<form:select path="vehicle_no" id="vehicle_no"></form:select>
					</td>
					<td>
						Status
					</td>
					<td>
						<form:select path="status" id="status1">
							<form:option value=""></form:option>
							<form:option value="Alloted">Alloted</form:option>
							<form:option value="Free">Free</form:option>
						</form:select>
					</td>
				</tr>
				
			</table>
			</form:form>
			<br/>
			<br/>
			
			
				<table border="1px">
					<tr class="column_header">
						<td>
							Driver Name:
						</td>
						<td>
							Vehicle No
						</td>
						<td>
							Status
						</td>
						<td>
							Today
						</td>
					</tr>
					<c:forEach items="${AllotedList}" var="allotedlist" varStatus="status">
					<tr>
						<td>
							<c:out value="${allotedlist.driver_name}"/>
						</td>
						<td>
							<c:out value="${allotedlist.vehicle_no}"></c:out>
						</td>
						<td>
							<c:out value="${allotedlist.status}"></c:out>
						</td>
						<td>
							<c:out value="${allotedlist.gendate}"></c:out>
						</td>
					</tr>
					</c:forEach>
				</table>
			
		</fieldset>
		
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	
	
<% }
else
{
response.sendRedirect("login.res");
}%>	
</body>
</html>
