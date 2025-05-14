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
    <title>Card</title>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<%@include file="frontheader.jsp"%>
<body>
    
    <section id="page-header">
     
        <h2>#cart</h2>
  
        <p>Add your coupan code & SAVE upto 70%!</p>
        
    </section>


    <section id="cart" class="section-p1">
    	<table width="100%">
    		<thead>
    			<tr>
    				<td>Remove</td>
    				<td>Image</td>
    				<td>Product</td>
    				<td>Price</td>
    				<td>Quantity</td>
    				<td>Subtotal</td>
    			</tr>
    		</thead>
    		<tbody>
    			<tr>
    				<td><a href="#"><i class="far fa-times-circle"></i></a>
    				</td>
    				<td><img src="./img/Products/f1.jpg" ></td>
    				<td>Cartoon Astronaut T-Shirts</td>
    				<td>$118.19</td>
    				<td><input type="number" value="1"></td>
    				<td>$118.19</td>
    			</tr>
    				<tr>
    				<td><a href="#"><i class="far fa-times-circle"></i></a>
    				</td>
    				<td><img src="./img/Products/f2.jpg" ></td>
    				<td>Cartoon Astronaut T-Shirts</td>
    				<td>$118.19</td>
    				<td><input type="number" value="1"></td>
    				<td>$118.19</td
    				>
    			</tr>
    				<tr>
    				<td><a href="#"><i class="far fa-times-circle"></i></a>
    				</td>
    				<td><img src="./img/Products/f3
    					.jpg" ></td>
    				<td>Cartoon Astronaut T-Shirts</td>
    				<td>$118.19</td>
    				<td><input type="number" value="1"></td>
    				<td>$118.19</td>
    			</tr>
    		</tbody>
    	</table>
    </section>



    <section id="cart-name" class="section-p1">
    	<div id="coupan">
    		<h3>Apply Coupan</h3>
    	 <div>
    		<input type="text"placeholder="Enter Your Coupan" name="">
    		<button class="normal">Apply</button>
    	 </div>
        </div> 
        <div id="subtotal">
        	<h3>Cart Totals</h3>
        	<table>
        		<tr>
        			<td>Cart Subtotal</td>
        			<td>$ 335</td>
        		</tr>
        		<tr>
        			<td>Shipping</td>
        			<td>Free</td>
        		</tr>
        		<tr>
        			<td><strong>Total</strong></td>
        			<td><strong>$ 335</strong></td>
        		</tr>
        	</table>
        	<button class="noraml">Proceed to checkout</button>
        </div>
    </section>

    <!-- Footer part -->
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
    
    <div class="copyright">
        <p>© 2024, tech2 etc -HTML CSS Ecommerce Template</p>
    </div>

                                            

    <script src="script.js"></script>
    <script src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>