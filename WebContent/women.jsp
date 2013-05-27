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
<title>WOMEN</title>
<link rel="stylesheet" type="text/css" href="CSS5.css">

</head>

<body style="background-image: url(bg.png);">

<div id="container">

<!-- Banner image -->

<div>

<table border="0" cellpadding="2" cellspacing="2" width="100%">

  <tbody>

    <tr>

      <td colspan="3"><img src="thesishtml/nike1.jpg"></td>

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
       &nbsp;&nbsp;|&nbsp;&nbsp;<a href="">Sign Up</a>&nbsp;&nbsp;|&nbsp;&nbsp;</h3></td>
      

    </tr>

  </tbody>

</table>
</div>

<hr>

<!-- shoes -->

<div class="lbdiv" id="content">
<form action="CartController" method="post">
<table border="1" cellpadding="2" cellspacing="2" width="100%">

  <tbody>

    <tr>

      <td>

      <table border="1" cellpadding="2" cellspacing="2" width="100%">

        <tbody>

          <tr>

            <td>Brand</td>

            <td>Nike

            </td>

            <td rowspan="4" align="center"><img src="Images/img6.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>Shox Turbo XII

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$85.99

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="turbo12" name="turbo12">
            <option value=0></option>
            <option value=1>1</option>
            <option value=2>2</option>
            <option value=3>3</option>
            <option value=4>4</option>
            <option value=5>5</option>
            <option value=6>6</option>
            <option value=7>7</option>
            <option value=8>8</option>
            <option value=9>9</option>
            <option value=10>10</option>

            </select>

            </td>

          </tr>

        </tbody>

      </table>

      </td>

      <td>

      <table border="1" cellpadding="2" cellspacing="2" width="100%">

        <tbody>

          <tr>

            <td>Brand</td>

            <td>Nike

            </td>

            <td rowspan="4" align="center"><img src="Images/img7.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>Free Run 2

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$45.00

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="run2" name="run2">
            <option value=0></option>
            <option value=1>1</option>
            <option value=2>2</option>
            <option value=3>3</option>
            <option value=4>4</option>
            <option value=5>5</option>
            <option value=6>6</option>
            <option value=7>7</option>
            <option value=8>8</option>
            <option value=9>9</option>
            <option value=10>10</option>

            </select>
            </td>

          </tr>

        </tbody>

      </table>

      </td>

    </tr>
    
    
    <tr>

      <td>

      <table border="1" cellpadding="2" cellspacing="2" width="100%">

        <tbody>

          <tr>

            <td>Brand</td>

            <td>Nike

            </td>

            <td rowspan="4" align="center"><img src="Images/img8.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>Torch 4 shoes

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$69.99

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="torch4" name="torch4">
            <option value=0></option>
            <option value=1>1</option>
            <option value=2>2</option>
            <option value=3>3</option>
            <option value=4>4</option>
            <option value=5>5</option>
            <option value=6>6</option>
            <option value=7>7</option>
            <option value=8>8</option>
            <option value=9>9</option>
            <option value=10>10</option>

            </select>

            </td>

          </tr>

        </tbody>

      </table>

      </td>

      <td>

      <table border="1" cellpadding="2" cellspacing="2" width="100%">

        <tbody>

          <tr>

            <td>Brand</td>

            <td>Nike

            </td>

            <td rowspan="4" align="center"><img src="Images/img9.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>TR Shield

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$49.99

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="shield" name="shield">
            <option value=0></option>
            <option value=1>1</option>
            <option value=2>2</option>
            <option value=3>3</option>
            <option value=4>4</option>
            <option value=5>5</option>
            <option value=6>6</option>
            <option value=7>7</option>
            <option value=8>8</option>
            <option value=9>9</option>
            <option value=10>10</option>

            </select>
            </td>

          </tr>

        </tbody>

      </table>

      </td>
      
      
    <tr>

      <td>

      <table border="1" cellpadding="2" cellspacing="2" width="100%">

        <tbody>

          <tr>

            <td>Brand</td>

            <td>Nike

            </td>

            <td rowspan="4" align="center"><img src="Images/img10.jpg"></td>

          </tr>

          <tr>

            <td>Name</td>

            <td>In Season TR

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$42.97

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="season" name="season">
            <option value=0></option>
            <option value=1>1</option>
            <option value=2>2</option>
            <option value=3>3</option>
            <option value=4>4</option>
            <option value=5>5</option>
            <option value=6>6</option>
            <option value=7>7</option>
            <option value=8>8</option>
            <option value=9>9</option>
            <option value=10>10</option>

            </select>

            </td>

          </tr>

        </tbody>

      </table>

      </td>

      <td>

      <table border="1" cellpadding="2" cellspacing="2" width="100%">

        <tbody>

          <tr>

            <td>Brand</td>

            <td>Nike

            </td>

            <td rowspan="4" align="center"><img src="Images/img11.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>Shox Turbo

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$79.99

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="turbo" name="turbo">
            <option value=0></option>
            <option value=1>1</option>
            <option value=2>2</option>
            <option value=3>3</option>
            <option value=4>4</option>
            <option value=5>5</option>
            <option value=6>6</option>
            <option value=7>7</option>
            <option value=8>8</option>
            <option value=9>9</option>
            <option value=10>10</option>

            </select>
            </td>

          </tr>

        </tbody>

      </table>

      </td>
      
      
    <tr>

      <td>

      <table border="1" cellpadding="2" cellspacing="2" width="100%">

        <tbody>

          <tr>

            <td>Brand</td>

            <td>Nike

            </td>

            <td rowspan="4" align="center"><img src="Images/img12.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>Air Max+

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$95.97

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="max" name="max">
            <option value=0></option>
            <option value=1>1</option>
            <option value=2>2</option>
            <option value=3>3</option>
            <option value=4>4</option>
            <option value=5>5</option>
            <option value=6>6</option>
            <option value=7>7</option>
            <option value=8>8</option>
            <option value=9>9</option>
            <option value=10>10</option>

            </select>
            </td>

          </tr>

        </tbody>

      </table>

      </td>

      <td>

      <table border="1" cellpadding="2" cellspacing="2" width="100%">

        <tbody>

          <tr>

            <td>Brand</td>

            <td>Nike

            </td>

            <td rowspan="4" align="center"><img src="Images/img13.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>Musique IV

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$59.99

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="musique4" name="musique4">
            <option value=0></option>
            <option value=1>1</option>
            <option value=2>2</option>
            <option value=3>3</option>
            <option value=4>4</option>
            <option value=5>5</option>
            <option value=6>6</option>
            <option value=7>7</option>
            <option value=8>8</option>
            <option value=9>9</option>
            <option value=10>10</option>

            </select>
            </td>

          </tr>

        </tbody>

      </table>

      </td>
 
 <tr>     
 <td>     
<div>
<table>
<tr>
	<td><button type="submit" value="Submit Request" id="butt" name="butt">Submit</button>
</tr>
<tr>
	<td><input type="hidden" id="gender" name="gender" value="female"/>
</tr>
</table>
</div>
</td>
<tr>
    

  </tbody>

</table>
</form>
</div>

</div>



<br>



<br>



</body>
</html>