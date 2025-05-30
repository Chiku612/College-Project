<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bk.User" %>
<%
    User admin = (User) session.getAttribute("admin");
    if (admin == null) {
        response.sendRedirect("login.jsp?message=Access Denied. Please login as admin.");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #f1f7f2;">




<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8 border rounded shadow p-4 bg-light">
            <h2 class="text-center text-success mb-4">Add New Product</h2>

            <form action="add-product" method="post">
                <div class="mb-3">
                    <label class="form-label">Product Name</label>
                    <input type="text" name="name" class="form-control" required placeholder="Enter Product Name">
                </div>
                <div class="mb-3">
                    <label class="form-label">Product Type</label>
                   <input type="text" name="product" class="form-control"required placeholder="Enter product type">
                </div>
                <div class="mb-3">
                    <label class="form-label">Price</label>
                    <input type="number" name="price" class="form-control" required placeholder="Enter Unit Price">
                </div>

                <div class="mb-3">
                    <label class="form-label">Product Image</label>
                    <input type="text" name="image" class="form-control" required>
                </div>
                <div class="row">
                    <div class="col-md-6 text-center">
                        <button type="reset" class="btn btn-danger w-100">Reset</button>
                    </div>
                    <div class="col-md-6 text-center">
                        <button type="submit" class="btn btn-success w-100">Add Product</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>



<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
