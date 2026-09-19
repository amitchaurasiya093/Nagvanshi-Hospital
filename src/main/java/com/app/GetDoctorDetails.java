package com.app;

import java.io.IOException;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/GetDoctorDetails")
public class GetDoctorDetails extends HttpServlet
  {

       protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
         {

        
    	        String name = request.getParameter("name");

                response.setContentType("application/json");

                try 
                  {
            
                	   Connection cn = (Connection) getServletContext().getAttribute("CONN");

                	   PreparedStatement ps = cn.prepareStatement("SELECT attend_day, from_time, to_time, doctor_fee FROM doctor_info WHERE name=?");

            ps.setString(1, name);

            ResultSet rs = ps.executeQuery();

            if(rs.next()){
                String day = rs.getString("attend_day");
                String from = rs.getString("from_time");
                String to = rs.getString("to_time");
                String fee = rs.getString("doctor_fee"); // 🔥 NEW

                String json = "{"
                        + "\"day\":\""+day+"\","
                        + "\"from_time\":\""+from+"\","
                        + "\"to_time\":\""+to+"\","
                        + "\"fee\":\""+fee+"\""   // 🔥 NEW
                        + "}";

                response.getWriter().print(json);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}