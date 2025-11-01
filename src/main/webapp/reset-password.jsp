<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>Set New Password | HMS</title>
    <link rel="stylesheet" href="css/new-password.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>

<div class="reset-container">
    <div class="reset-box">
        <div class="logo">
            <i class='bx bx-plus-medical'></i>
            <span>HMS</span>
        </div>

        <h2>Set a New Password</h2>
        <p class="description">Please enter your new password below and confirm it.</p>

        <form action="updatePassword" method="post" class="reset-form">
            <div class="input-box">
                <i class='bx bx-lock-alt'></i>
                <input type="password" name="password1" placeholder="Enter new password" required>
            </div>

            <div class="input-box">
                <i class='bx bx-lock'></i>
                <input type="password" name="password2" placeholder="Confirm new password" required>
            </div>

            <button type="submit" class="btn-submit">Update Password</button>
            <div class="bottom-links">
                <a href="user-profile.jsp">Back</a>
            </div>
        </form>
    </div>
</div>

</body>
</html>

