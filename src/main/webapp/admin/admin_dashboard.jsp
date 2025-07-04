<%--
  Created by IntelliJ IDEA.
  User: ajlan
  Date: 30-06-2025
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- Coding by CodingNepal | www.codingnepalweb.com -->
<html lang="en" dir="ltr">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <!-- Boxicons CDN -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <meta charset="UTF-8">
    <title> Responsiive Admin Dashboard | CodingLab </title>
    <link rel="stylesheet" href="style.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        .sidebar{
            position: fixed;
            height: 100%;
            width: 240px;
            background: #0A2558;
            transition: all 0.5s ease;
        }
        .sidebar.active{
            width: 60px;
        }
        .sidebar .logo-details{
            height: 80px;
            display: flex;
            align-items: center;
        }
        .sidebar .logo-details i{
            font-size: 28px;
            font-weight: 500;
            color: #fff;
            min-width: 60px;
            text-align: center
        }
        .sidebar .logo-details .logo_name{
            color: #fff;
            font-size: 24px;
            font-weight: 500;
        }
        .sidebar .nav-links{
            margin-top: 10px;
        }
        .sidebar .nav-links li{
            position: relative;
            list-style: none;
            height: 50px;
        }
        .sidebar .nav-links li a{
            height: 100%;
            width: 100%;
            display: flex;
            align-items: center;
            text-decoration: none;
            transition: all 0.4s ease;
        }
        .sidebar .nav-links li a.active{
            background: #081D45;
        }
        .sidebar .nav-links li a:hover{
            background: #081D45;
        }
        .sidebar .nav-links li i{
            min-width: 60px;
            text-align: center;
            font-size: 18px;
            color: #fff;
        }
        .sidebar .nav-links li a .links_name{
            color: #fff;
            font-size: 15px;
            font-weight: 400;
            white-space: nowrap;
        }
        .sidebar .nav-links .log_out{
            position: absolute;
            bottom: 0;
            width: 100%;
        }
        .home-section{
            position: relative;
            background: #f5f5f5;
            min-height: 100vh;
            width: calc(100% - 240px);
            left: 240px;
            transition: all 0.5s ease;
        }
        .sidebar.active ~ .home-section{
            width: calc(100% - 60px);
            left: 60px;
        }
        .home-section nav{
            display: flex;
            justify-content: space-between;
            height: 80px;
            background: #fff;
            display: flex;
            align-items: center;
            position: fixed;
            width: calc(100% - 240px);
            left: 240px;
            z-index: 100;
            padding: 0 20px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
            transition: all 0.5s ease;
        }
        .sidebar.active ~ .home-section nav{
            left: 60px;
            width: calc(100% - 60px);
        }
        .home-section nav .sidebar-button{
            display: flex;
            align-items: center;
            font-size: 24px;
            font-weight: 500;
        }
        nav .sidebar-button i{
            font-size: 35px;
            margin-right: 10px;
        }
        .home-section nav .search-box{
            position: relative;
            height: 50px;
            max-width: 550px;
            width: 100%;
            margin: 0 20px;
        }
        nav .search-box input{
            height: 100%;
            width: 100%;
            outline: none;
            background: #F5F6FA;
            border: 2px solid #EFEEF1;
            border-radius: 6px;
            font-size: 18px;
            padding: 0 15px;
        }
        nav .search-box .bx-search{
            position: absolute;
            height: 40px;
            width: 40px;
            background: #2697FF;
            right: 5px;
            top: 50%;
            transform: translateY(-50%);
            border-radius: 4px;
            line-height: 40px;
            text-align: center;
            color: #fff;
            font-size: 22px;
            transition: all 0.4s ease;
        }
        .home-section nav .profile-details{
            display: flex;
            align-items: center;
            background: #F5F6FA;
            border: 2px solid #EFEEF1;
            border-radius: 6px;
            height: 50px;
            min-width: 190px;
            padding: 0 15px 0 2px;
        }
        nav .profile-details img{
            height: 40px;
            width: 40px;
            border-radius: 6px;
            object-fit: cover;
        }
        nav .profile-details .admin_name{
            font-size: 15px;
            font-weight: 500;
            color: #333;
            margin: 0 10px;
            white-space: nowrap;
        }
        nav .profile-details i{
            font-size: 25px;
            color: #333;
        }
        .home-section .home-content{
            position: relative;
            padding-top: 104px;
        }
        .home-content .overview-boxes{
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            padding: 0 20px;
            margin-bottom: 26px;
        }
        .overview-boxes .box{
            display: flex;
            align-items: center;
            justify-content: right;
            width: calc(100% / 4 - 15px);
            background: #fff;
            padding: 15px 14px;
            border-radius: 12px;
            box-shadow: 0 5px 10px rgba(0,0,0,0.1);
        }
        .overview-boxes .box-topic{
            font-size: 20px;
            font-weight: 500;
        }
        .home-content .box .number{
            display: inline-block;
            font-size: 35px;
            margin-top: -6px;
            font-weight: 500;
        }
        .home-content .box .indicator{
            display: flex;
            align-items: center;
        }
        .home-content .box .indicator i{
            height: 20px;
            width: 20px;
            background: #8FDACB;
            line-height: 20px;
            text-align: center;
            border-radius: 50%;
            color: #fff;
            font-size: 20px;
            margin-right: 5px;
        }
        .box .indicator i.down{
            background: #e87d88;
        }
        .home-content .box .indicator .text{
            font-size: 12px;
        }
        .home-content .box .cart{
            display: inline-block;
            font-size: 32px;
            height: 50px;
            width: 50px;
            background: #cce5ff;
            line-height: 50px;
            text-align: center;
            color: #66b0ff;
            border-radius: 12px;
            margin: -15px 0 0 6px;
        }
        .home-content .box .cart.two{
            color: #2BD47D;
            background: #C0F2D8;
        }
        .home-content .box .cart.three{
            color: #ffc233;
            background: #ffe8b3;
        }
        .home-content .box .cart.four{
            color: #e05260;
            background: #f7d4d7;
        }
        .home-content .total-order{
            font-size: 20px;
            font-weight: 500;
        }
        .home-content .sales-boxes{
            display: flex;
            justify-content: space-between;
            /* padding: 0 20px; */
        }
        /* left box */
        .home-content .sales-boxes .recent-sales{
            width: 65%;
            background: #fff;
            padding: 20px 30px;
            margin: 0 20px;
            border-radius: 12px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
        }
        .home-content .sales-boxes .sales-details{
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .sales-boxes .box .title{
            font-size: 24px;
            font-weight: 500;
            /* margin-bottom: 10px; */
        }
        .sales-boxes .sales-details li.topic{
            font-size: 20px;
            font-weight: 500;
        }
        .sales-boxes .sales-details li{
            list-style: none;
            margin: 8px 0;
        }
        .sales-boxes .sales-details li a{
            font-size: 18px;
            color: #333;
            font-size: 400px;
            text-decoration: none;
        }
        .sales-boxes .box .button{
            width: 100%;
            display: flex;
            justify-content: flex-end;
        }
        .sales-boxes .box .button a{
            color: #fff;
            background: #0A2558;
            padding: 4px 12px;
            font-size: 15px;
            font-weight: 400;
            border-radius: 4px;
            text-decoration: none;
            transition: all 0.3s ease;
        }
        .sales-boxes .box .button a:hover{
            background:  #0d3073;
        }
        /* Right box */
        .home-content .sales-boxes .top-sales{
            width: 35%;
            background: #fff;
            padding: 20px 30px;
            margin: 0 20px 0 0;
            border-radius: 12px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
        }
        .sales-boxes .top-sales li{
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin: 10px 0;
        }
        .sales-boxes .top-sales li a img{
            height: 40px;
            width: 40px;
            object-fit: cover;
            border-radius: 12px;
            margin-right: 10px;
            background: #333;
        }
        .sales-boxes .top-sales li a{
            display: flex;
            align-items: center;
            text-decoration: none;
        }
        .sales-boxes .top-sales li .product,
        .price{
            font-size: 17px;
            font-weight: 400;
            color: #333;
        }
        /* Responsive Media Query */
        @media (max-width: 1240px) {
            .sidebar{
                width: 60px;
            }
            .sidebar.active{
                width: 220px;
            }
            .home-section{
                width: calc(100% - 60px);
                left: 60px;
            }
            .sidebar.active ~ .home-section{
                /* width: calc(100% - 220px); */
                overflow: hidden;
                left: 220px;
            }
            .home-section nav{
                width: calc(100% - 60px);
                left: 60px;
            }
            .sidebar.active ~ .home-section nav{
                width: calc(100% - 220px);
                left: 220px;
            }
        }
        @media (max-width: 1150px) {
            .home-content .sales-boxes{
                flex-direction: column;
            }
            .home-content .sales-boxes .box{
                width: 100%;
                overflow-x: scroll;
                margin-bottom: 30px;
            }
            .home-content .sales-boxes .top-sales{
                margin: 0;
            }
        }
        @media (max-width: 1000px) {
            .overview-boxes .box{
                width: calc(100% / 2 - 15px);
                margin-bottom: 15px;
            }
        }
        @media (max-width: 700px) {
            nav .sidebar-button .dashboard,
            nav .profile-details .admin_name,
            nav .profile-details i{
                display: none;
            }
            .home-section nav .profile-details{
                height: 50px;
                min-width: 40px;
            }
            .home-content .sales-boxes .sales-details{
                width: 560px;
            }
        }
        @media (max-width: 550px) {
            .overview-boxes .box{
                width: 100%;
                margin-bottom: 15px;
            }
            .sidebar.active ~ .home-section nav .profile-details{
                display: none;
            }
        }
        @media (max-width: 400px) {
            .sidebar{
                width: 0;
            }
            .sidebar.active{
                width: 60px;
            }
            .home-section{
                width: 100%;
                left: 0;
            }
            .sidebar.active ~ .home-section{
                left: 60px;
                width: calc(100% - 60px);
            }
            .home-section nav{
                width: 100%;
                left: 0;
            }
            .sidebar.active ~ .home-section nav{
                left: 60px;
                width: calc(100% - 60px);
            }
        }

        .box {
            background: #ffffff;
            padding: 20px;
            margin: 20px auto;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 1000px;
            font-family: 'Segoe UI', sans-serif;
        }

        .table-title {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            margin-bottom: 15px;
            border-left: 4px solid #4CAF50;
            padding-left: 10px;
        }

        table.appointments {
            width: 100%;
            border-collapse: collapse;
        }

        table.appointments thead {
            background-color: #f2f2f2;
        }

        table.appointments th,
        table.appointments td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        table.appointments tbody tr:hover {
            background-color: #f9f9f9;
        }

        .paid {
            color: #4CAF50;
            font-weight: bold;
        }

        .unpaid {
            color: #E53935;
            font-weight: bold;
        }

        .icon-box {
            width: 50px;
            height: 50px;
            margin-left: 10px;
            background-color: #e0f7fa; /* Light teal */
            color: #00796b;            /* Teal icon */
            border-radius: 12px;       /* Rounded rectangle */
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
        }
        .bg-blue   { background-color: #42a5f5; }
        .bg-green  { background-color: #66bb6a; }
        .bg-orange { background-color: #ffa726; }
        .bg-purple { background-color: #ab47bc; }
        .bg-red    { background-color: #ef5350; }
        .bg-teal   { background-color: #26a69a; }


    </style>
</head>
<body>
<%@include file="sidebar.jsp" %>
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
            <img src="https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg" alt="">
            <span class="admin_name">Prem Shahi</span>
            <i class='bx bx-chevron-down' ></i>
        </div>
    </nav>
    <div class="home-content">
        <div class="overview-boxes">
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Docters</div>
                    <div class="number">30</div>
                    <div class="indicator">
                        <i class='bx bx-check'></i>
                        <span class="text">Today available 25</span>
                    </div>
                </div>
                <div class="icon-box">
                    <i class="fa-solid fa-user-doctor"></i>
                </div>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Patients</div>
                    <div class="number">100</div>
                    <div class="indicator">
                        <i class='bx bx-check'></i>
                        <span class="text">Todays patients 25</span>
                    </div>
                </div>
                <div class="icon-box bg-green">
                    <i class="fa-solid fa-hospital-user"></i>
                </div>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Appoinments</div>
                    <div class="number">40</div>
                    <div class="indicator">
                        <i class='bx bx-check'></i>
                        <span class="text">Todays Appoinments 25</span>
                    </div>
                </div>
                <div class="icon-box bg-orange">
                    <i class="fa-solid fa-calendar-check"></i>
                </div>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Rooms</div>
                    <div class="number">130</div>
                    <div class="indicator">
                        <i class='bx bx-check'></i>
                        <span class="text">Now Available 56</span>
                    </div>
                </div>
                <div class="icon-box bg-purple">
                    <i class="fa-solid fa-bed"></i>
                </div>
            </div>

            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Pending Bills</div>
                    <div class="number">140</div>
                    <div class="indicator">
                        <i class='bx bx-check'></i>
                        <span class="text">Todays  Bills 12</span>
                    </div>
                </div>
                <div class="icon-box bg-red">
                    <i class="fa-solid fa-file-invoice-dollar"></i>
                </div>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Labreport Submitted</div>
                    <div class="number">122</div>
                    <div class="indicator">
                        <i class='bx bx-check'></i>
                        <span class="text">Pending reports 24</span>
                    </div>
                </div>
                <div class="icon-box bg-teal">
                    <i class="fa-solid fa-vials"></i>
                </div>
            </div>
        </div>
        <%--            Appointment table   --%>
<div class="sales-boxes">
    <div class="appointment-table box">
        <div class="table-title">Today's Appointments</div>
        <table class="appointments">
            <thead>
            <tr>
                <th>Booking ID</th>
                <th>Patient Name</th>
                <th>Doctor Name</th>
                <th>Time</th>
                <th>Payment Status</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>APT101</td>
                <td>John Doe</td>
                <td>Dr. Smith</td>
                <td>10:00 AM</td>
                <td><span class="paid">Paid</span></td>
            </tr>
            <tr>
                <td>APT102</td>
                <td>Alice Brown</td>
                <td>Dr. Wilson</td>
                <td>11:30 AM</td>
                <td><span class="unpaid">Unpaid</span></td>
            </tr>
            <tr>
                <td>APT103</td>
                <td>Michael Lee</td>
                <td>Dr. Thomas</td>
                <td>01:00 PM</td>
                <td><span class="paid">Paid</span></td>
            </tr>
            <tr>
                <td>APT104</td>
                <td>Emily Clark</td>
                <td>Dr. Adams</td>
                <td>03:00 PM</td>
                <td><span class="unpaid">Unpaid</span></td>
            </tr>
            </tbody>
        </table>
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
