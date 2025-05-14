<%@page import="bk.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
        <%
    	User auth = (User) request.getSession().getAttribute("auth");
    if(auth!=null){
    	request.setAttribute("auth", auth);
    }
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sproduct</title>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">

    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<%@include file="frontheader.jsp"%>
<body>
    
    <section id="prodetails" class="section-p1">
        <div class="single-pro-image">
            <img src="./img/Products/f1.jpg" width="100%" id="MainImg">

            <div class="small-img-group">
                <div class="small-img-col">
                    <img src="./img/Products/f2.jpg" width="100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="./img/Products/f3.jpg" width="100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="./img/Products/f4.jpg" width="100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="./img/Products/f5.jpg" width="100%" class="small-img">
                </div>
            </div>
        </div>
        <div class="single-pro-details">
            <h6>Home/ T-Shirt</h6>
            <h4>Men's Faishion T Shirt</h4>
            <h2>$139.00</h2>
            <select>
                <option>Select Size</option>
                <option>XL</option>
                <option>XXL</option>
                <option>Small</option>
                <option>Large</option>
            </select>
            <input type="number" name="" value="1">
            <button class="normal">Add to Cart</button>
            <h4>Product Details</h4>
            <span> Loream ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                et dolore magna aliqua.</span>
        </div>
    </section>

    <section id="products1" class="section-p1">
        <h2>Featured Products</h2>
        <p>Summer Collection New Morden Design</p>
        <div class="pro-container">
            <div class="pro" onclick="window.location.href='sproduct.jsp';">
                <img src="./img/Products/n1.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Leriya Fashion Shirt for Men</h5>
                    <div class="star">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <h4>$70</h4>

                </div>
                <a href="#"><i id="speciali" class="fa fa-shopping-cart cart "></i></a>
            </div>
            <div class="pro" onclick="window.location.href='sproduct.jsp';" >
                <img src="./img/Products/n2.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Leriya Fashion Shirt for Men</h5>
                    <div class="star">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <h4>$70</h4>

                </div>
                <a href="#"><i id="speciali" class="fa fa-shopping-cart cart "></i></a>
            </div>
            <div class="pro" onclick="window.location.href='sproduct.jsp';">
                <img src="./img/Products/n3.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Leriya Fashion Shirt for Men</h5>
                    <div class="star">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <h4>$70</h4>

                </div>
                <a href="#"><i id="speciali" class="fa fa-shopping-cart cart "></i></a>
            </div>
            <div class="pro" onclick="window.location.href='sproduct.jsp';">
                <img src="./img/Products/n4.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Leriya Fashion Shirt for Men</h5>
                    <div class="star">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <h4>$70</h4>

                </div>
                <a href="#"><i id="speciali" class="fa fa-shopping-cart cart "></i></a>
            </div>
        </div>
    </section>

    <section id="newletter" class="section-p1 section-m1">
        <div class="newstext">
            <h4>Sign Up For NewsLetter</h4>
            <p>Get E-mail Update About our latest shop and <span>special offers</span></p>
        </div>
        <div class="form">
            <input type="text" placeholder="your email address">
            <button class="normal">Sign up</button>
        </div>
    </section>

    <footer class="section-p1">
        <div class="col">
            <img class="logo" src="img/logo.png" alt="">
            <h4>Contact</h4>
            <p><strong>Address: </strong>562 Wellington Road , Street 32, San Francisco</p>
            <p><strong>Phone </strong>+01 2222 365 /(+91) 01 2345 6789</p>
            <p><strong>Hours </strong>10:00 - 18:00 , Mon - Sat</p>
            <div class="follow">
                <h4>follow Us</h4>
                <div class="icon">
                    <i class='fa fa-facebook-f'></i>
                    <i class='fa fa-twitter'></i>
                    <i class="fa fa-instagram"></i>
                    <i class="fa fa-youtube-play"></i>
                </div>
            </div>

        </div>

        <div class="col">
            <h4>About</h4>
            <a href="#">About us</a>
            <a href="#">Delivery Information</a>
            <a href="#">privacy Policy</a>
            <a href="#">Terms & Conditions</a>
            <a href="#">Contact Us</a>
        </div>

        <div class="col">
            <h4>My Account</h4>
            <a href="#">Sign In</a>
            <a href="#">View Cart</a>
            <a href="#">My Wishlist</a>
            <a href="#">Tracks My Order</a>
            <a href="#">Help</a>
        </div>

        <div class="col install">
            <h4>Install App</h4>
            <p>From App Store or Google Play</p>
            <div class="row">
                <img src="img/pay/app.jpg" alt="">
                <img src="img/pay/play.jpg" alt="">

            </div>
            <p>Secured Payment Gateways</p>
            <img src="img/pay/pay.png" alt="">
        </div>


    </footer>
    <!-- Add javascript -->

    <script type="text/javascript">
        var MainImg = document.getElementById("MainImg");
        var smallimg = document.getElementsByClassName("small-img");
        smallimg[0].onclick = function () {
            MainImg.src = smallimg[0].src;
        }
        smallimg[1].onclick = function () {
            MainImg.src = smallimg[1].src;
        }
        smallimg[2].onclick = function () {
            MainImg.src = smallimg[2].src;
        }
        smallimg[3].onclick = function () {
            MainImg.src = smallimg[3].src;
        }
    </script>

    <div class="copyright">
        <p>© 2024, tech2 etc -HTML CSS Ecommerce Template</p>
    </div>



    <script src="script.js"></script>
</body>
</html>