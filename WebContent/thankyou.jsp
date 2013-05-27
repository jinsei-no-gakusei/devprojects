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
<title>CONTACT</title>
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
<p>Thank you <%=session.getAttribute( "firstname") %> <%= session.getAttribute( "lastname") %> for your request ... we'll be getting back to you shortly! </p>
</div>
</div>
</body>
</html>