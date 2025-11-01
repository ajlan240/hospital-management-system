<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, com.entity.User, com.dao.UserDao" %>
<%
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
  response.setHeader("Pragma", "no-cache"); // HTTP 1.0
  response.setDateHeader("Expires", 0);
  User user = (User) session.getAttribute("user-obj");
  if(user == null) {
    response.sendRedirect("user-login.jsp");
    return;
  }
  int age = 25;
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Edit Profile | Hospital Management System</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
  <link rel="stylesheet" href="css/user-profile.css">
  <style>
    .edit-card {
      background: #fff;
      border-radius: 1.5rem;
      padding: 2.5rem;
      box-shadow: 0 4px 20px rgba(0,0,0,0.1);
    }
    .edit-card h4 {
      color: #0d6efd;
      font-weight: 700;
      margin-bottom: 1.5rem;
    }
    .form-control:focus {
      box-shadow: none;
      border-color: #0d6efd;
    }
    .btn-primary {
      background-color: #0d6efd;
      border: none;
      border-radius: 8px;
      transition: 0.3s;
    }
    .btn-primary:hover {
      background-color: #084298;
    }
  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
  <div class="container">
    <a class="navbar-brand fw-bold" href="index.jsp"><i class="bi bi-hospital"></i> HMS</a>
    <div class="collapse navbar-collapse">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="user-dashboard.jsp">Dashboard</a></li>
        <li class="nav-item"><a class="nav-link active" href="edit-profile.jsp">Edit Profile</a></li>
        <li class="nav-item"><a class="nav-link text-danger" href="logout.jsp">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- Edit Profile Section -->
<div class="container py-5">
  <div class="row justify-content-center">
    <div class="col-lg-8">
      <div class="edit-card">
        <h4 class="mb-4"><i class="bi bi-pencil-square"></i> Edit Profile</h4>
        <form action="updateProfile" method="post">

          <div class="row mb-3">
            <div class="col-md-6">
              <label class="form-label">Full Name</label>
              <input type="text" name="uname" class="form-control" value="<%= user.getUname() %>" required>
            </div>
            <div class="col-md-6">
              <label class="form-label">Email</label>
              <input type="email" name="email" class="form-control" value="<%= user.getEmail() %>" required>
            </div>
          </div>

          <div class="row mb-3">
            <div class="col-md-6">
              <label class="form-label">Phone Number</label>
              <input type="text" name="phone" class="form-control" value="<%= user.getPhoneNo() %>" required>
            </div>
            <div class="col-md-6">
              <label class="form-label">Gender</label>
              <select name="gender" class="form-select" required>
                <option <%= "Male".equals(user.getGender()) ? "selected" : "" %>>Male</option>
                <option <%= "Female".equals(user.getGender()) ? "selected" : "" %>>Female</option>
                <option <%= "Other".equals(user.getGender()) ? "selected" : "" %>>Other</option>
              </select>
            </div>
          </div>

          <div class="row mb-3">
            <div class="col-md-6">
              <label class="form-label">Date of Birth</label>
              <input type="date" name="dob" class="form-control" value="<%= user.getDob() %>" required>
            </div>
            <div class="col-md-3">
              <label class="form-label">Age</label>
              <input type="number" name="age" class="form-control" value="<%= age %>" required>
            </div>
            <div class="col-md-3">
              <label class="form-label">Blood Group</label>
              <input type="text" name="bloodGroup" class="form-control" value="<%= user.getBloodGroup() %>" required>
            </div>
          </div>

          <div class="mb-4">
            <label class="form-label">Address</label>
            <textarea name="address" class="form-control" rows="2" required><%= user.getAddress() %></textarea>
          </div>

          <div class="text-center">
            <button type="submit" class="btn btn-primary px-4"><i class="bi bi-save"></i> Save Changes</button>
            <a href="user-profile.jsp" class="btn btn-outline-secondary px-4 ms-2"><i class="bi bi-arrow-left-circle"></i> Cancel</a>
          </div>
        </form>
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
