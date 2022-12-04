<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <a href="cart?cid=<c:out value='${customer1.id}' ></c:out>"> <img src="images/cart.png"width="30px" height="30px"></a>
            <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
    </div>

<!---------------------single product details---------------------->

<div class="small-container single-product">
<div class="row">
    <div class="col-2">
        <img src="image1?id=<c:out value='${book.id}' ></c:out>"  width="100%" id="ProductImg">
        <div class="small-img-row">
        <table>
        	<tr>
        		<td><img src="image1?id=<c:out value='${book.id}' ></c:out>"  width="100%" class="small-img"></td>
        		<td><img src="image2?id=<c:out value='${book.id}' ></c:out>"  width="100%" class="small-img"></td>
        		<td><img src="image3?id=<c:out value='${book.id}' ></c:out>"  width="100%" class="small-img"></td>
        		<td><img src="image4?id=<c:out value='${book.id}' ></c:out>"  width="100%" class="small-img"></td>
        	
        	</tr>
        </table>
        </div>

    </div>
    <div class="col-2">
        <h1><c:out value='${book.name}' ></c:out></h1>
        <h4>&#8377; <c:out value='${book.price}' ></c:out></h4>
        <a href="buybook?id=<c:out value='${book.id}' ></c:out>" class="btn">Buy Now</a><a href="addtocart?id=<c:out value='${book.id}' ></c:out>" class="btn">Add to cart</a>
        <br/><br/>
        <h3>Product Details <i class="fa fa-indent"></i></h3>
        <br>
        <p>Seller ID :    <c:out value='${book.sellerid}' ></c:out><br>
           Book name :	  <c:out value='${book.name}' ></c:out>
        </p>
        <h4>Description</h4>
        <div style="width: 500px;" align="justify">
        <p><c:out value='${book.description}' ></c:out></p>
        </div>
    </div>
</div>
<div>
<h1 style="color: #ff523b">Reviews</h1><br><br>
<h3>Total Rating: <c:out value='${totalrating}'></c:out></h3><br>
	<c:forEach items="${reviewlist}" var="r">
	<table>
	<tr>
	<div style="background-color: #d4d4d4; padding: 20px 60px; margin: 10px; border-radius: 8px;">
	<h3 style="color: #ff523b"><c:out value='${r.customername}' ></c:out></h3>
		<div>
		<div class="rating" style="margin: 30px;">Rating: 
		<c:forEach var = "i" begin = "1" end = "5">
			<c:choose>
		    <c:when test="${r.rating>=i}">
		    <i class="fa fa-star"></i> 
		    </c:when>    
		    <c:otherwise>
		    <i class="fa fa-star-o"></i>
		    </c:otherwise>
		</c:choose>
		</c:forEach>
		</div>
		<img src="reviewimage?id=<c:out value='${r.orderid}' ></c:out>" width="200px;">
		</div>
		<div>
		
		<p>
		<c:out value='${r.description}' ></c:out>
		</p>
		</div>
	</div>
	</tr>
	</table>
	
	</c:forEach>
</div>
</div>
<!--------------------------------------title-------------------------->
<div class="small-container">
    <div class="row row-2">
        <h2>Related Books</h2>
        <p>View More</p>
    </div>
</div>

<!-------------------products------------->

<div class="small-container">
<div class="row">
    <div class="col-4">
        <img src="images/book 6/book 6.png">
        <h4>Java Script Beginner book</h4>
        <div class="rating">
            <i class="fa fa-star"></i> 
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star-o"></i>
        </div>
        <p>$100.00</p>
    </div>
    <div class="col-4">
        <img src="images/book 5/book 5.png">
        <h4>Full-Stack-React</h4>
        <div class="rating">
            <i class="fa fa-star"></i> 
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star-half-o"></i>
        </div>
        <p>$50.00</p>
    </div>
    <div class="col-4">
        <img src="images/book 8/book 8.png">
        <h4>Java Script Beginner book</h4>
        <div class="rating">
            <i class="fa fa-star"></i> 
            <i class="fa fa-star"></i>
            <i class="fa fa-star-o"></i>
            <i class="fa fa-star-o"></i>
            <i class="fa fa-star-o"></i>
        </div>
        <p>$500.00</p>
    </div>
    <div class="col-4">
        <img src="images/book 4/book 4.png">
        <h4>Java Script Beginner book</h4>
        <div class="rating">
            <i class="fa fa-star"></i> 
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star-o"></i>
            <i class="fa fa-star-o"></i>
        </div>
        <p>$250.00</p>
    </div>  
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


<!-----------------------------------js for product-gallery--------------------->
<script>
    var ProductImg = document.getElementById("ProductImg");
    var SmallImg = document.getElementsByClassName("small-img");
    SmallImg[0].onclick = function()
    {
        ProductImg.src = SmallImg[0].src;
    }
    SmallImg[1].onclick = function()
    {
        ProductImg.src = SmallImg[1].src;
    }
    SmallImg[2].onclick = function()
    {
        ProductImg.src = SmallImg[2].src;
    }
    SmallImg[3].onclick = function()
    {
        ProductImg.src = SmallImg[3].src;
    }
</script>
</body>
</html>