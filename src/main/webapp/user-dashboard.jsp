<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>User DashBoard</title>
    <link rel="stylesheet" href="css/style.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<%

if(session.getAttribute("uname") == null) {
    response.sendRedirect("user_login.jsp");
    return;
}
%>
<div class="sidebar">
    <div class="logo-details">
        <i class='bx bxs-clinic'></i>
        <span class="logo_name">MediHome</span>
    </div>
    <ul class="nav-links">
        <li>
            <a href="#" class="active">
                <i class='bx bx-grid-alt' ></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-calendar-check'></i>
                <span class="links_name">Appoinments</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-file'></i>
                <span class="links_name">Medical Records</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-credit-card'></i>
                <span class="links_name">Billing</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-envelope'></i>
                <span class="links_name">Notification</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-user'></i>
                <span class="links_name">profiles</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-help-circle'></i>
                <span class="links_name">Support</span>
            </a>
        </li>
        <li class="log_out">
            <a href="logout" type="post">
                <i class='bx bx-log-out'></i>
                <span class="links_name">Log out</span>
            </a>
        </li>
    </ul>
</div>
<section class="home-section">
    <nav>
        <div class="sidebar-button">
            <i class='bx bx-menu sidebarBtn'></i>
            <span class="dashboard">Dashboard</span>
        </div>
        <div class="search-box">
            <input type="text" placeholder="Search...">
            <i class='bx bx-search' ></i>
        </div>
        <div class="profile-details">
            <img src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-photos%2Fman&psig=AOvVaw0oPx3TZ1S9Ym1CAAalRcrZ&ust=1759480443572000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNibk8eNhZADFQAAAAAdAAAAABAK" alt="">
            <span class="admin_name">${sessionScope.uname}</span>
            <i class='bx bx-chevron-down' ></i>
        </div>
    </nav>
    <div class="home-content">
        <div class="overview-boxes">
            <div class="box" onclick="window.location.href='user-profile.jsp'" style="cursor:pointer;">
                <div class="right-side">
                    <div class="box-topic">Your profile</div>
                    <div class="text">${sessionScope.uname}</div>
                    <div class="indicator">
                        <span class="text" style="color: red">profile completed</span>
                    </div>
                </div>
                <i class='bx bxs-user profile'></i>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Pending Bills</div>
                    <div class="number">38,876</div>
                    <div class="indicator">
                        <i class='bx bx-up-arrow-alt'></i>
                        <span class="text">Up from yesterday</span>
                    </div>
                </div>
                <i class='bx bxs-cart-add cart two' ></i>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Profit</div>
                    <div class="number">$12,876</div>
                    <div class="indicator">
                        <i class='bx bx-up-arrow-alt'></i>
                        <span class="text">Up from yesterday</span>
                    </div>
                </div>
                <i class='bx bx-cart cart three' ></i>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Return</div>
                    <div class="number">11,086</div>
                    <div class="indicator">
                        <i class='bx bx-down-arrow-alt down'></i>
                        <span class="text">Down From Today</span>
                    </div>
                </div>
                <i class='bx bxs-cart-download cart four' ></i>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Order</div>
                    <div class="number">40,876</div>
                    <div class="indicator">
                        <i class='bx bx-up-arrow-alt'></i>
                        <span class="text">Up from yesterday</span>
                    </div>
                </div>
                <i class='bx bx-cart-alt cart'></i>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Order</div>
                    <div class="number">40,876</div>
                    <div class="indicator">
                        <i class='bx bx-up-arrow-alt'></i>
                        <span class="text">Up from yesterday</span>
                    </div>
                </div>
                <i class='bx bx-cart-alt cart'></i>
            </div>
        </div>
    </div>
</section>
<script>
let sidebar = document.querySelector(".sidebar");
 let sidebarBtn = document.querySelector(".sidebarBtn");
 sidebarBtn.onclick = function() {
   sidebar.classList.toggle("active");
   if(sidebar.classList.contains("active")){
   sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
 }else
   sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
 }
</script>
</body>
</html>
