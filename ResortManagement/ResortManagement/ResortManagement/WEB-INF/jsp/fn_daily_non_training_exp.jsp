<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
 if((username!=null)&&(pwd!=null))
 { %>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="fn_executive_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
<fieldset><legend>Weekly Expenceses</legend>
<form:form action="sfn_daily_non_training_exp.res" method="post" commandName="nonTradingExpencesesBean">
<table align="center" width="800" border="1" >
 <tr>
  <td>
   <table align="center" border="1" >
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Employee ID</font>
	 </td>
	 <td>
	  <form:select path="empid" id="empid1" />
	  
	 </td>
	  <td>
	  <font color="#573801" face="verdana" size="2">
	   Phone
	  </font>
	 </td>
	 <td>
	   <form:input path="phoneno"/>
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Location
	  </font>
	 </td>
	 <td>
	   <form:input path="location"/>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Approved By
	  </font>
	 </td>
	 <td>
	 	<form:input path="approvedby"/>
	   
	 </td>
	 
	</tr>
	<tr>
	  <td>
	  <font color="#573801" face="verdana" size="2">
	   Dept
	  </font>
	 </td>
	 <td>
	 	<form:select path="department">
	 		<form:option value="Sales"/>
	 		<form:option value="Finance"/>
	 		<form:option value="Accounts"/>
	 	</form:select>
	   
	 </td>
	<td>
		Ledger Name
	</td>	 
	<td>
		<form:select path="ledgername" id="ledgerlist"></form:select>
	</td>
	 
	 
	</tr>
	<tr>
	 
	 
	 
	 
	 
	</tr>
	<tr>
	 
	 
	 
	</tr>
	
   </table>
  </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1" width="800">
	 <tr>
	  <td width="258">
	   <font color="#573801" face="verdana" size="2">Date</font>
	  </td>
	  <td width="258">
	   <font color="#573801" face="verdana" size="2">Day</font>
	  </td>
	 
	 <td>
	  	  <font color="#573801" face="verdana" size="2">Item name</font>

	 </td>
	  
	 <td>
	  	  <font color="#573801" face="verdana" size="2">Qty</font>

	 </td>
	  
	   
	  
	   <td width="234">
	    <font color="#573801" face="verdana" size="2">Amount</font></td>
	 </tr>
	 <tr>
	  <td>
	   <form:input path="date1" onfocus="showCalendarControl(this);" readonly="true"/>
	   </td>
	    <td width="543">
	    	    <form:select path="day1">
	    	<form:option value="Sun"/>
	    	<form:option value="Mon"/>
	    	<form:option value="Tue"/>
	    	<form:option value="Wed"/>
	    	<form:option value="Thu"/>
	    	<form:option value="Fri"/>
	    	<form:option value="Sat"/>
	    </form:select>
	</td>
	   
	   <td>
	    <form:input path="itemname"/>
	   </td>
	   <td>
	    <form:input path="quantity"/>
	   </td>
	   
	  
	   <td>
	   <form:input path="amount"/>
	   </td>
	 </tr>
	 <tr>
	  <td colspan="7" align="center">	 
	     <input type="image" src="images/submit_button.jpg" id="button1"></td>
	  </tr>
	</table>
   </td>
  </tr>
</table>
</form:form>
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
