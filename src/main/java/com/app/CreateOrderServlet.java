package com.app;

import java.io.IOException;
import org.json.JSONObject;
import com.razorpay.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/CreateOrderServlet")
public class CreateOrderServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        try {
            RazorpayClient client = new RazorpayClient(
                "rzp_test_SkxNrkCOBZ5mDy",
                "c6GE7PWWuhZDZu0OEjVVXi8U"
            );

            JSONObject orderRequest = new JSONObject();
            orderRequest.put("amount", 50000); // ₹500
            orderRequest.put("currency", "INR");
            orderRequest.put("receipt", "txn_123456");

            Order order = client.orders.create(orderRequest);

            // ✅ SUCCESS RESPONSE
            response.getWriter().write(order.toString());

        } catch (Exception e) {
            e.printStackTrace();

            // ❌ ERROR RESPONSE भी JSON में भेजो
            JSONObject error = new JSONObject();
            error.put("error", e.getMessage());

            response.getWriter().write(error.toString());
        }
    }

    // 🔥 IMPORTANT (GET support)
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);
    }
}