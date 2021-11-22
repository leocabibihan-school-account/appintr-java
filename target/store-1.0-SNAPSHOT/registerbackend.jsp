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
<form action="loginbackend.jsp" method="post">
    <%

        String uname = request.getParameter("uname");
        String passw = request.getParameter("passw");

/*
List<String> listuname = (List<String>) session.getAttribute("myUsername");
List<String> listpass = (List<String>) session.getAttribute("myPassword");


if ((listuname == null) && (listpass == null))
{
	listuname = new ArrayList<String>();
	listpass = new ArrayList<String>();
	session.setAttribute("myUsername", listuname);
	session.setAttribute("myPassword", listpass);
}

String theuname = request.getParameter("uname");
String thepass = request.getParameter("passw");

if((theuname != null) && (thepass == null))
{
	listuname.add(theuname);
	listpass.add(thepass);
} */


        if ((uname.equals("")) && (passw.equals(""))) {
            response.sendRedirect("register.jsp");
        } else {
            session.setAttribute("sessionUsername", uname);
            session.setAttribute("sessionPassword", passw);
            response.sendRedirect("Login.jsp");
        }

/* String runame  = (String) session.getAttribute("sessionUsername");
String rpassw  = (String) session.getAttribute("sessionPassword");

 String runame  = (String) session.getAttribute("sessionUsername");
String rpassw  = (String) session.getAttribute("sessionPassword");


out.println(runame);
out.println(rpassw); */

    %>

    <a href="loginbackend.jsp">go to login bck end</a>
    <input type="submit" value="Login"/>
</form>
</body>
</html>