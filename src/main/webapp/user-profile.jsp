<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, com.entity.User, com.dao.UserDao, java.time.*, java.time.temporal.ChronoUnit" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setDateHeader("Expires", 0);

    User user = (User) session.getAttribute("user-obj");
    if (user == null) {
        response.sendRedirect("user-login.jsp");
        return;
    }
    int age = 25;


%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Profile | Hospital Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="css/user-profile.css">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
    <div class="container">
        <a class="navbar-brand fw-bold" href="index.jsp"><i class="bi bi-hospital"></i> HMS</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="user-dashboard.jsp">Dashboard</a></li>
                <li class="nav-item"><a class="nav-link active" href="user-profile.jsp">Profile</a></li>
                <li class="nav-item"><a class="nav-link text-danger" href="logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Profile Section -->
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="profile-card shadow-lg p-5 rounded-4">
                <div class="text-center mb-4">
                    <img src="img/prof-img1.jpeg" alt="User Profile" class="profile-img mb-3">
                    <h3 class="fw-bold text-primary"><%= user.getUname() %></h3>
                    <p class="text-muted mb-0"><i class="bi bi-envelope"></i> <%= user.getEmail() %></p>
                    <p class="text-muted"><i class="bi bi-telephone"></i> <%= user.getPhoneNo() %></p>
                </div>

                <hr>

                <h5 class="fw-bold mb-3 text-secondary">Personal Information</h5>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label class="form-label">Gender</label>
                        <input type="text" class="form-control" value="<%= user.getGender() %>" readonly>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Date of Birth</label>
                        <input type="text" class="form-control" value="<%= user.getDob() %>" readonly>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6">
                        <label class="form-label">Age</label>
                        <input type="text" class="form-control" value="<%= age > 0 ? age + " years" : "Not available" %>" readonly>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Blood Group</label>
                        <input type="text" class="form-control" value="<%= (user.getBloodGroup() != null ? user.getBloodGroup() : "Not provided") %>" readonly>
                    </div>
                </div>

                <div class="row mb-4">
                    <div class="col-md-12">
                        <label class="form-label">Address</label>
                        <textarea class="form-control" rows="2" readonly><%= user.getAddress() %></textarea>
                    </div>
                </div>

                <div class="text-center">
                    <a href="edit-profile.jsp" class="btn btn-primary px-4"><i class="bi bi-pencil-square"></i> Edit Profile</a>
                    <a href="reset-password.jsp" class="btn btn-outline-secondary px-4 ms-2"><i class="bi bi-shield-lock"></i> Change Password</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="text-center py-4 bg-light mt-5 border-top">
    <p class="mb-0 text-muted">&copy; 2025 Hospital Management System | Designed by HMS Team</p>
</footer>

</body>
</html>
