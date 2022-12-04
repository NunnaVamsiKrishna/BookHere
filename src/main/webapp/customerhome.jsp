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
</script>
    <div class="header">

    <div class="container">
        <div class="navbar">
            <div class="logo">
                <img src="images/logo.png" width="125px" >
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="customerhome">Home</a></li>
                    <li><a href="product">Books</a></li>
                    <li><a href="customerorders?id=<c:out value='${customer1.id}' ></c:out>">Orders</a></li>
                    <li><a href="">About</a></li>
                    <li><a href="https://www.linkedin.com/in/vamsi-krishna-nunna/">Contact</a></li>
                    <li><a href="customerprofile">Account</a></li>
                    
                </ul>
                
            </nav>
            <h3 align="left" style="padding:  0px 15px;">Hello <c:out value='${customer1.name }'></c:out></h3>
            <a href="cart?cid=<c:out value='${customer1.id}' ></c:out>"> <img src="images/cart.png"width="30px" height="30px"></a>
            <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
    <div class="row">
        <div class="col-2">
           <h1>Visit Us To Buy <br>A Book!</h1>
           <p>Bookshop is an online book marketplace founded in January 2020<br> stated mission is "to financially support local, independent bookstores"<br>
        <br><br>
    </p>
           <a href="product" class="btn">Order-Here &#8594;</a>
        </div>
        <div class="col-2">
            <img src="images/img.png">
        </div>
    </div>
    </div>
</div>

<!----------- Categories -------------------->
<div class="product">
    <div class="small-container">
        <div class="row">
            <div class="col-3">
                <img src="images/book 13/book 13.png">
            </div>
            <div class="col-3">
                <img src="images/book 11/book 11.png">
            </div>
            <div class="col-3">
                <img src="images/book 3/book 3.png">
            </div>
        </div>
    </div>
   
</div>
    
<!----------- Featured items -------------------->

<div class="small-container">
<h2 class="title">Featured Books</h2>
<div class="row">
    <div class="col-4">
        <img src="images/Book 1/book 22.png">
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
        <img src="images/book 2/book 2.png">
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
        <img src="images/book 3/book 3.png">
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
<h2 class="title">Latest Books</h2>
<div class="row">
    <div class="col-4">
        <img src="images/book 5/book 5.png">
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
        <img src="images/book 6/book 6.png">
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
        <img src="images/book 7/book 7.png">
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
        <img src="images/book 9/book 9.png">
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

<div class="row">
    <div class="col-4">
        <img src="images/book 8/book 8.png">
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
        <img src="images/book 10/book 10.png">
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
        <img src="images/book 11/book 11.png">
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
        <img src="images/book 12/book 12.png">
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
<!---------------------offer--------------------->
<div class="offer">
    <div class="small-container">
        <div class="row">
            <div class="col-2">
                <img src="images/book 10/book 10.png" class="offer-img">
            </div>
            <div class="col-2">
                <p>Trending Among All Books</p>
                <h1>Wuthering Heights</h1>
                <small>A man becomes obsessed with vengeance when his soul mate marries another man.
                    Heathcliff is Cathy Earnshaw's foster brother; more than that, he is her other half. 
                    When forces within and without tear them apart, Heathcliff wreaks vengeance on those he holds responsible,
                     even into a second generation.</small><br><br><br>
                     <a href="" class="btn">Buy Now &#8594;</a>
            </div>
        </div>
    </div>
</div>

<!-------------------testimonial------------------->
<div class="testimonial">
    <div class="small-container">
        <div class="row">
            <div class="col-3">
                <i class="fa fa-quote-left"></i>
                <p>A man becomes obsessed with vengeance when his soul mate marries another man.
                    Heathcliff is Cathy Earnshaw's foster brother</p>
                    <div class="rating">
                        <i class="fa fa-star"></i> 
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <img src="images/img 2.jpg">
                    <h3>Lucifier</h3>
            </div>
            <div class="col-3">
                <i class="fa fa-quote-left"></i>
                <p>A man becomes obsessed with vengeance when his soul mate marries another man.
                    Heathcliff is Cathy Earnshaw's foster brother</p>
                    <div class="rating">
                        <i class="fa fa-star"></i> 
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <img src="images/img 3.jpg">
                    <h3>Sofiyan</h3>
            </div>
            <div class="col-3">
                <i class="fa fa-quote-left"></i>
                <p>A man becomes obsessed with vengeance when his soul mate marries another man.
                    Heathcliff is Cathy Earnshaw's foster brother</p>
                    <div class="rating">
                        <i class="fa fa-star"></i> 
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <img src="images/img 4.jpg">
                    <h3>Cristopher</h3>
            </div>
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
</body>
</html>