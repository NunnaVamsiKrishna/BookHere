<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<head>
<title>Admin Home</title>
<style>
.data{
padding-left: 502px;
}
table, td, th {
  border-bottom: 1px solid #ddd;
  border-top: 1px solid #ddd;
  padding: 10px;
}
table {
  width: 100%;
  border-collapse: collapse;
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
            <h1 style="text-align: center">Hello&nbsp;<c:out value="${customer1.name}"></c:out></h1>
            </div>
            <div>
            <a href="customerprofileedit"><button>Edit</button></a>
            </div>
        </div>
        </div>
        <div class="data">
        <br>
        <h2 align="center">Profile</h2>
        <br>
        <table>
        <tr>
        	<td>ID </td>
        	<td> : &nbsp;<c:out value="${customer1.id}"></c:out>   </td>
        </tr>
        <tr>
        	<td>Gender :</td>
        	<td>  : &nbsp;<c:out value="${customer1.gender}"></c:out>   </td>
        </tr>
        <tr>
        	<td>Gmail :</td>
        	<td> : &nbsp; <c:out value="${customer1.gmail}"></c:out>   </td>
        </tr>
        <tr>
        	<td>Address :</td>
        	<td> : &nbsp; <c:out value="${customer1.location}"></c:out>   </td>
        </tr>
        <tr>
        	<td>City :</td>
        	<td> : &nbsp; <c:out value="${customer1.city}"></c:out>   </td>
        </tr>
        <tr>
        	<td>Pincode :</td>
        	<td> : &nbsp; <c:out value="${customer1.pincode}"></c:out>   </td>
        </tr>
        <tr>
        	<td>Contact number :</td>
        	<td> : &nbsp; <c:out value="${customer1.contactno}"></c:out>   </td>
        </tr>
        </table>
        
</div>
</body>
</html>