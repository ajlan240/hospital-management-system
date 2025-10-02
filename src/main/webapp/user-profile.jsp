<%--
  Created by IntelliJ IDEA.
  User: ajlan
  Date: 02-10-2025
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

    if(session.getAttribute("uname") == null) {
        response.sendRedirect("user_login.jsp");
        return;
    }
%>
<h1>in user profile</h1>
</body>
</html>
