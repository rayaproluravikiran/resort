<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<link rel="stylesheet" href="css/menu.css"/>
<script>
function disableBackButton()
 {
  //location.href("logout.html");

 }
if(window.history.forward(1) != null)
         window.history.forward(1);
</script>
</head>
<body><%String username=(String)session.getAttribute("username");
%>
<span id="loginby"><b>Welcome </b>: <i><%=username%></i></span>
<span id="dateandtime"></span>
<div id="menu" align="left">
    <ul class="menu">
        <li><a href="tele_agent_main.res" class="parent"><span>LayOut</span></a></li>
       <li><a href="view_guest_by_agent.res" class="parent"><span>Guests List</span></a>
       			
       </li>
       <li>
       	<a href="rep_villadetails.res" target="_blank"><span>Villa Details</span></a>
       	
       </li>
        <li class="last"><a href="logout.res"><span>logout</span></a></li>
    </ul>
    
</div>


<script type="text/javascript">
$(document).ready(function(){
$("body div:last").remove();
});
</script>

</body>
</html>