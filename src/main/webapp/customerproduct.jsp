<%@page import="ch.qos.logback.core.joran.conditional.IfAction"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Products-Book-Here Webiste</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href ="https://fonts.googleapis.com/css2?
    family=poppins:weights:wght@300;400;500;600;700&display=swap"
    rel="stylesheet">
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
<div class="container">
        <div class="navbar">
            <div class="logo">
                <img src="images/logo.png" width="125px">
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="customerhome">Home</a></li>
                    <li><a href="product">Books</a></li>
                    <li><a href="customerorders?id=<c:out value='${customer1.id}' ></c:out>">Orders</a></li>
                    <li><a href="">About</a></li>
                    <li><a href="">Contact</a></li>
                    <li><a href="customerprofile">Account</a></li>
                </ul>
            </nav>
            <a href="cart?cid=<c:out value='${c.id}' ></c:out>"> <img src="images/cart.png"width="30px" height="30px"></a>
            <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
    </div>
<div class="grid-container">
<c:forEach items="${booklist}" var="b">
<div class="small-container">
        <a href="bookdetails?id=<c:out value='${b.id}' ></c:out>"> <img src="image1?id=<c:out value='${b.id}' ></c:out>" width="300px" height="400px"></a>
        <h4>${b.name}</h4>
        <div class="rating">
            <i class="fa fa-star"></i> 
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star-o"></i>
        </div>
        <p>${b.price}</p>
    </div>
</c:forEach>
</div>
 <div class="page-btn">
    <span>1</span>
    <span>2</span>
    <span>3</span>
    <span>4</span>
    <span>&#8594;</span>
 </div>
</div>

<!---------------------footer---------------------->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col-1">
                <h3>Visit Us Through</h3>
                <p>The best place to buy or sell used books</p>
                <div class="app-logo">
                    <img src="images/play-store.png">
                    <img src="images/app-store.png">
                </div>
            </div>
            <div class="footer-col-2">
                <img src="images/logo1.png">
                <p>The best place to buy or sell used books</p>
            </div>
            <div class="footer-col-3">
                <h3>Useful Links</h3>
               <ul>
                <li>Cupons</li>
                <li>Blog Post</li>
                <li>Return Policy</li>
                <li>Join Affiliate</li>
               </ul>
            </div>
            <div class="footer-col-4">
                <h3>Follow Us</h3>
               <ul>
                <li>Facebook</li>
                <li>Twitter</li>
                <li>Instagram</li>
                <li>Youtube</li>
               </ul>
            </div>
        </div>
    </div>
</div>

<!--------------------js for toggle menu----------------------->
<script>
    var MenuItems = document.getElementById("MenuItems");

    MenuItems.style.maxHeight = "0px";

    function menutoggle(){
        if(MenuItems.style.maxHeight == "0px")
        {
            MenuItems.style.maxHeight = "200px";
        }
        else
        {
            MenuItems.style.maxHeight = "0px";
        }
    }
    
</script>
</body>
</html>