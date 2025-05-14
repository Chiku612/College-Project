<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="UserDao.UserDao"%>
<%@page import="db.Dbcon"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bk.User" %>
<%
    User user = (User) session.getAttribute("auth");
    if (user == null) {
        response.sendRedirect("login.jsp"); // Redirect if not logged in
        return;
    }
    
    UserDao us = new UserDao(Dbcon.getConnection());
    List<User> users = us.getAllProduct();
    
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="card shadow-lg p-4">
        <h2 class="text-center text-primary mb-4">User Profile</h2>
        <div class="row mb-3">
        
        <%
        	if(!users.isEmpty()){
        		for(User u:users){
        		%>

                    <label class="col-sm-3 col-form-label fw-bold">User ID:</label>
                    <div class="col-sm-9">
                        <p class="form-control-plaintext"><%= u.getId() %></p>
                    </div>
                </div>
                <div class="row mb-3">
                    <label class="col-sm-3 col-form-label fw-bold">Name:</label>
                    <div class="col-sm-9">
                        <p class="form-control-plaintext"><%= u.getName() %></p>
                    </div>
                </div>
                <div class="row mb-3">
                    <label class="col-sm-3 col-form-label fw-bold">Email:</label>
                    <div class="col-sm-9">
                        <p class="form-control-plaintext"><%= u.getEmail() %></p>
                    </div>
                </div>
                
        	<%	}
        	}
        
        %>
        
        
        <div class="text-center">
            <a href="index.jsp" class="btn btn-secondary">Back to Home</a>
        </div>
    </div>
</div>
</body>
</html>
