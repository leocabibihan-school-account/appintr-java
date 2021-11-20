<%--
  Created by IntelliJ IDEA.
  User: JC14459
  Date: 11/9/2021
  Time: 11:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.example.store.StoreItem" %>
<%@ page import="com.example.store.StoreItemCollection" %>
<%
    StoreItemCollection items = new StoreItemCollection();
    StoreItem item = items.getItems().get(request.getParameter("id"));
%>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title><%=item.getName()%>
    </title>
    <link rel="stylesheet" href="styles.css"/>
</head>
<body>
<%@include file="header.jsp" %>
<main>
    <div class="container py-5">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.jsp">Menu</a></li>
                <li class="breadcrumb-item active" aria-current="page">
                    <%= item.getName() %>
                </li>
            </ol>
        </nav>
        <div class="row">
            <div class="col-md-7">
                <img
                        class="img-fluid"
                        src="./images/<%=item.getImg()%>"
                        alt=""
                />
            </div>
            <div class="col-md-5">
                <h1 class="h4"><%=item.getName()%>
                </h1>
                <h6>PHP <%=item.getPrice()%> per pc</h6>

                <p>
                    <%=item.getDescription()%>
                </p>
                <div class="d-grid gap-2">
                    <a class="btn btn-primary"
                       href="${pageContext.request.contextPath}/ProductServlet?id=<%=item.getId()%>">Add to Cart</a>
                </div>
            </div>
        </div>
    </div>
</main>
<%@include file="footer.jsp" %>
</body>
</html>
