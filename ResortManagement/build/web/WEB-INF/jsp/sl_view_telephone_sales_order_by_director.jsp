<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if(pwd!=null)
 { %>
<body onload="">
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="sl_director_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<fieldset>
				<legend>
					Telephone Sales Order
				</legend>
				<table border="1">
					<tr class="column_header">
						<td>
							Customer
						</td>
						<td>
							Sales Person
						</td>
						<td>
							Ship To
						</td>
						<td>
							Ship Week Of
						</td>
						<td>
							Item
						</td>
						<td>
							Quantity Ordered
						</td>
						<td>
							Unit Count
						</td>
						<td>	
							Unit Price
						</td>
						<td>
							Date
						</td>
						<td>
							Approval Name
						</td>
						<td>
							Purchase Name
						</td>
						<td>
							Title
						</td>
						<td>
							Manager
						</td>
						<td>
							DeltBy
						</td>
						
					</tr>
					<c:forEach items="${telephonesalesorderbydirector}" var="slpolist" varStatus="status">
					<tr>
						
						<td>
							<c:out value="${slpolist.customer}"></c:out>
						</td>
						
						<td>
							<c:out value="${slpolist.salesperson}"></c:out>
						</td>
						<td>
							<c:out value="${slpolist.shipto}"></c:out>
						</td>
						<td>
							<c:out value="${slpolist.shipweek}"></c:out>
						</td>
						<td>	
							<c:out value="${slpolist.item}"></c:out>
						</td>
						<td>
							<c:out value="${slpolist.quantityordered }"></c:out>
						</td>
						
						<td>
							<c:out value="${slpolist.unitcount}"></c:out>
						</td>
						<td>
							<c:out value="${slpolist.unitprice}"></c:out>
						</td>
						
						<td>
							<c:out value="${slpolist.date}"></c:out>
						</td>
						<td>	
							<c:out value="${slpolist.approvalname}"></c:out>
						</td>
						<td>
							<c:out value="${slpolist.purchasername }"></c:out>
						</td>
						<td>
							<c:out value="${slpolist.title }"></c:out>
						</td>
							<td>
							<c:out value="${slpolist.manager}"></c:out>
						</td>
						<td>	
							<c:out value="${slpolist.deltby}"></c:out>
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