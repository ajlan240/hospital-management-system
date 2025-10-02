<%--
  Created by IntelliJ IDEA.
  User: ajlan
  Date: 30-09-2025
  Time: 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hospital Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <style>
        body {
            
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background-color: #ffffff; /* main content area default white */
        }

        /* Navbar */
        .navbar { z-index: 1300; }

        /* Sidebar */
        .sidebar {
            position: fixed;
            top: 56px; /* below navbar */
            left: -250px; /* hidden initially */
            width: 250px;
            height: calc(100% - 56px);
            background-color: #198754; /* green sidebar */
            color: white;
            transition: left 0.3s ease;
            z-index: 1200;
            overflow-y: auto;
        }

        .sidebar.active { left: 0; }

        .sidebar header {
            font-size: 22px;
            line-height: 70px;
            text-align: center;
            background: #145c33; /* slightly darker green header */
        }

        .sidebar ul { padding: 0; margin: 0; list-style: none; }
        .sidebar ul li a {
            display: block;
            padding: 18px 30px;
            color: white;
            font-size: 16px;
            border-bottom: 1px solid rgba(255,255,255,0.1);
            transition: 0.3s;
        }
        .sidebar ul li a:hover { background: #0f4826; padding-left: 40px; }
        .sidebar ul li a i { margin-right: 10px; }

        /* Hamburger */
        #sidebarToggle {
            font-size: 25px;
            color: white;
            background: none;
            border: none;
            cursor: pointer;
        }

        /* Main content */
        #main-content {
            margin-top: 56px; /* below navbar */
            margin-left: 0;
            padding: 20px;
            transition: margin-left 0.3s ease;
            min-height: calc(100vh - 56px);
            background-color: #ffffff; /* white */
        }

        @media(min-width:992px){

            #main-content { margin-left: 250px; }
        }

    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-success fixed-top">
    <div class="container-fluid">
        <button id="sidebarToggle" class="me-2 d-lg-none"><i class="fas fa-bars"></i></button>
        <a class="navbar-brand" href="#"><i class="fa-solid fa-hospital"></i> Medi Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" href="admin_login.jsp">Admin</a></li>
                <li class="nav-item"><a class="nav-link" href="docter_login.jsp">Docter</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Appointment</a></li>
                <li class="nav-item"><a class="nav-link" href="user_login.jsp">User</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Sidebar -->
<div class="sidebar" id="sidebar">
    <header>Hospital</header>
    <ul>
        <li><a href="#"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
        <li><a href="#"><i class="fas fa-calendar-check"></i> Appointments</a></li>
        <li><a href="#"><i class="fas fa-notes-medical"></i> Medical Records</a></li>
        <li><a href="#"><i class="fas fa-file-invoice-dollar"></i> Billing</a></li>
        <li><a href="#"><i class="fas fa-user-cog"></i> Profile</a></li>
        <li><a href="#"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
    </ul>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    const sidebarToggle = document.getElementById('sidebarToggle');
    const sidebar = document.getElementById('sidebar');
    const mainContent = document.getElementById('main-content');

    sidebarToggle.addEventListener('click', () => {
        sidebar.classList.toggle('active');
        if(sidebar.classList.contains('active')){
            mainContent.style.marginLeft = '250px';
        } else {
            mainContent.style.marginLeft = '0';
        }
    });
</script>

</body>
</html>

