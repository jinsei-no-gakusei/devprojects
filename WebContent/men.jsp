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
<title>MEN</title>
<link rel="stylesheet" type="text/css" href="CSS4.css">

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

            <td>Nike</td>

          
            <td rowspan="4" align="center"><img src="Images/img1.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>Kobe IV</td>

            

          </tr>

          <tr>

            <td>Price</td>

            <td>$75.00</td>

           
          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="kobe4" name="kobe4">
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

            <td>Nike</td>

            <td rowspan="4" align="center"><img src="Images/img2.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>Kobe V

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$60.00

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="kobe5" name="kobe5">
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

            <td rowspan="4" align="center"><img src="Images/img16.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>Kobe VII

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$100.00

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="kobe7" name="kobe7">
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

            <td rowspan="4" align="center"><img src="Images/img17.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>Kobe VI

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$50.00

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="kobe6" name="kobe6">
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

            <td rowspan="4" align="center"><img src="Images/img18.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>Kobe Black Mamba X

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$80.00

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="black_mamba_x" name="black_mamba_x">
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

            <td rowspan="4" align="center"><img src="Images/img19.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>Kobe VIII

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$90.00

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="kobe8" name="kobe8">
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

            <td rowspan="4" align="center"><img src="Images/img20.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>Kobe Classic

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$150.00

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="kobe_classic" name="kobe_classic">
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

            <td rowspan="4" align="center"><img src="Images/img3.jpg"></td>

          </tr>

          <tr>

            <td>Product</td>

            <td>Kobe IX

            </td>

          </tr>

          <tr>

            <td>Price</td>

            <td>$55.00

            </td>

          </tr>

          <tr>

            <td>Quantity</td>

            <td>

            <select id="kobe9" name="kobe9">
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
	<td><input type="hidden" id="gender" name="gender" value="male"/>
</tr>
</table>
</div>
</td>
</tr>
      
  </tbody>

</table>


</form>

</div>

</div>




<br>



<br>



</body>
</html>
