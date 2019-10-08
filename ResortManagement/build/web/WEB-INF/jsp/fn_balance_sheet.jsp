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

<link rel="stylesheet" href="css/resort_styles.css"/>

</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body onLoad="displayBalanceSheet();">
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
					Balance Sheet
				</legend>
				<table border="1" align="center" width="980px" height="400px"> 
					
					<tbody align="left">
					
						<tr>
							<td>
								<table width=450px height="400px">
									<thead>
						<tr>
							
							<th align="center">Liabilities</th>
							
							
							
							
						</tr>
					</thead>
									<tr>
										<td>
											<a href="#">Capital Account</a>
										</td>
										<td>
											<span id="capital_account"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="#">Reverse Surplus</a>
										</td>
										<td>	
											<span id="reserve_surplus"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="#">Loans (Liability)</a>
										</td>
										<td>
											<span id="loansandliabilites"></span>
										</td>										
									</tr>
									<tr>
										<td>
											<a href="fn_total_sundry_creditors.res">Sundary Creditors</a>
										</td>
										<td>
											<span id="sundary_creditors"></span>
										</td>
									</tr>		
									<tr>
										<td>
											<a href="#">Current Liabilities</a>
										</td>
										<td>
											<span id="current_liabilites"></span>
										</td>
									</tr>
									<tr>
										<td>
										<a href="#">Other Current Liabilities</a>
										</td>
										<td>
											<span id="other_current_liabilites"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="#">Suspense-A/C</a>
										</td>
										<td>
											<span id="suspense_ac"></span>
										</td>
									</tr>
									
									
									
									<tr>
										<td>
											
										</td>
									</tr>
									<tr>
										<td class="border_up_down" align="left">
											Total:
										</td>
										<td class="border_up_down" align="right">
											<span id="bsliabilites"></span>
										</td>
									</tr>
																	
									
								</table>
							</td>
							
							<td>
							<table width="450px" height="400px">
								<tr>
										
								<th align="center">Assets</th>
								</tr>
								<tr>	
										<td>
											<a href="#">Fixed Assets</a>
										</td>
										<td>
											<span id="fixed_assets_value"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="#">Bank&Cash</a>
										</td>
										<td>
											<span id="bank_cash"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="fn_bl_current_assets.res">Current Assets</a>
										</td>
										<td>
											<span id="current_assets1"></span>
										</td>
										
									</tr>
									<tr>
										<td>
											<a href="#">Investments</a>
										</td>
										<td>
											<span id="investments"></span>
										</td>
									</tr>
									
									<tr>
										<td>
											<a href="#">Loans & Advances(Assets)</a>
										</td>
										<td>
											<span id="loanlibilites"> </span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="#">Inventory</a>
										</td>
										<td>
											<span id="investory"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="#">Provisions</a>
										</td>
										<td>
											<span id="provisions"></span>
										</td>
									</tr>
									
									<tr> 
									
										<td class="border_up_down" align="left">Total</td><td class="border_up_down" align="right"><span id="totalassets"></span> </td>
									</tr>
								</table>
							</td>
							
							
						</tr>
					</tbody>
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