<%@ page import="com.example.store.StoreItem" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: JC14459
  Date: 11/4/2021
  Time: 3:00 PM
  To change this template use File | Settings | File Templates.
--%>
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


<div class="small-container cart-page">
    <div class="container">
        <h2 class="text-center display-2 fw-normal">Shopping Cart</h2>
        <br>
    </div>
    <table>
        <tr>
            <th> Product</th>
            <th> Quantity</th>
            <th> Subtotal</th>
        </tr>
        <%
            HashMap<String, StoreItem> cart = (HashMap<String, StoreItem>) request.getSession().getAttribute("cart");
            int total = 0;
            int shippingFee = 150;
            if (cart != null && !cart.isEmpty()) {
                for (StoreItem item : cart.values()) {
                    total += item.getQuantity() * item.getPrice();
        %>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="images/<%=item.getImg()%>">
                    <div>
                        <p><%=item.getName()%>
                        </p>
                        <small>Price: Php<%=item.getPrice()%>
                        </small>
                        <br>
                        <a style="text-decoration:none"
                           href="${pageContext.request.contextPath}/ChangeQuantityServlet?id=<%=item.getId()%>&operation=minus">
                            - </a>
                        <a style="text-decoration:none"
                           href="${pageContext.request.contextPath}/ChangeQuantityServlet?id=<%=item.getId()%>&operation=add">
                            + </a>
                    </div>
                </div>

            </td>
            <td><p><%=item.getQuantity()%>
            </p></td>
            <td> Php <%=item.getQuantity() * item.getPrice()%>
            </td>
        </tr>
        <% }
        } %>
    </table>
    <div class="total-price">
        <table>
            <tr>
                <td>Subtotal</td>
                <td>PHP<%=total%>
                </td>
            </tr>
            <tr>
                <td>Shipping Fee</td>
                <td>PHP<%=shippingFee%>
                </td>
            </tr>
            <tr>
                <td>Total</td>
                <td>PHP<%=total + shippingFee%>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <div class="order">
            <br>
            <a class="order_button" href="${pageContext.request.contextPath}/OrderForm">Order Now</a>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
