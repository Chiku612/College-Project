<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lucky bajar</title>
</head>
<body>
<section id="header">
        <a href="#"> <img src="img/logo.png" class="logo" alt=""></a>
        <div>
            <ul id="navbar">
                <li><a class="active" href="index.jsp">Home</a></li>
                <li><a href="./shop.jsp">Shop</a></li>
                <!-- <li><a href="blog.html">Blog</a></li> -->
                <li><a href="about.jsp">About</a></li>
                <li><a href="Contact.jsp">Contact</a></li>
                <%
                	if(auth != null){
                		%>
                		 <li><a href="user-logout"><div class="d-grid gap-2 d-md-flex justify-content-md-end">
                         <button class="btn btn-primary me-md-2" type="button">Logout</button>
                         

                       </div></a></li>
                       
                        <li id="lg-bag"><a href="card.jsp"> <img src="img/add-to-cart.png" height="25px" class="logo" alt=""></a></li>
                     <a href="#" id="close01"><i class="fa fa-close"></i></a>
                	<% }
                	else{%>
                		 <li><a href="login.jsp"><div class="d-grid gap-2 d-md-flex justify-content-md-end">
                         <button class="btn btn-primary me-md-2" type="button">Login</button>
                         

                       </div></a></li>
                       
                     <li id="lg-bag"><a href="card.jsp"> <img src="img/add-to-cart.png" height="25px" class="logo" alt=""></a></li>
                     <a href="#" id="close01"><i class="fa fa-close"></i></a>
                	<%}
                %>
                
               

            </ul>
        </div>

        <div id="mobile">
            <a href="card.jsp"> <img src="img/add-to-cart.png" height="25px" class="logo" alt=""></a>
            <i id="bar" class="fa fa-bars"></i>
        </div>
       
    </section>
</body>
</html>