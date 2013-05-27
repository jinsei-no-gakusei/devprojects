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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOG IN</title>
<link rel="stylesheet" type="text/css" href="CSS3.css">
</head>

<body>
<div  class="lbdiv" id="container">
<table class="" border="0" cellpadding="2" cellspacing="2" width="100%" >
<tbody>
<tr>
<td colspan="3"><img src="thesishtml/nike1.jpg" alt="banner"></td>
</tr> 
</tbody>
</table>

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
       &nbsp;&nbsp;|&nbsp;&nbsp;</h3></td>
      

    </tr>

  </tbody>

</table>
</div>



<div class="lbdiv" id="content">
<form action="LoginController" method="post">

<table class="lbdiv" style="background-color:white;border="0" cellpadding="2" cellspacing="2" width="100%">



<tr>

<td width="25%">
<h1>User name</h1>
</td>
<td width="25%"><input id="username" name="username" size="20" type="text"></td>
</tr>

<tr>
<td>
<h1>Password</h1>
</td>
<td><input id="passwd" name="passwd" size="20" type="password"/></td>
</tr>
<tr>
<td><input type="submit" value="login"/></td>
<td></td>
</tr>

</table>
</form>
</div>
</div>
</body>
</html>