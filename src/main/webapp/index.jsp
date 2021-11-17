

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.example.store.StoreItemCollection" %>
<%@ page import="com.example.store.StoreItem" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Dolce Baker</title>
    <link rel="stylesheet" href="./styles.css" />

</head>
<body>
<%@include file="header.jsp"%>

<main>
    <!--hero-->
    <section
            class="
          d-flex
          flex-column
          banner
          justify-content-center
          align-items-center
        "
    >
        <h1 class="display-1 fw-bold text-light">Welcome!</h1>

    </section>

    <div class="bg-warning">
        <p class="text-center lead fw-bold text-light">Bliss in every bite</p>
    </div>

    <!--menu section-->
    <section id="menu">
        <div class="container px-4 py-5" id="custom-cards">
            <h2 class="text-center display-5 fw-normal">Menu</h2>
            <div class="mt-5">
                <h3>Cakes</h3>
                <div class="row">
                    <%
                        StoreItemCollection items = new StoreItemCollection();

                        for (StoreItem item: items.getItems().values()) {
                            out.println("<div class=\"col-sm-4 mt-2\">");
                            out.println("<a class='text-decoration-none' href='product.jsp?id=" + item.getId() + "'>");
                            out.println("<div class=\"card text-white h-100 bg-dark rounded-5 shadow-lg\" style=\"background-image: url('./images/" + item.getImg() + "')\">");
                            out.println("<div class=\"d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1\">");
                            out.println("<h2 class=\"pt-5 mt-5 mb-4 lh-1 fw-bold\">"+ item.getName() +"</h2>");
                            out.println("</div>");
                            out.println("</div>");
                            out.println("</a>");
                            out.println("</div>");

                        }



                    %>
                </div>
            </div>
        </div>
    </section>
</main>
<%@include file="footer.jsp"%>


</body>
</html>