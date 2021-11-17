package com.example.store;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "ChangeQuantityServlet", value = "/ChangeQuantityServlet")
public class ChangeQuantityServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String operation = request.getParameter("operation");
        if (id == null) {
            response.sendRedirect("checkout.jsp");
            return;
        }
        if (!(operation.equals("add") || operation.equals("minus"))) {
            response.sendRedirect("checkout.jsp");
            return;
        }
        StoreItemCollection store = new StoreItemCollection();
        HashMap<String, StoreItem> collection = store.getItems();
        if (!collection.containsKey(id)) {
            response.sendRedirect("checkout.jsp");
            return;
        }
        //add or sub, remove if not there
        HttpSession session = request.getSession();
        //turns out state stays in a servlet
        HashMap<String, StoreItem> cart = (HashMap<String, StoreItem>) session.getAttribute("cart");
        assert cart != null;
        assert !cart.isEmpty();
        int quantity = cart.get(id).getQuantity();
        int newQuantity = operation.equals("add")? quantity + 1: quantity - 1;
        if (newQuantity == 0) {
            cart.remove(id);
        } else {
            cart.get(id).setQuantity(newQuantity);
        }
        response.sendRedirect("checkout.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
