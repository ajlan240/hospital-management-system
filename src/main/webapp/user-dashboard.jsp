<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.entity.User" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setDateHeader("Expires", 0);
    User u1 = (User) session.getAttribute("user-obj");
    if (u1 == null) {
        response.sendRedirect("user-login.jsp");
        return;
    }

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Dashboard | MediHome</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/userDashboard.css">
</head>

<body>

<!-- Sidebar -->
<div class="sidebar">
    <div class="logo-details">
        <i class='bx bxs-clinic'></i>
        <span class="logo_name">MediHome</span>
    </div>
    <ul class="nav-links">
        <li><a href="user-dashboard.jsp" class="active"><i class='bx bx-grid-alt'></i><span>Dashboard</span></a></li>
        <li><a href="appointment.jsp"><i class='bx bx-calendar'></i><span>Appointments</span></a></li>
        <li><a href="#"><i class='bx bx-file'></i><span>Medical Records</span></a></li>
        <li><a href="#"><i class='bx bx-credit-card'></i><span>Payments</span></a></li>
        <li><a href="#"><i class='bx bx-chat'></i><span>Messages</span></a></li>
        <li><a href="user-profile.jsp"><i class='bx bx-user'></i><span>Profile</span></a></li>
        <li class="logout"><a href="logout"><i class='bx bx-log-out'></i><span>Logout</span></a></li>
    </ul>
</div>

<!-- Main Content -->
<section class="home-section">
    <nav>
        <div class="sidebar-button">
            <i class='bx bx-menu sidebarBtn'></i>
            <span class="dashboard">Dashboard</span>
        </div>
        <div class="profile-details">
            <a href="user-profile.jsp" style="text-decoration: none; color: inherit;">
                <i class='bx bx-user-circle' style="cursor: pointer;"></i>
            </a>
            <span class="admin_name">Welcome, <%= u1.getUname() %></span>
        </div>
    </nav>

    <div class="home-content">
        <div class="overview-boxes">
            <a href="appointmentServlet" class="box-link">
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Appointments</div>
                        <div class="number">12</div>
                        <div class="indicator text-success">
                            <i class='bx bx-up-arrow-alt'></i> Active
                        </div>
                    </div>
                    <i class='bx bx-calendar-check cart'></i>
                </div>
            </a>

            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Medical Records</div>
                    <div class="number">28</div>
                    <div class="indicator text-info"><i class='bx bx-up-arrow-alt'></i> Updated</div>
                </div>
                <i class='bx bx-file cart two'></i>
            </div>

            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Payments</div>
                    <div class="number">₹3,540</div>
                    <div class="indicator text-warning"><i class='bx bx-up-arrow-alt'></i> Pending</div>
                </div>
                <i class='bx bx-credit-card cart three'></i>
            </div>

            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Messages</div>
                    <div class="number">4</div>
                    <div class="indicator text-primary"><i class='bx bx-up-arrow-alt'></i> New</div>
                </div>
                <i class='bx bx-chat cart four'></i>
            </div>
        </div>

        <div class="activity-box mt-4">
            <h4>Recent Activity</h4>
            <table class="table table-striped align-middle mt-3">
                <thead class="table-primary">
                <tr>
                    <th>Activity</th>
                    <th>Date</th>
                    <th>Status</th>
                </tr>
                </thead>
                <tbody>
                <tr><td>Doctor Appointment - Dr. Smith</td><td>25 Oct 2025</td><td><span class="badge bg-success">Completed</span></td></tr>
                <tr><td>Blood Test Report Uploaded</td><td>22 Oct 2025</td><td><span class="badge bg-info">Reviewed</span></td></tr>
                <tr><td>Payment for MRI Scan</td><td>21 Oct 2025</td><td><span class="badge bg-warning">Pending</span></td></tr>
                <tr><td>New Message from Cardiologist</td><td>20 Oct 2025</td><td><span class="badge bg-primary">Unread</span></td></tr>
                </tbody>
            </table>
        </div>
    </div>
</section>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
