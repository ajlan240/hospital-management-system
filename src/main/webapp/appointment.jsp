<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@page import="com.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Department" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setDateHeader("Expires", 0);
    User u1 = (User) session.getAttribute("user-obj");
    if (u1 == null) {
        response.sendRedirect("user-login.jsp");
        return;
    }
//    List<Department> departmentList = (List<Department>) session.getAttribute("dept-list");


%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Appointments | HMS</title>
    <link rel="stylesheet" href="css/appointment.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<!-- Sidebar -->
<div class="sidebar">
    <div class="logo-details">
        <i class='bx bxs-clinic'></i>
        <span class="logo_name">MediHome</span>
    </div>
    <ul class="nav-links">
        <li><a href="user-dashboard.jsp" ><i class='bx bx-grid-alt'></i><span>Dashboard</span></a></li>
        <li><a href="appointment.jsp" class="active"><i class='bx bx-calendar'></i><span>Appointments</span></a></li>
        <li><a href="#"><i class='bx bx-file'></i><span>Medical Records</span></a></li>
        <li><a href="#"><i class='bx bx-credit-card'></i><span>Payments</span></a></li>
        <li><a href="#"><i class='bx bx-chat'></i><span>Messages</span></a></li>
        <li><a href="user-profile.jsp"><i class='bx bx-user'></i><span>Profile</span></a></li>
        <li class="logout"><a href="logout"><i class='bx bx-log-out'></i><span>Logout</span></a></li>
    </ul>
</div>

<!-- Main Section -->
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
            <span class="admin_name">Welcome, <%= u1.getUname() %> </span>
        </div>
    </nav>

    <div class="home-content">
        <h2 class="page-title">Book a New Appointment</h2>
        <div class="appointment-form">
            <p id="successMessage" style="
                color: ${color};
                text-align: center;
                margin-bottom: 15px;
                font-size: 10px;
            ">
              ${appAddStatus}
            </p>
                <form action="filterDocter" method="post">
                    <div class="form-group">
                        <label for="department">Select Department</label>
                        <select id="department" name="department" required>
                            <option value="">${sessionScope.selectedDept}</option>
                            <c:forEach var="dept" items="${sessionScope.deptList}">
                                <option value="${dept.deptName}">${dept.deptName}</option>
                            </c:forEach>
                        </select>
                        <button type="submit" name="action" value="filter" class="btn-primary">Filter Doctors</button>
                    </div>
                </form>

                <form action="appointmentServlet" method="post">
                <!-- Select Doctor -->
                <div class="form-group">
                    <label for="doctor">Select Doctor</label>
                    <select id="doctor" name="doctor" required>
                        <option value="">-- Choose Doctor --</option>
                        <c:forEach var="doct" items="${sessionScope.docterList}">
                            <option value="${doct.docterName}">${doct.docterName}</option>
                        </c:forEach>

<%--                        <option>Dr. Emily Davis (Neurology)</option>--%>
<%--                        <option>Dr. Rajesh Kumar (Orthopedics)</option>--%>
<%--                        <option>Dr. Priya Nair (Pediatrics)</option>--%>
<%--                        <option>Dr. Sarah Johnson (Dermatology)</option>--%>
                    </select>
                </div>

                <!-- Date and Time -->
                <div class="form-row">
                    <div class="form-group">
                        <label for="date">Appointment Date</label>
                        <input type="date" id="date" name="date" required>
                    </div>
                    <div class="form-group">
                        <label for="time">Appointment Time</label>
                        <input type="time" id="time" name="time" required>
                    </div>
                </div>

                <!-- Reason -->
                <div class="form-group">
                    <label for="reason">Reason for Visit</label>
                    <textarea id="reason" name="reason" rows="3" placeholder="Describe your symptoms or purpose..." required></textarea>
                </div>

                <!-- Submit -->
                <button type="submit" class="btn-primary">Book Appointment</button>
            </form>
        </div>

        <h2 class="page-title mt-5">Previous Appointments</h2>

        <div class="table-container">
            <table class="styled-table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Doctor</th>
                    <th>Department</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Status</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="app" items="${sessionScope.appointmentList}">
                    <tr>
                        <td>${app.appId}</td>
                        <td>${app.docterName}</td>
                        <td>${app.docterDept}</td>
                        <td>${app.date}</td>
                        <td>${app.time}</td>
                        <td class="status ${app.status}">${app.status}</td>
                    </tr>
                </c:forEach>

<%--                <tr>--%>
<%--                    <td>2</td>--%>
<%--                    <td>Dr. Emily Davis</td>--%>
<%--                    <td>Neurology</td>--%>
<%--                    <td>2025-11-02</td>--%>
<%--                    <td>02:30 PM</td>--%>
<%--                    <td class="status pending">Pending</td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td>3</td>--%>
<%--                    <td>Dr. Rajesh Kumar</td>--%>
<%--                    <td>Orthopedics</td>--%>
<%--                    <td>2025-11-05</td>--%>
<%--                    <td>09:15 AM</td>--%>
<%--                    <td class="status cancelled">Cancelled</td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td>4</td>--%>
<%--                    <td>Dr. Sarah Johnson</td>--%>
<%--                    <td>Dermatology</td>--%>
<%--                    <td>2025-11-10</td>--%>
<%--                    <td>11:45 AM</td>--%>
<%--                    <td class="status confirmed">Confirmed</td>--%>
<%--                </tr>--%>
                </tbody>
            </table>
        </div>
    </div>
</section>

</body>
</html>
