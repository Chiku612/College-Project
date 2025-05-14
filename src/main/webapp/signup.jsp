<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up Page</title>

<!-- Bootstrap 5.3 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
  body {
    background-color: #f5f7fa;
  }
  .signup-box {
    max-width: 400px;
    margin: 80px auto;
    padding: 30px;
    background-color: white;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
  }
</style>
</head>

<body>

<div class="signup-box">
  <h2 class="text-center mb-4">Sign Up</h2>

  <form action="user-signup" method="post">
    <div class="mb-3">
      <label for="name" class="form-label">Full Name</label>
      <input type="text" class="form-control" id="name" name="name" placeholder="Enter full name" required>
    </div>

    <div class="mb-3">
      <label for="email" class="form-label">Email address</label>
      <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
    </div>

    <div class="mb-3">
      <label for="password" class="form-label">Password</label>
      <input type="password" class="form-control" id="password" name="password" placeholder="Create password" required>
    </div>

    <div class="mb-3">
      <label for="confirm-password" class="form-label">Confirm Password</label>
      <input type="password" class="form-control" id="confirm-password" name="confirmPassword" placeholder="Confirm password" required>
    </div>

    <button type="submit" class="btn btn-primary w-100">Sign Up</button>
  </form>

  <div class="text-center mt-3">
    Already have an account? <a href="login.jsp">Login</a>
  </div>
</div>

<!-- Optional Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
