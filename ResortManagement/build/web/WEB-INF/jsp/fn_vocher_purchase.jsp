<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta charset='utf-8'/>
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//alert('Hai');
		$.get('hlp_displayPaymentMode.res',function(data){
			//alert(data);
			$('#paymentmode').html(data);
		});
		$.get('hlp_displayPurchaseLedger.res',function(data){
			//alert(data);
			$('#purchase_ledger').html(data);
		});
		$.get('hlp_displayStockItem.res',function(data){
			//alert(data);
			$('#itemname').html(data);
		});
		$.get('hlp_displayMesurements.res',function(data){
			//alert(data);
			$('#mesurements').html(data);
		});
		$('#paymentmode').blur(function(){
			//alert('Hello');
			var ledgername=$('#paymentmode').val();
			//alert(ledgername);
			$.get('ledgerAmount.res',{'ledgername':ledgername},function(data){
				//alert(data);
				$('#balance').val(data);
			});	
		});
		//Amount
		$('#rate').blur(function(){
			var qaunt=$('#quantity').val();
			var amount=$('#rate').val();
			var total=qaunt*amount;
			//alert(total);
			$('#total').val(total).prop('readonly',true);
			
		});
		$.get('hlp_PurchaseDetailsRecptNo.res',function(data){
			//alert(data);
			var recptno=parseInt(data)+1;
			$('.recptno').val(recptno);
		});
		return false;
	});
</script>

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
<fieldset><legend>Purchase</legend><span id="successmsg">${successmsg}</span>
<form:form action="sfn_voucher_purchase.res" method="post" commandName="vocherPurchaseBean">
<table align="center" width="800" border="1">
 
 <tr>
  <td width="392">

    Receipt No.

  </td>
  <td width="392">

	<form:input path="reciptno" class="recptno"/>

  </td>
 </tr>

 <tr>
 <td> 
    Ref:
   </td>
 <td> 
	 	<form:input path="refenceno" class="recptno"/> 
</td>
 </tr>

 <tr> 
 <td> 
    Date
   </td> 
 <td>   
 	<form:input path="date" class="todaydate"/>
 	  
 </td>
 </tr>

 
 <tr>
  <td>
   
    Payment Mode
   
   </td>
   <td>
	<form:select path="paymentmode" id="paymentmode">
		
	</form:select> 
	 
   </td>
 </tr>
<tr>
  <td width="392">
   
    Current Balance
   
  </td>
  <td width="392">
   <form:input path="currentbalance" id="balance"/>
   
  </td>
 </tr>

 <tr>
  <td>
   
   Purchase Ledger
   
  </td>
  <td>

   <form:select path="purchaseledger" id="purchase_ledger"></form:select>
   
  </td>
  </tr>

  <tr>
  <td> 
  
 Name of Item
    
  </td>
	<td>
	<form:select path="nameofitems" id="itemname"></form:select>
   
  </td>
  
  </tr>

  <tr>
   <td>
   
	 Quantity
	
   </td>
   <td>
    <form:input path="quantity" id="quantity"/>
   </td>
  </tr>


  

 <tr>
  <td width="392">
   
    Units
   
  </td>
  <td >

   <form:select path="units" id="mesurements">
   	<form:option value=""></form:option>
   </form:select>
	  
	  
   
  </td>
 </tr>

 <tr>
  <td width="392">
   
    Rate(Rupees)
   
  </td>
  <td>
  	<form:input path="rate" id="rate"/>
   
  </td>
 </tr>
  

  <tr>
  <td width="392">
   
    Amount
   
  </td>
  <td >
   <form:input path="amount" id="total"/>
   
  </td>
 </tr>
  
  
   <tr>
  <td width="392">
   
    Narration
   
  </td>
  <td width="392" >
   <form:textarea path="narration"/>
   
  </td>
 </tr>
  <tr>
  	<td>
  	</td>
  	<td>
  		<input type="image" src="images/submit_button.jpg" id="button1"/>
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