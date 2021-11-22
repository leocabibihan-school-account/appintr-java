<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" errorPage="error.jsp" %>

[10:27 PM]

<!DOCTYPE html>
<html>
<head>
    <link href='https://fonts.googleapis.com/css?family=Sacramento' rel='stylesheet'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css"/>


    <style>
        input[type=submit] {
            background-color: #EF8E0D;
            border: none;
            color: white;
            padding: 3px 32px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
    </style>

    <style>

        .loginfont {
            font-family: 'Sacramento';
            font-size: 22px;
            color: orange;
            text-align: center;
        }

        .submitstyle {
            font-family: 'Sacramento';
            font-size: 22px;
            color: orange;
            position: relative;
            top: -2px;
            left: 166px;
        }

    </style>

    <meta charset="ISO-8859-1">

    <title>Login</title>

    <link rel="stylesheet" href="assets/css/styles.css" type="text/css"/>

</head>
<body>
<!--header-->
<%@ include file="header.jsp" %>

<div class="form">
    <form action="loginbackend.jsp" method="post">

        <br>
        <div class="loginfont">
            <h1 style="font-size:5	vw;">Welcome Back!</h1>

            <div>User Name:
                <input type="text" name="username"/>
            </div>
            <div>Password:
                <input type="password" name="password"/>

            </div>
            <div class="loginfont">
                <input type="submit" value="Login"/>

                <%-- button onclick="location.href = 'LoginServlet.java'" id="btn-login">Login</button> --%>
            </div>

    </form>

    <form action="register.jsp" method="post">
        <div class="loginfont">
            <h2>Don't have an account?</h2>
            <div>
                <input type="submit" value="Sign Up"/>
            </div>
        </div>

    </form>
</div>


</body>
<%@ include file="footer.jsp" %>
</html>