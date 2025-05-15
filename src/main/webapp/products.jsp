<%@page import="bk.User"%>
<%@page import="db.Dbcon"%>
<%@page import="UserDao.ProductDoa"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="bk.Product" %>
<%
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
    <title>Stock Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center text-success mb-4">Stock Products</h2>
    <table class="table table-bordered table-hover align-middle text-center">
        <thead class="table-success">
        <tr>
            <th>Image</th>
            <th>ProductId</th>
            <th>Name</th>
            <th>Type</th>
            <th>Price</th>
            <th>Sold Qty</th>
            <th>Stock Qty</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            if (products != null) {
                for (Product p : products) {
        %>
        <tr>
            <td><img src="./img/Products/<%= p.getImage() %>" alt="product" width="50" height="50"/></td>
            <td>P20230423<%= p.getId() %></td>
            <td><%= p.getName() %></td>
            <td><%= p.getCategory() %></td>
            <td><%= p.getPrice() %></td>
            <td>0</td> <!-- Update if you add SoldQty -->
            <td>999</td> <!-- Update if you add StockQty -->
            <td>
                <a href="#" class="btn btn-primary btn-sm">Update</a>
                <a href="#" class="btn btn-danger btn-sm">Remove</a>
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
