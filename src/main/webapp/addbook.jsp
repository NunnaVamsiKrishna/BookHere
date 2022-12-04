<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<head>
<title>Seller Home</title>
<style>
 body{
    	
    }
.data{
background-color: #d1d1d1;
padding-left: 301px;
height: 100vh;
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
	padding: 15px;
}
body{
    background: white;
}

.wrapper .sidebar{
    background: #27ae60;
    position: fixed;
    top: 0;
    left: 0;
    width: 300px;
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
	background-color: white;
}

.wrapper .sidebar ul li a .icon{
    color: #dee4ec;
    width: 30px;
    display: inline-block;
}

</style>
</head>
<body>

<div class="wrapper">
        <!--Top menu -->
        <div class="sidebar">
           <img alt="logo" src="images/logo.png" >
            <!--menu item-->
            <ul>
                <li>
                    <a href="sellerhome" class="active">
                        <span class="icon"><i class="fas fa-home"></i></span>
                        <span class="item">Home</span>
                    </a>
                </li>
                <li>
                    <a href="validatesellerlist">
                        <span class="icon"><i class="fas fa-user-friends"></i></span>
                        <span class="item">Manage Books</span>
                    </a>
                </li>
                <li>
                    <a href="manageorders">
                        <span class="icon"><i class="fas fa-database"></i></span>
                        <span class="item">Manage Orders</span>
                    </a>
                </li>
                <li>
                    <a href="managetransactions">
                        <span class="icon"><i class="fas fa-database"></i></span>
                        <span class="item">Manage Transactions</span>
                    </a>
                </li>
                <li>
                    <a href="/">
                        <span class="icon"><i class="fas fa-database"></i></span>
                        <span class="item">Logout</span>
                    </a>
                </li>
                <h3>Welcome&nbsp;<c:out value="${seller.name}"></c:out></h3>
            </ul>
        </div>
        </div>
        <div class="data">
 <form action="addbookimpl" method="post" autocomplete="off" enctype="multipart/form-data">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<input type="text" name="name" required="required"></input>
</td>
</tr>


<tr>
<td><label>Description</label></td>
<td><textarea  name="description" required="required"></textarea></td>

</tr>


<tr>
<td><label>Price</label></td>
<td><input type="number" name="price" value="0.00" required></td>
</tr>



<tr>
<td><label>Total Stock</label></td>
<td><input type="number" name="stock" required="required"/></td>
</tr>

<tr>
<td><label>Image 01</label></td>
<td><input type="file" name="image1" required="required" /></td>
</tr>

<tr>
<td><label>Image 02</label></td>
<td><input type="file" name="image2" required="required"  /></td>
</tr>

<tr>
<td><label>Image 03</label></td>
<td><input type="file" name="image3" required="required" /></td>
</tr>

<tr>
<td><label>Image 04</label></td>
<td><input type="file" name="image4" required="required" /></td>
</tr>


<tr align=center>
<td colspan=2><input type="submit" value="Add" class="button" ></td>
</tr>

</table>

</form>
</div>
</body>
</html>