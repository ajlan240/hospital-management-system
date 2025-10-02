<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>User Dashboard</title>
    <%@include file="components/all_css.jsp"%>
    <style type="text/css">
        .paint-card {
            box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
<%
if(session.getAttribute("uname") == null){
    response.sendRedirect("user_login.jsp");
    return;
}
%>
<%@include file="components/nav_bar.jsp"%>
</body>
</html>
