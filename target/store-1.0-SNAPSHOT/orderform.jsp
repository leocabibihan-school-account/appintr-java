<%@ page import="java.util.HashMap" %>
<%@ page import="com.example.store.StoreItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Dolce Baker</title>
    <link rel="stylesheet" href="styles.css"/>

</head>
<body>
<%@include file="header.jsp" %>


<h3>ORDER FORM</h3>
<div class="row">
    <div class="col-md-6">
        <form action=' ${pageContext.request.contextPath}/OrderForm' method="post">
            <div class="mb-3">
                <label for="firstName" class="form-label">First Name</label>
                <input type="" class="form-control" id="firstName">
            </div>
            <div class="mb-3">
                <label for="lastName" class="form-label">Last Name</label>
                <input class="form-control" id="lastName"/>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email address</label>
                <input type="email" class="form-control" id="email">
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                <input class="form-control" id="address"/>
            </div>
            <div class="mb-3">
                <label for="creditCard" class="form-label"> Credit Card</label>
                <input class="form-control" id="creditCard"/>
            </div>

            <button class="btn btn-primary btn-large" type="submit">Order</button>
        </form>
        <%
            HashMap<String, StoreItem> cart = (HashMap<String, StoreItem>) request.getSession().getAttribute("cart");
            int total = 0;
            for (StoreItem item : cart.values()) {
                total += item.getQuantity() * item.getPrice();
            }
        %>
        <h5>total PHP<%=total%>
        </h5>
    </div>


    <div class="img-container col-md-6">
        <div class=".d-sm-none .d-md-block">
            <div class="row">
                <div class="">
                    <img src="${pageContext.request.contextPath}/images/P4.jpg" width="400" height="200">
                    <img src="${pageContext.request.contextPath}/images/P1SansRival.png" width="200" height="200">
                    <img src="${pageContext.request.contextPath}/images/P6MiniCheesecake.jpg" width="200" height="200">
                    <img src="${pageContext.request.contextPath}/images/P5Cookies.jpg" width="400" height="200">
                </div>
            </div>
        </div>

    </div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
