<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Book-Here Webiste</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="CSS/style.css">
    <link href ="https://fonts.googleapis.com/css2?
    family=poppins:weights:wght@300;400;500;600;700&display=swap"
    rel="stylesheet">
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
                    <li><a href="">About</a></li>
                    <li><a href="">Contact</a></li>
                    <li><a href="customerprofile">Account</a></li>
                </ul>
            </nav>
            <a href="cart?cid=<c:out value='${customer1.id}' ></c:out>"> <img src="images/cart.png"width="30px" height="30px"></a>
            <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
</div>
<!---------------------cart-items-details---------------------->

<div class="small-container cart-page" >
    <table>
        <tr>
            <th>Books</th>
            <th>Quantity</th>
            <th>Subtotal</th>
        </tr>
        <c:forEach items="${clist}" var="c">
        <tr>
            <td >
                <div class="cart-info">
                    <img src="image1?id=<c:out value='${c.book_id}' ></c:out>">
                    <div>
                        <p><c:out value="${c.book_name}"></c:out></p>
                        <small>Price : &#8377;<c:out value="${c.book_price}"></c:out></small>
                        <br>
                        <a href="deletecartitem?id=<c:out value='${c.cart_id}' ></c:out>">Remove</a>
                    </div>
                </div>
            </td>
            <td><input type="number" value="1"></td>
            <td>&#8377;<c:out value="${c.book_price}"></c:out></td>
        </tr>
        </c:forEach>
    </table>

    <div class="total-price">
        <table>
            <tr>
                <td>Subtotal</td>
                <td>&#8377;<c:out value="${subtotal}"></c:out></td>
            </tr>
            <tr>
                <td>Tax</td>
                <td>&#8377;<c:out value="${tax}"></c:out></td>
            </tr>
            <tr>
                <td>Total</td>
                <td>&#8377;<c:out value="${total}"></c:out></td>
            </tr>
        </table>
        
    </div>
    <a style="float: right;" href="buycartitems?id=<c:out value='${cid}' ></c:out>" class="btn">Buy Now</a>
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