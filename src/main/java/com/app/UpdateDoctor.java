package com.app;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateDoctor")
public class UpdateDoctor extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get data from the form
        int doctor_id = Integer.parseInt(request.getParameter("doctor_id"));
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String mobile = request.getParameter("mobile");
        String father_name = request.getParameter("father_name");
        String qualification = request.getParameter("qualification");
        String address = request.getParameter("address");
        String attend_day = request.getParameter("attend_day");
        String attend_time = request.getParameter("attend_time");

        // Database connection and update
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nagvanshi_hospital", "root", "boot");
            String query = "UPDATE doctor_info SET name = ?, age = ?, gender = ?, mobile = ?, father_name = ?, qualification = ?, address = ?, attend_day = ?, attend_time = ? WHERE doctor_id = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, age);
            ps.setString(3, gender);
            ps.setString(4, mobile);
            ps.setString(5, father_name);
            ps.setString(6, qualification);
            ps.setString(7, address);
            ps.setString(8, attend_day);
            ps.setString(9, attend_time);
            ps.setInt(10, doctor_id);

            int result = ps.executeUpdate();
            if (result > 0) {
                response.sendRedirect("AdminDoctorList.jsp");  // Redirect to the Doctor List page after update
            } else {
                response.getWriter().println("Error updating record.");
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Database Error: " + e.getMessage());
        }
    }
}
