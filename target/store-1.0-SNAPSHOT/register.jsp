<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link href='https://fonts.googleapis.com/css?family=Sacramento' rel='stylesheet'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css"/>

    <meta charset="ISO-8859-1">
    <title>Output Page</title>
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


        .registerfont {
            font-family: "Sacramento";
            font-size: 22px;
            color: orange;
            text-align: center;
        }

        .submitstyle {
            font-family: "Sacramento";
            font-size: 22px;
            color: orange;
            position: relative;
            top: -2px;
            left: 716px;
        }
    </style>

    <meta charset="ISO-8859-1">

    <title>Login</title>

    <link rel="stylesheet" href="assets/css/styles.css" type="text/css"/>

</head>
<body>

<!--header-->
<%@ include file="header.jsp" %>

<br>

<form method="Get" action="registerbackend.jsp">

    <div class="registerfont">
        <h1>Create An Account!</h1>

        <div>
            Username: <input type="text" name="uname">
        </div>

        <div>
            Password: <input type="password" name="passw"/>
        </div>
    </div>

    <br>
    <div class="submitstyle">
        <input type="submit" value="Create Account"/>
    </div>
</form>

<%@ include file="footer.jsp" %>

</body>
</html>