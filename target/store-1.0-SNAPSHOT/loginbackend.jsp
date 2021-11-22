<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" errorPage="error.jsp" %>

<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>


<%

    String runame = (String) session.getAttribute("sessionUsername");
    String rpassw = (String) session.getAttribute("sessionPassword");

    String luname = request.getParameter("username");
    String lpassw = request.getParameter("password");


    if ((luname.equals(runame)) && (lpassw.equals(rpassw))) {

        response.sendRedirect("index.jsp");
    } else {

        response.sendRedirect("register.jsp");
    }

%>


</body>
</html>