<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Registration | Hospital Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="css/user-reg.css">
</head>
<body>

<div class="register-container d-flex justify-content-center align-items-center vh-100">
    <div class="register-card shadow-lg rounded-4 p-5 bg-white">
        <div class="text-center mb-4">
            <i class="bi bi-hospital text-primary display-3"></i>
            <h3 class="mt-2 fw-bold text-primary">Hospital Management System</h3>
            <p class="text-muted">User Registration</p>
        </div>

        <form action="signup" method="post">

            <div class="row g-3">
                <div class="col-md-6">
                    <label for="name" class="form-label fw-semibold">Full Name</label>
                    <input type="text" id="name" name="username" class="form-control form-control-lg" placeholder="Enter your full name" required>
                </div>

                <div class="col-md-6">
                    <label for="email" class="form-label fw-semibold">Email</label>
                    <input type="email" id="email" name="email" class="form-control form-control-lg" placeholder="Enter your email" required>
                </div>

                <div class="col-md-6">
                    <label for="phone" class="form-label fw-semibold">Phone Number</label>
                    <input type="text" id="phone" name="phone" class="form-control form-control-lg" placeholder="Enter your phone number" required>
                </div>

                <div class="col-md-6">
                    <label for="dob" class="form-label fw-semibold">Date of Birth</label>
                    <input type="date" id="dob" name="dob" class="form-control form-control-lg" required>
                </div>

                <div class="col-md-6">
                    <label for="gender" class="form-label fw-semibold">Gender</label>
                    <select id="gender" name="gender" class="form-select form-select-lg" required>
                        <option value="">Select gender</option>
                        <option>Male</option>
                        <option>Female</option>
                        <option>Other</option>
                    </select>
                </div>

                <div class="col-md-6">
                    <label for="bloodGroup" class="form-label fw-semibold">Blood Group</label>
                    <select id="bloodGroup" name="bloodGroup" class="form-select form-select-lg" required>
                        <option value="">Select blood group</option>
                        <option>A+</option>
                        <option>A-</option>
                        <option>B+</option>
                        <option>B-</option>
                        <option>AB+</option>
                        <option>AB-</option>
                        <option>O+</option>
                        <option>O-</option>
                    </select>
                </div>

                <div class="col-md-6">
                    <label for="password" class="form-label fw-semibold">Password</label>
                    <input type="password" id="password" name="password" class="form-control form-control-lg" placeholder="Enter password" required>
                </div>

                <div class="col-md-6">
                    <label for="confirmPassword" class="form-label fw-semibold">Confirm Password</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" class="form-control form-control-lg" placeholder="Confirm password" required>
                </div>

                <div class="col-12">
                    <label for="address" class="form-label fw-semibold">Address</label>
                    <textarea id="address" name="address" rows="2" class="form-control form-control-lg" placeholder="Enter your address" required></textarea>
                </div>
            </div>

            <button type="submit" class="btn btn-primary w-100 mt-4 py-2 fw-bold">Register</button>

            <p class="text-center mt-3 mb-0 text-muted">
                Already have an account?
                <a href="user-login.jsp" class="text-primary fw-semibold text-decoration-none">Login</a>
            </p>
        </form>
    </div>
</div>

</body>
</html>

