<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<head>
<title>Seller Home</title>
<style>
tr:nth-child(even) {background-color: #f2f2f2;}
table, td, th {
  border-bottom: 1px solid #ddd;
  padding: 10px;
  text-align: center;
}
table {
  width:100%;
  border-collapse: collapse;
}
.data{
padding-left: 301px;
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
	width:100%;
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
    margin-left: 200px;
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
                    <a href="managebooks">
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
                <h3>Welcome&nbsp;<c:out value="${auname}"></c:out></h3>
            </ul>
        </div>
        </div>
        <div class="data">
         	<a href="addbook"><button>Add</button></a>
         	<table>

<tr>

<th>Image</th>	
<th>ID</th>	
<th>Name</th>
<th>Description</th>
<th>Rating</th>
<th>Price</th>
<th>Total Stock</th>
<th>Action</th>

</tr>

<c:forEach items="${booklist}" var="b">

<tr>

<td><img src="image1?id=<c:out value='${b.id}' ></c:out>"></td>
<td> <c:out value="${b.id}"></c:out>   </td>
<td> <c:out value="${b.name}"></c:out>   </td>
<td> <c:out value="${b.description}"></c:out>   </td>
<td> <c:out value="${b.rating}"></c:out>   </td>
<td> <c:out value="${b.price}"></c:out>   </td>
<td> <c:out value="${b.stock}"></c:out>   </td>
<td> 

<a href='<c:url value='updatebook?id=${b.id}'></c:url>'>Update</a>
<a href='<c:url value='deletebook?id=${b.id}'></c:url>'>Delete</a>

</td>


</tr>

</c:forEach>

</table>
        </div>
        
</body>
</html>