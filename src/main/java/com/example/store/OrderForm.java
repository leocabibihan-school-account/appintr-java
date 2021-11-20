package com.example.store;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;


import static java.lang.System.out;

@WebServlet(name = "OrderForm", value = "/OrderForm")
public class OrderForm extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HashMap<String, StoreItem> cart = (HashMap<String, StoreItem>) request.getSession().getAttribute("cart");

        if (cart == null || cart.isEmpty()) {
            response.sendRedirect("cart.jsp");
            return;
        }
        request.getRequestDispatcher("orderform.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String secondName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String creditCard = request.getParameter("creditCard");

        HttpSession session = request.getSession();
        session.invalidate();
        //write file here but later

        //if only it were this easy
        //Mail.send(from, to, subject, message)
        response.sendRedirect("thank.jsp");
    }
}
