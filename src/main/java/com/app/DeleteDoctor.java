package com.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteDoctor")
public class DeleteDoctor extends HttpServlet 
  {
  
        private static final long serialVersionUID = 1L;
        protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
          {

                response.setContentType("text/plain");
                PrintWriter out = response.getWriter();

                Connection con = null;
                PreparedStatement ps = null;

                try 
                 {
                        // Fetch the doctor ID
                        String idStr = request.getParameter("id");

                        if (idStr == null || idStr.isEmpty()) 
                            {
                
                                out.print("Invalid ID provided.");
                                return;
            
                            }

                            int doctor_id = Integer.parseInt(idStr);

                            // Database Connection
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nagvanshi_hospital", "root", "boot");

                            //SQL DELETE Query
                            String sql = "DELETE FROM doctor_info WHERE doctor_id = ?";
                            ps = con.prepareStatement(sql);
                            ps.setInt(1, doctor_id);

                            int rowsAffected = ps.executeUpdate();

                            if (rowsAffected > 0) 
                              {
                
                                out.print("success");
            
                              }
                            else 
                              { 
                
                                out.print("Doctor not found or failed to delete.");
            
                              }

                        } catch (NumberFormatException nfe)
                            {
            
                                out.print("Invalid ID format.");
        
                            } catch (Exception e) 
                                {
            
                                    e.printStackTrace();
                                    out.print("An error occurred while processing your request.");
        
                                } finally 
                                    {
            
                                        try {
                
                                            if (ps != null) 
                                               {
                    
                                                    ps.close();
                
                                               }
                
                                            if (con != null) 
                                               {
                    
                                                    con.close();
                
                                               }
            
                                        } catch (Exception ex) 
                                            {
                
                                                ex.printStackTrace();
            
                                            }
        
                                        }
    
                                    }

                                }
