<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Login | Hospital Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="css/user-login.css">
</head>
<body>

<div class="login-container d-flex justify-content-center align-items-center vh-100">
    <div class="login-card shadow-lg rounded-4 p-5 bg-white">
        <div class="text-center mb-4">
            <i class="bi bi-hospital text-primary display-3"></i>
            <h3 class="mt-2 fw-bold text-primary">Hospital Management System</h3>
            <p class="text-muted">User Login</p>
        </div>

        <form action="userLogin" method="post">
            <div class="mb-3">
                <label for="email" class="form-label fw-semibold">Email</label>
                <input type="email" id="email" name="email" class="form-control form-control-lg" placeholder="Enter your email" required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label fw-semibold">Password</label>
                <input type="password" id="password" name="password" class="form-control form-control-lg" placeholder="Enter your password" required>
            </div>

            <div class="d-flex justify-content-between align-items-center mb-3">
                <div>
                    <input type="checkbox" id="remember" name="remember">
                    <label for="remember" class="text-muted small">Remember me</label>
                </div>
                <a href="forgotPassword.jsp" class="text-decoration-none small text-primary">Forgot Password?</a>
            </div>

            <button type="submit" class="btn btn-primary w-100 py-2 fw-bold">Login</button>

            <p class="text-center mt-3 mb-0 text-muted">
                Don’t have an account?
                <a href="user-reg.jsp" class="text-primary fw-semibold text-decoration-none">Register</a>
            </p>
        </form>
    </div>
</div>

</body>
</html>


