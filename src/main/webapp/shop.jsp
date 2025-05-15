<%@page import="bk.Product"%>
<%@page import="java.util.List"%>
<%@page import="db.Dbcon"%>
<%@page import="UserDao.ProductDoa"%>
<%@page import="bk.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
        <%
    	User auth = (User) request.getSession().getAttribute("auth");
    if(auth!=null){
    	request.setAttribute("auth", auth);
    }
    
   	User admin = (User) request.getSession().getAttribute("admin");
    if(admin!=null){
    	request.setAttribute("admin", admin);
    }
    
    ProductDoa pd = new ProductDoa(Dbcon.getConnection());
    List<Product> products = pd.getAllProduct();
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


</head>
<%@include file="frontheader.jsp"%>
<body>
  
   <section id="page-header">
     
        <h2>#stayhome</h2>
  
        <p>Save more with coupons & up to 70% off!</p>
        
    </section>


    <section id="products1" class="section-p1">

        <div class="pro-container">
        
        <%
        	if(!products.isEmpty()){
        		for(Product p :products){
        			%>
        			 <div class="pro" onclick="window.location.href='sproduct.html';">
                     <img src="./img/Products/<%=p.getImage() %>" alt="">
                     <div class="des">
                         <span>adidas</span>
                         <h5><%=p.getCategory() %></h5>
                         <div class="star">
                             <i class="fa fa-star"></i>
                             <i class="fa fa-star"></i>
                             <i class="fa fa-star"></i>
                             <i class="fa fa-star"></i>
                             <i class="fa fa-star"></i>
                         </div>
                         <h4>$<%=p.getPrice() %></h4>
                         
                     </div>
                     <a href="#"><i id="speciali" class="fa fa-shopping-cart cart "></i></a>
                 </div>
        		<%}
        	}
        %>
        
           
         
        </div>
    </section>  
    
   <!-- new section -->

    <section id="pagination" class="section-p1">
        <a href="#">1</a>
        <a href="#">2</a>
        <a href="#"><i class="fal fa-long-arrow-alt-right"></i></a>



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
    
    <div class="copyright">
        <p>© 2024, tech2 etc -HTML CSS Ecommerce Template</p>
    </div>

                                            

    <script src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>