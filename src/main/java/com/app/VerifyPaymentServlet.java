package com.app;


import java.io.IOException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/VerifyPaymentServlet")
public class VerifyPaymentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

        String orderId = request.getParameter("razorpay_order_id");
        String paymentId = request.getParameter("razorpay_payment_id");
        String signature = request.getParameter("razorpay_signature");

        try {
            String generatedSignature = hmacSHA256(orderId + "|" + paymentId, "YOUR_KEY_SECRET");

            if (generatedSignature.equals(signature)) {
                response.getWriter().write("Payment Verified ✅");
            } else {
                response.getWriter().write("Payment Failed ❌");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String hmacSHA256(String data, String key) throws Exception {
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec(key.getBytes(), "HmacSHA256"));
        byte[] hash = mac.doFinal(data.getBytes());

        StringBuilder hex = new StringBuilder();
        for (byte b : hash) {
            hex.append(String.format("%02x", b));
        }
        return hex.toString();
    }
}
