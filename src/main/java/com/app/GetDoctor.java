package com.app;

import java.io.IOException;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/GetDoctor")
public class GetDoctor extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String dept_id = request.getParameter("dept_id");
        response.setContentType("text/html");

        try {
            Connection cn = (Connection) getServletContext().getAttribute("CONN");

            if(dept_id == null || dept_id.isEmpty()){
                response.getWriter().println("<option value=''>Select Doctor</option>");
                return;
            }

            PreparedStatement ps = cn.prepareStatement(
                "SELECT NAME FROM doctor_info WHERE dept_id=?"
            );

            ps.setInt(1, Integer.parseInt(dept_id));

            ResultSet rs = ps.executeQuery();

            response.getWriter().println("<option value=''>Select Doctor</option>");

            while (rs.next()) {
                response.getWriter().println(
                    "<option value='" + rs.getString("NAME") + "'>" 
                    + rs.getString("NAME") + 
                    "</option>"
                );
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("<option>Error loading doctors</option>");
        }
    }
}