<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="UserDao.UserDao"%>
<%@page import="db.Dbcon"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bk.User" %>
<%

	User admin = (User) request.getSession().getAttribute("admin");
if(admin!=null){
	request.setAttribute("admin", admin);
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
    <h2 class="text-center text-info mb-4">User Details</h2>
    <table class="table table-bordered table-hover align-middle text-center">
        <thead class="table-info">
        <tr>
            <th>UserId</th>
            <th>Name</th>
            <th>Email</th>
           
        </tr>
        </thead>
        <tbody>
        <%
            if (!users.isEmpty()) {
                for (User u : users) {
        %>
        <tr>
           
            <td><%= u.getId() %></td>
            <td><%= u.getName() %></td>
            <td><%= u.getEmail() %></td>
          
            <td>
                <a href="#" class="btn btn-warning btn-sm">Edit</a>
                <a href="#" class="btn btn-danger btn-sm">Delete</a>
            </td>
        </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
