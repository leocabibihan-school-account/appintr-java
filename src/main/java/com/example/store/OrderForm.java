package com.example.store;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;


import static java.lang.System.out;

@WebServlet(name = "OrderForm", value = "/OrderForm")
public class OrderForm extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HashMap<String, StoreItem> cart = (HashMap<String, StoreItem>) request.getSession().getAttribute("cart");

        if (cart == null || cart.isEmpty()) {
            response.sendRedirect("checkout.jsp");
            return;
        }
        request.getRequestDispatcher("orderform.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String creditCard = request.getParameter("creditCard");
        Hashtable<String, String> inputs = new Hashtable<String, String>();
        boolean hasError = false;
        if (firstName.equals("")) {
            hasError = true;
            request.setAttribute("firstName", true);
        }
        if (lastName.equals("")) {
            hasError = true;
            request.setAttribute("lastName", true);
        }
        if (email.equals("")) {
            hasError = true;
            request.setAttribute("email", true);
        }
        if (address.equals("")) {
            hasError = true;
            request.setAttribute("address", true);
        }
        if (creditCard.equals("")) {
            hasError = true;
            request.setAttribute("creditCard", true);
        }


        if (hasError) {
            request.getRequestDispatcher("orderform.jsp").forward(request, response);

        } else {
            HttpSession session = request.getSession();
            assert session != null;
            session.invalidate();
        }


        response.sendRedirect("thank.jsp");
    }
}
