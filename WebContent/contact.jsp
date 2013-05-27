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
       &nbsp;&nbsp;|&nbsp;&nbsp;<a href="">Sign Up</a>&nbsp;&nbsp;|&nbsp;&nbsp;</h3></td>
      

    </tr>

  </tbody>

</table>
</div>



<div class="changediv" id="content">
<form action="ContactController" method="post">

<table class="bordtwo" style="background-color:white;border="0" cellpadding="2" cellspacing="2" width="100%">



<tr>

<td width="25%">
<h1>First Name</h1>
</td>
<td width="25%"><input id="prenom" name="prenom" size="20" type="text"></td>
<td width="25%"></td>

<td class="logo" rowspan="3"  width="25%"><img style="text-align:center" src="Images/support.png"></td>
</tr>

<tr>
<td>
<h1>Last Name</h1>
</td>
<td><input id="nom" name="nom" size="20" type="text"/></td>
</tr>


<tr>
<td>
<h1>E-mail</h1>
</td><td><input id="lemail" name="lemail" size="20" type="text"/></td>
<td><select id="lemail_type" name="lemail_type"><option>Home</option><option>Cell</option><option>Work</option></select></td>
</tr>


<tr>
<td>
<h1>Phone Number</h1>
</td><td>
<input id="nombre" name="nombre" size="20" "type"/></td>
<td>
<select id="nombre_type" name="nombre_type"><option>Home</option><option>Cell</option><option>Work</option></select>
</td>

<td>
<h3 style="font-family: Times New Roman"; font-size:20px; color: rgb(0,0,255);text-align: "center">800-555-1212</h3>
</td>

</tr>


<tr>

<td>
<h1>Request</h1>
</td><td><Textarea id="demander">What can we help you with</Textarea></td>

</tr>

<tr>

<td><button type="submit" value="Submit Request" id="butt" name="butt">Submit Help Request</button>
</tr>

</table>
</form>
</div>
</div>
</body>
</html>