<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.*" %> 
	<%@ page import="edu.claflin.thesis.bean.*" %> 
	<%@ page import="edu.claflin.thesis.pojo.*" %> 
    
    <jsp:useBean id="login" class="edu.claflin.thesis.bean.Login" scope="session" />
    <jsp:useBean id="cart" class="edu.claflin.thesis.bean.Cart" scope="session" />

<% 

	boolean loggedIn = false;

	if ( login != null ) {

		loggedIn = login.isLoggedIn();
	
	}

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MEN</title>
<link rel="stylesheet" type="text/css" href="CSS4.css">

<script language="javascript">

	function proceedToCheckOut() {
		
		var url = "CheckoutController";
		
		document.location=url;
		
	}

</script>

</head>

<body style="background-image: url(bg.png);">

<div id="container">

<!-- Banner image -->

<div>

<table border="0" cellpadding="2" cellspacing="2" width="100%">

  <tbody>

    <tr>

      <td colspan="3"><img src="thesishtml/kobe.png"></td>

    </tr>

  </tbody>

</table>

</div>

<!-- links -->

<hr>

<div class="graydiv">

<table style="text-align: left; width: 100%;" border="0" cellpadding="2" cellspacing="2">
<tbody>
<tr>

      <td> <h3>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="home.jsp"><img src="thesishtml/home.png"></a>&nbsp;&nbsp;|&nbsp;&nbsp;
       <a href="men.jsp">MEN</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="women.jsp">WOMEN</a>&nbsp;&nbsp;|&nbsp;&nbsp;
       
       
       <% if ( !loggedIn ) { %>
       
       		<a href="login.jsp">Login</a>
       
       <% } else { %>
       
       		<a href="javascript:document.location='LoginController?event=logout'">Logout</a>
       
       <%  }  %>
       
       
       &nbsp;&nbsp;|&nbsp;&nbsp;<a href="contact.jsp"><img src="thesishtml/contact.png"></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="cart.jsp"><img src="thesishtml/cart1.jpg"></a>
       &nbsp;&nbsp;|&nbsp;&nbsp;</h3></td>
      

    </tr>

  </tbody>

</table>
</div>

<div class="changediv" id="content">

<% 

	String hexColor = "#ffffff";

	if ( cart != null ) {
		
		%> 
		
		<table style="text-align: left; width: 100%;" border="0" cellpadding="2" cellspacing="2"> 
		<tr>
			<td colspan=4 align="center"><h1>Male Shoes</h1></td>
		</tr>
		<tr>
			<th></th>
			<th>Brand</th>
			<th>Product</th>
			<th>Quantity</th>
			<th>Price</th>
			<th>Total</th>
		</tr>
		
		<% 
		
		int numberOfMaleItems = cart.getTotalNumberOfMaleItems();
		
		for ( int i=0; i<numberOfMaleItems; i++ ) {
			
			hexColor = ( i % 2 == 0 ) ? "#ffffff" : "#D8D8D8";
			
			%> <tr bgcolor="<%=hexColor%>"> <%
			
			CartItem item = cart.getMaleItem( i );
			
			%> <td> <a href="javascript:document.location='CartController?gender=male&item=<%=i%>'">remove</a> </td><%
			%> <td> <%=item.getBrand() %> </td><%
			%> <td> <%=item.getProduct() %> </td><%
			%> <td> <%=item.getQuantity() %> </td><%
			%> <td> <%=String.format("$ %.2f", item.getPrice() )%> </td><%
			%> <td> <%=String.format("$ %.2f", item.getTotal() ) %> </td><%
			
			%> </tr> <%
		}
		
		%>
		<tr>
		<td><a href="javascript:document.location='CartController?gender=male&item=-1'">Remove All</a></td>
		<td></td>
		<td>Number of Items</td>
		<td><%=cart.getMaleTotalItems() %></td>
		<td>Grand Total</td>
		<td><%=String.format("$ %.2f", cart.getMaleTotalCost() ) %></td>
		</tr>
		<% 
		%> </table> <%
		
	%> 
		
		<table style="text-align: left; width: 100%;" border="0" cellpadding="2" cellspacing="2"> 
		<tr>
			<td colspan=4 align="center"><h1>Female Shoes</h1></td>
		</tr>
		<tr>
			<th></th>
			<th>Brand</th>
			<th>Product</th>
			<th>Quantity</th>
			<th>Price</th>
			<th>Total</th>
		</tr>
		
		<% 
		
		int numberOfFemaleItems = cart.getTotalNumberOfFemaleItems();
		
		for ( int i=0; i<numberOfFemaleItems; i++ ) {
			
			hexColor = ( i % 2 == 0 ) ? "#ffffff" : "#D8D8D8";
			
			%> <tr bgcolor="<%=hexColor%>"> <%
			
			CartItem item = cart.getFemaleItem( i );
			
			%> <td> <a href="javascript:document.location='CartController?gender=female&item=<%=i%>'">remove</a> </td><%
			%> <td> <%=item.getBrand() %> </td><%
			%> <td> <%=item.getProduct() %> </td><%
			%> <td> <%=item.getQuantity() %> </td><%
			%> <td> <%=String.format("$ %.2f", item.getPrice() )%> </td><%
			%> <td> <%=String.format("$ %.2f", item.getTotal() ) %> </td><%
			
			%> </tr> <%
		}
		
		%>
		<tr>
		<td><a href="javascript:document.location='CartController?gender=female&item=-1'">Remove All</a></td>
		<td></td>
		<td>Number of Items</td>
		<td><%=cart.getFemaleTotalItems() %></td>
		<td>Grand Total</td>
		<td><%=String.format("$ %.2f", cart.getFemaleTotalCost() ) %></td>
		</tr>
		<% 
		%> </table> <%
		
		
	} 
	
	%>
	
	<table style="text-align: left; width: 100%;" border="0" cellpadding="2" cellspacing="2"> 
		<tr>
			<td><button type="button" onclick="proceedToCheckOut()">Proceed to Checkout</button></td>
		</tr>
	</table>

</div>



</div>
</body>
</html>