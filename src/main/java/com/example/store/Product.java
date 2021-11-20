package com.example.store;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "Product", value = "/Product")
public class Product extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StoreItemCollection collection = new StoreItemCollection();
        if (request.getParameter("id") == null || !collection.getItems().containsKey(request.getParameter("id"))) {
            response.sendRedirect("index.jsp");
            return;
        }
        request.getRequestDispatcher("product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
