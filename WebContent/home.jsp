<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="login" class="edu.claflin.thesis.bean.Login" scope="session" />

<% 

	boolean loggedIn = false;

	if ( login != null ) {

		loggedIn = login.isLoggedIn();
	
	}

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><style type="text/css"></style>
<link rel="stylesheet" type="text/css" href="csstwo.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body>

<div  align="center"   id="container">





<div>
<table border="0" cellpadding="2" cellspacing="2" width="100%">
<tr>
<td align="center">
<h1><i>5aLIVE</i><sup>TM</sup></h1>
</td>
</tr>
</table> 
</div>



<div class="">

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
       &nbsp;&nbsp;|&nbsp;&nbsp;<a href="">Sign Up</a>&nbsp;&nbsp;|&nbsp;&nbsp;</h3></td>
      

    </tr>

  </tbody>

</table>
</div>





<div>
<table>
<tr>
<td align="center"><h2 align="center">NIKE COLL3CTIBL3S...</h2><br />
<h2 id="content" align="center">
<% if ( loggedIn ) { %>

	Hello - <%=login.getUsername() %>

<% } else { %>

	NIKE JUST DO IT!

<% } %>

</h2>
</td>
</tr>
</table>
</div>




<div class="bluediv"  id="content">
<table  border="1" cellpadding="2" cellspacing="2" width="100%">
<tr>


<td>
<table border="1" cellpadding="2" cellspacing="2" width="100%">
<tr>
<td align="center"><img src="Images/img1.jpg"></td></tr>
</table>
</td>

<td>
<table border="1" cellpadding="2" cellspacing="2" width="100%">
<tr>
<td align="center"><img src="Images/img2.jpg"></td>
</tr>
</table>
</td>

<td>
<table border="1" cellpadding="2" cellspacing="2" width="100%">
<tr>
<td align="center"><img src="Images/img3.jpg"></td>
</tr>
</table>
</td>
</tr>


<tr>
<td>
<table border="1" cellpadding="2" cellspacing="2" width="100%">
<tr>
<td align="center"><img src="Images/img4.jpg"></td>
</tr>
</table>
</td>



<td>
<table border="1" cellpadding="2" cellspacing="2" width="100%">
<tr>
<td align="center"><img src="Images/img5.jpg"></td>
</tr>
</table>
</td>


<td>
<table border="1" cellpadding="2" cellspacing="2" width="100%">
<tr>
<td align="center"><img src="Images/img19.jpg"></td>
</tr>
</table>
</td>
</tr>


<tr>
<td>
<table border="1" cellpadding="2" cellspacing="2" width="100%">
<tr>
<td align="center"><img src="Images/img7.jpg"></td>
</tr>
</table>
</td>

<td>
<table border="1" cellpadding="2" cellspacing="2" width="100%">
<tr>
<td align="center"><img src="Images/img8.jpg"></td>
</tr>
</table>
</td>

<td>
<table border="1" cellpadding="2" cellspacing="2" width="100%">
<tr>
<td align="center"><img src="Images/img9.jpg"></td>
</tr>
</table>
</td>
</tr>


</table>
</div>


<tr>

<td align="right"><h3><a href="">SHOP NOW</a></h3></td>

</tr>



</div>
</body>
</html>