<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript" src="js/adding_rows.js"></script>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="sl_executive_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<fieldset>
				<legend>PettyCashJournal List By Executive</legend>
				<table border="1">	
					<tr class="column_header">
						<td>
							Department
						</td>
						<td>
							Vocher
						</td>
						<td>
							Approved By	
						</td>
						<td>
							Audited By
						</td>
						<td>
							Approved By1
						</td>
					</tr>
					<c:forEach items="${slpetjbexe}" var="slpettycash" varStatus="status">
					<tr>	
						<td>
							<a href="rep_sl_PettyCashJournal_by_executive_list.res?sno=${slpettycash.sno}"><c:out value="${slpettycash.department}"/></a>					
						</td>
						<td>
							<c:out value="${slpettycash.vocher}"></c:out>
						</td>
						<td>
							<c:out value="${slpettycash.approvedby}"></c:out> 
						</td>
						<td>
							<c:out value="${slpettycash.auditedby}"></c:out>
						</td>
						<td>
							<c:out value="${slpettycash.approvedby1}"></c:out>
						</td>
					</tr>
					</c:forEach>
				</table>
			</fieldset>
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<%session.removeAttribute("successmsg"); %>
	<% }
else
{
response.sendRedirect("login.res");
}%>	
</body>
</html>