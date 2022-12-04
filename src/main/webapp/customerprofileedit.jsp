<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<head>
<title>Admin Home</title>
<style>
.data{
padding-left: 502px;
}
*{
    list-style: none;
    text-decoration: none;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Open Sans', sans-serif;
}
h3{
padding: 20px;
	color: white;
	
}
img{
	display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}
body{
    background: white;
}

.wrapper .sidebar{
    background: #1ec9a4;
    position: fixed;
    top: 0;
    left: 0;
    width: 500px;
    height: 100%;
    padding: 20px 0;
    transition: all 0.5s ease;
}
.wrapper .sidebar ul li a{
    display: block;
    padding: 13px 0px;
    align-content:center;
    border-bottom: 1px solid #1ec9a4;
    color: #9e1c55;
    font-size: 20px;
    position: relative;
}
li:hover{
	background-color: orange;
}

.wrapper .sidebar ul li a .icon{
    color: #dee4ec;
    width: 30px;
    display: inline-block;
}
button {
	font-family: 'Fredoka', sans-serif;
	border-radius: 20px;
	border: 1px solid #9e1c55;
	background-color: #9e1c55;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
    margin-left:38%;
    margin-top: 30px;
    cursor: pointer;
}

button:active {
	transform: scale(0.95);
    cursor: pointer;
}

button:focus {
	outline: none;
}

button.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
}
</style>
</head>
<body>

<div class="wrapper">
        <!--Top menu -->
        <div class="sidebar">
           <img alt="logo" src="images/logo.png" >
            <!--menu item-->
            <div>
            <img alt="logo" src="images/user.png" width="200px" />
            </div>
            <div style="padding-top: 40px;">
            <h1 style="text-align: center">Hello&nbsp;<c:out value="${c.name}"></c:out></h1>
            </div>
            <div>
            <a href="customerprofileedit"><button>Edit</button></a>
            </div>
        </div>
        </div>
        <div class="data">
        <br>
        <form:form action="updatecustomer" method="post" modelAttribute="customer">

	<table align=center>
	
	<tr>
	<td><label>Name</label></td>
	<td>
	<form:input path="name" required="required"></form:input>
	</td>
	</tr>
	
	
	<tr><td></td></tr>
	
	<tr>
	<td><label>Gender</label></td>
	<td><form:input path="gender" required="required"/></td>
	</tr>
	
	
	
	<tr>
	<td><label>Email ID	</label></td>
	<td><form:input path="gmail" required="required"/></td>
	</tr>
	
	<tr><td></td></tr>
	
	<tr>
	<td><label>Location</label></td>
	<td><form:input path="location" required="required"/></td>
	</tr>
	
	<tr><td></td></tr>
	
	<tr>
	<td><label>City</label></td>
	<td><form:input path="city" required="required"/></td>
	</tr>
	
	<tr><td></td></tr>
	
	<tr>
	<td><label>PINCODE</label></td>
	<td><form:input path="pincode" required="required"/></td>
	</tr>
	
	<tr><td></td></tr>
	
	<tr>
	<td><label>contactno</label></td>
	<td><form:input path="contactno" required="required"/></td>
	</tr>
	
	<tr><td></td></tr>
	
	<tr>
	<td><label>Password </label></td>
	<td><form:input type="password" path="password" required="required"/></td>
	</tr>
	
	
	<tr><td></td></tr>
	
	<tr align=center>
	<td colspan=2><input type="submit" value="Register" class="button"></td>
	</tr>
	
	</table>

</form:form>
</div>
</body>
</html>