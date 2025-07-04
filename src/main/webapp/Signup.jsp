<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en" dir="ltr">
<head>
    <%@include file="component/all_css.jsp"%>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Registration or Sign Up form in HTML CSS | CodingLab </title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body{
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #1abc9c;
        }
        .wrapper{
            position: relative;
            max-width: 430px;
            width: 100%;
            background: #fff;
            padding: 34px;
            border-radius: 6px;
            box-shadow: 0 5px 10px rgba(0,0,0,0.2);
        }
        .wrapper h2{
            position: relative;
            font-size: 22px;
            font-weight: 600;
            color: #333;
        }
        .wrapper h2::before{
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            height: 3px;
            width: 28px;
            border-radius: 12px;
            background: #4070f4;
        }
        .wrapper form{
            margin-top: 30px;
        }
        .wrapper form .input-box{
            height: 52px;
            margin: 18px 0;
        }
        form .input-box input{
            height: 100%;
            width: 100%;
            outline: none;
            padding: 0 15px;
            font-size: 17px;
            font-weight: 400;
            color: #333;
            border: 1.5px solid #C7BEBE;
            border-bottom-width: 2.5px;
            border-radius: 6px;
            transition: all 0.3s ease;
        }
        .input-box input:focus,
        .input-box input:valid{
            border-color: #1abc9c;
        }
        form .policy{
            display: flex;
            align-items: center;
        }
        form h3{
            color: #707070;
            font-size: 14px;
            font-weight: 500;
            margin-left: 10px;
        }
        .input-box.button input{
            color: #fff;
            letter-spacing: 1px;
            border: none;
            background: #1abc9c;
            cursor: pointer;
        }
        .input-box.button input:hover{
            background: #0e4bf1;
        }
        form .text h3{
            color: #333;
            width: 100%;
            text-align: center;
        }
        form .text h3 a{
            color:#1abc9c;
            text-decoration: none;
        }
        form .text h3 a:hover{
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="wrapper">
    <h2>Registration</h2>
    <form action="user_register" method="post">
        <c:if test="${not empty errorMsg}">
            <p class="text-center, text-danger fs-3"><i class="fa-solid fa-circle-exclamation" style="color: #e00000;"></i>${errorMsg}</p>
            <c:remove var="errorMsg" scope="session"/>
        </c:if>

        <c:if test="${not empty SucMsg}">
            <p class="text-center, text-success fs-6" style="color: #00b83d;"><i class="fa-solid fa-circle-check" style="color: #00b83d;"></i>${SucMsg}</p>
            <c:remove var="SucMsg" scope="session"/>
        </c:if>

        <p></p>
        <div class="input-box">
            <input type="text" name="name" placeholder="Enter your name" required>
        </div>
        <div class="input-box">
            <input type="text" name="email" placeholder="Enter your email" required>
        </div>
        <div class="input-box">
            <input type="password"  placeholder="Create password" required>
        </div>
        <div class="input-box">
            <input type="password" name="password" placeholder="Confirm password" required>
        </div>
        <div class="policy">
            <input type="checkbox">
            <h3>I accept all terms & condition</h3>
        </div>
        <div class="input-box button">
            <input type="Submit" value="Register Now">
        </div>
        <div class="text">
            <h3>Already have an account? <a href="#">Login now</a></h3>
        </div>
    </form>
</div>
</body>
</html>