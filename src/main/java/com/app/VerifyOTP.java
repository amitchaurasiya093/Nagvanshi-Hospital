package com.app;

import java.io.IOException;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/VerifyOTP")
public class VerifyOTP extends HttpServlet  
  {

       protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
         {

        
    	       HttpSession session = request.getSession();

               Integer sendOtp = (Integer) session.getAttribute("otp");
               Long otpExpiryTime = (Long) session.getAttribute("otpExpiryTime");
               String email = (String) session.getAttribute("email");

               String otpParam = request.getParameter("txt_otp");
               long currentTime = System.currentTimeMillis();

               if (otpParam == null || otpParam.isEmpty()) 
                  {
            
            	        response.getWriter().println("⚠️ Please enter the OTP.");
                        return;
        
                  }

                try 
                  {
            
                	    int enteredOtp = Integer.parseInt(otpParam);

                        // OTP Check
                        if (sendOtp != null && otpExpiryTime != null && enteredOtp == sendOtp && currentTime <= otpExpiryTime) 
                           {
                
                        	     String dbUrl = "jdbc:mysql://localhost:3306/nagvanshi_hospital?autoReconnect=true&useSSL=false";
                                 String dbUser = "root";
                                 String dbPass = "boot";

                                 Class.forName("com.mysql.cj.jdbc.Driver");

                                 try (Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPass)) 
                                     {

                                          int role_id = -1;

                                          PreparedStatement getRole = conn.prepareStatement("SELECT role_id FROM login WHERE userid = ?");
                    
                                          getRole.setString(1, email);
                                          ResultSet roleRs = getRole.executeQuery();

                                          if (roleRs.next()) 
                                             {
                        
                                        	       role_id = roleRs.getInt("role_id");
                    
                                             }
                                          else 
                                             {
                       
                                                     role_id = 2;
                        
                                                     PreparedStatement insertLogin = conn.prepareStatement("INSERT INTO login (userid, role_id) VALUES (?, ?)");
                        
                                                     insertLogin.setString(1, email);
                                                     insertLogin.setInt(2, role_id);
                                                     insertLogin.executeUpdate();
                    
                                             }

                  
                                             if (role_id == 1) 
                                                {
                        
                                            	       // ================= ADMIN =================
                        
                                            	        PreparedStatement ps = conn.prepareStatement("SELECT name FROM registration WHERE email = ?");
                                                        ps.setString(1, email);
                                                        ResultSet rs = ps.executeQuery();

                                                        if (rs.next()) 
                                                           {
                            
                                                        	     session.setAttribute("name", rs.getString("name"));
                        
                                                           }
                                                        else 
                                                           {
                            
                                                        	     session.setAttribute("name", "Admin");
                        
                                                           }

                                                           session.setAttribute("email", email);

                                                            response.sendRedirect("Adminview.jsp");

                    
                                                }
                                             else if (role_id == 2) 
                                                {
                       
                                            	      // ================= USER =================
                                                      PreparedStatement ps = conn.prepareStatement("SELECT name, age, gender, mobile, address, patient_id FROM registration WHERE email = ?");
                                                      ps.setString(1, email);
                                                      ResultSet rs = ps.executeQuery();

                                                      if (rs.next()) 
                                                         {
                            
                                                    	  session.setAttribute("name", rs.getString("name"));
                                                          session.setAttribute("age", rs.getString("age"));
                                                          session.setAttribute("gender", rs.getString("gender"));
                                                          session.setAttribute("mobile", rs.getString("mobile"));
                                                          session.setAttribute("address", rs.getString("address"));
                                                          session.setAttribute("patient_id", rs.getString("patient_id"));
                                                          session.setAttribute("email", email);

                        
                                                         }
                                                      else 
                                                         {
                            
                                                               session.setAttribute("name", "User");
                                                               session.setAttribute("email", email);
                        
                                                         }

                                                         response.sendRedirect("Userview.jsp");

                    
                                                }
                                             else 
                                                {
                        
                                            	      response.getWriter().println("⚠️ Invalid Role ID!");
                    
                                                }
                
                                     }
                                 catch (SQLException e) 
                                     {
                    
                                	 e.printStackTrace();
                    
                                	 response.getWriter().println("❌ Database Error: " + e.getMessage());
                
                                     }

            
                           }
                        else 
                           {
                
                        	     response.getWriter().println("❌ Invalid OTP या OTP Expired!");
            
                           }

        
                  }
                catch (NumberFormatException e)
                  {
            
                	    response.getWriter().println("⚠️ Enter valid numeric OTP.");
        
                  }
                catch (ClassNotFoundException e) 
                  {
            
                	    response.getWriter().println("⚠️ JDBC Driver not found.");
        
                  }
    
         }

  }