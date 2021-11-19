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
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Dolce Baker</title>
    <link rel="stylesheet" href="./styles.css" />

</head>
<body>
    <%@include file="header.jsp"%>
    <%
        HashMap<String, StoreItem> cart = (HashMap<String, StoreItem>) request.getSession().getAttribute("cart");
        if (cart == null) {
            out.println("cart empty");
        } else {
            int total = 0;
            for (StoreItem item: cart.values()) {
                total += item.getQuantity() * item.getPrice();

                out.println("<div>");
                out.println("<div>" + item.getName() + "</div>");
                out.println("<div>" + item.getQuantity() + "</div>");
                out.println("<div>" + item.getPrice() + "</div>");
                out.println("<div>" + item.getImg() + "</div>");
                out.println("<a href="+ request.getContextPath() + "/ChangeQuantityServlet" + "?id=" + item.getId() + "&operation=add" +"> add</a>");
                out.println("<a href="+ request.getContextPath() + "/ChangeQuantityServlet" + "?id=" + item.getId() + "&operation=minus" +"> less</a>");

                out.println("</div>");

            }
            out.println("<div>");

            out.println("total price: " + total);
            out.println("</div>");



        }



    %>
    <%@include file="footer.jsp"%>
</body>
</html>
