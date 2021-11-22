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
<div class="container thanks-page">
    <div class="container">
        <h2 class="text-center display-2 fw-normal">Thank you!</h2>
        <br>
    </div>
</div>

<div>
    <div class="getreceipt">
        <br>
        <a class="order_button" id="open-popup-btn" href="#" role="button">Go Home</a>
    </div>

    <div class="popup center">
        <div class="icon">
            <i class="fa fa-check"></i>
        </div>
        <div class="title">
            Sent!
        </div>
        <div class="description">
            Order received. Please refer to receipt for the order number.
            Thank you for choosing Dolce Baker: Bliss in Every Bite
        </div>
        <div class="dismiss-btn">
            <button id="dismiss-popup-btn">
                Dismiss
            </button>
        </div>
    </div>
    <div class="center">

    </div>
</div>


<%@include file="footer.jsp" %>
<script src="${pageContext.request.contextPath}/index.jsp"></script>
</body>
</html>
