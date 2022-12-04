<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<head>
<title>Admin Home</title>
<style>
tr:nth-child(even) {background-color: #f2f2f2;}
table, td, th {
  border-bottom: 1px solid #ddd;
  padding: 10px;
  text-align: center;
}
table {
  width: 100%;
  border-collapse: collapse;
}
.data{
padding-left: 301px;
text-align: center;
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
    background: #1ec9a4;
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
	background-color: orange;
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
                    <a href="adminhome" class="active">
                        <span class="icon"><i class="fas fa-home"></i></span>
                        <span class="item">Home</span>
                    </a>
                </li>
                <li>
                    <a href="validatesellerlist">
                        <span class="icon"><i class="fas fa-user-friends"></i></span>
                        <span class="item">Validate Sellers</span>
                    </a>
                </li>
                <li>
                    <a href="viewallsellers">
                        <span class="icon"><i class="fas fa-tachometer-alt"></i></span>
                        <span class="item">View Sellers</span>
                    </a>
                </li>
                <li>
                    <a href="viewallcustomers">
                        <span class="icon"><i class="fas fa-database"></i></span>
                        <span class="item">View Customers</span>
                    </a>
                </li>
                <li>
                    <a href="viewallorders">
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
                    <a href="adminchangepwd">
                        <span class="icon"><i class="fas fa-database"></i></span>
                        <span class="item">Change password</span>
                    </a>
                </li>
                <li>
                    <a href="adminlogin">
                        <span class="icon"><i class="fas fa-database"></i></span>
                        <span class="item">Logout</span>
                    </a>
                </li>
                <h3>Welcome&nbsp;<c:out value="${auname}"></c:out></h3>
            </ul>
        </div>
        </div>
        <div class="data"><br>
        <h2 align=center>Customers</h2><br>
<center>
<table>

<tr>

<th>ID</th>	
<th>Name</th>
<th>Gender</th>
<th>Email ID</th>
<th>Location</th>
<th>City</th>
<th>Pincode</th>
<th>Contact no.</th>
<th>Action</th>

</tr>

<c:forEach items="${customerlist}" var="c">

<tr>

<td> <c:out value="${c.id}"></c:out>   </td>
<td> <c:out value="${c.name}"></c:out>   </td>
<td> <c:out value="${c.gender}"></c:out>   </td>
<td> <c:out value="${c.gmail}"></c:out>   </td>
<td> <c:out value="${c.location}"></c:out>   </td>
<td> <c:out value="${c.city}"></c:out>   </td>
<td> <c:out value="${c.pincode}"></c:out>   </td>
<td> <c:out value="${c.contactno}"></c:out>   </td>
<td> 

<a href='<c:url value='deletecustomer?id=${c.id}'></c:url>'>Ban</a>&nbsp;&nbsp;

</td>


</tr>

</c:forEach>

</table>
</center> 	 
        </div>



</body>
</html>