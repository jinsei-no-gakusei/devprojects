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
<title>Checkout</title>
<link rel="stylesheet" type="text/css" href="CSS3.css">
</head>

<body>
<div id="container">
<table class="bord" border="0" cellpadding="2" cellspacing="2" width="100%" >
<tbody>
<tr>
<td colspan="3"><img src="thesishtml/nike1.jpg" alt="banner"></td>
</tr> 
</tbody>
</table>

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
		<td>Total</td>
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
		<td>Total</td>
		<td><%=String.format("$ %.2f", cart.getFemaleTotalCost() ) %></td>
		</tr>
		<%
		
		
		%>
		<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>Grand Total:</td>
		<td><%=String.format("$ %.2f", cart.getGrandTotal() ) %></td>
		</tr>
		<% 
		%> </table> <%
		
		
     } 
	
	%>
	

	
	
<hr />	
	
	<div class="changediv" id="content">
	
	<form action="" method="post">

<table class="changediv" style="background-color:white;border="0" cellpadding="2" cellspacing="2" width="100%">




<h1 align="left">Bill to:</h1>
<tr>

<td width="25%">
<h1>Full Name</h1>
</td>
<td width="25%"><input id="prenom" name="prenom" size="20" type="text"></td>
<td width="25%"></td>

</tr>

<tr>
<td>
<h1>Card Type</h1>
</td>
<td width="25%">

            <select id="card_type" name="card_type">
            <option value=discover>Discover</option>
            <option value=mastercard>MasterCard</option>
            <option value=Paypal>Paypal</option>
            <option value=Visa>Visa</option>

            </select>

            </td>

</tr>


<tr>
<td>
<h1>Card Number</h1>
</td>
<td><input id="card" name="card" size="20" type="text"/></td>
</tr>

<tr>
<td>
<h1>Expiration Date</h1>
</td>
<td><input id="nom" name="nom" size="20" type="text"/></td>
</tr>

<hr />

<tr>
<td>
<h1 align="left">Ship to:</h1>
</td>
</tr>

<tr>

<td width="25%">
<h1>Full Name</h1>
</td>
<td width="25%"><input id="prenom" name="prenom" size="20" type="text"></td>
<td width="25%"></td>

</tr>


<tr>
<td>
<h1>Street</h1>
</td>
<td><input id="nom" name="nom" size="20" type="text"/></td>
</tr>

<tr>
<td>
<h1>City</h1>
</td>
<td><input id="nom" name="nom" size="20" type="text"/></td>
</tr>

<tr>
<td>
<h1>State</h1>
</td>
<td>

            <select  id="state" name="state">
            <option value=SC>South Carolina</option>
            <option value=NC>North Carolina</option>
            <option value=GA>Georgia</option>
            <option value=MD>Maryland</option>

            </select>

            </td>

</tr>

<tr>
<td>
<h1>Zip</h1>
</td>
<td><input id="nom" name="nom" size="20" type="text"/></td>
</tr>




	
</table>
</form>
</div>

<hr />
	
	<table style="text-align: left; width: 100%;" border="0" cellpadding="2" cellspacing="2"> 
		<tr>
			<td><button type="button" onclick="CheckOut()">Checkout</button></td>
		</tr>
	</table>

</div>


</div>
</body>
</html>