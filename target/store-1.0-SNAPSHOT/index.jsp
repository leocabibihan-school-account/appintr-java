<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.example.store.StoreItemCollection" %>
<%@ page import="com.example.store.StoreItem" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Dolce Baker</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css"/>

</head>
<body>
<%@include file="header.jsp" %>


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
                        for (StoreItem item : items.getItems().values()) {
                    %>

                    <div class="col-sm-4 mt-2">
                        <a class='text-decoration-none'
                           href='${pageContext.request.contextPath}/Product?id=<%=item.getId()%>'>
                            <div
                                    class="card text-white h-100 bg-dark rounded-5 shadow-lg"
                                    style="background-image: url('${pageContext.request.contextPath}/images/<%=item.getImg()%>')"
                            >
                                <div
                                        class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1"
                                >
                                    <h2 class="pt-5 mt-5 mb-4 lh-1 fw-bold"><%=item.getName()%>
                                    </h2>
                                </div>
                            </div>
                        </a>
                    </div>

                    <% }%>
                </div>

            </div>
        </div>
    </section>
</main>
<%@include file="footer.jsp" %>


</body>
</html>