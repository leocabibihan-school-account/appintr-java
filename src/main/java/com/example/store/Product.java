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
        request.getRequestDispatcher("product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("submit");
        StoreItemCollection collection = new StoreItemCollection();
        //RequestDispatcher rd = request.getRequestDispatcher("checkout.jsp");
        //if (!collection.getItems().containsKey(id)) rd.forward(request, response);
        HttpSession session = request.getSession();
        //add item to cart, create new cart if it doesn't originally exist
        if (session.getAttribute("cart") == null) session.setAttribute("cart",  new HashMap<Integer, StoreItem>());
        HashMap<String,StoreItem> cart = (HashMap<String,StoreItem>) session.getAttribute("cart");

        //add to cart unless it's already there
        if (!cart.containsKey(id)) {
            StoreItem toAdd = StoreItem.clone(collection.getItems().get(id));
            toAdd.setQuantity(1);
            cart.put(id,toAdd);
        }
        request.setAttribute("cart", cart);
        //rd.forward(request, response);
        response.sendRedirect("checkout.jsp");
    }
}
