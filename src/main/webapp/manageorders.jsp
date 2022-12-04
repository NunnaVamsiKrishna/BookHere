<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<head>
<title>Seller Home</title>
<style>
table, td, th {
  border: 1px solid #ddd;
  padding: 10px;
}
tr:nth-child(even) {background-color: #f2f2f2;}
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
.button{
	margin-top:5px;
	padding: 3px 10px;
	background-color: #9e1c55;
	border-radius: 10px;
	color: white;	
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
			<table>
			
			<tr>
			
			<th>Order ID</th>	
			<th>Book Details</th>
			<th>Customer details</th>
			<th>Price</th>
			<th>Status</th>
			<th>Update</th>
			</tr>
			
			<c:forEach items="${olist}" var="o">
			
			<tr>
			
			<td> <c:out value="${o.orderid}"></c:out>   </td>
			<td> <p>Book ID: <c:out value="${o.bookid}"></c:out></p><br>
				<p>Book Name: <c:out value="${o.bookname}"></c:out></p>
			   </td>
			<td><p>Customer ID: <c:out value="${o.customerid}"></c:out>  </p> </td>
			<td> <c:out value="${o.bookprice}"></c:out>   </td>
			<td> <c:out value="${o.status}"></c:out>   </td>
			<td> 
			<form action="changestatus" method="post">
			<input type="hidden" name="oid" value="<c:out value="${o.orderid}"></c:out>" required>
			<input type="radio" name="status" value="SHIPPING" required="required"/>Shipping<br>
			<input type="radio" name="status" value="OUT FOR DELIVERY" required="required"/>Out for delivery<br>
			<input type="radio" name="status" value="DELIVERED" required="required"/>Delivered<br>
			<input type="submit" value="Save" class="button">
			</form>
			
			 </td>
			
			</tr>
			
			</c:forEach>

</table>
        </div>
        
</body>
</html>