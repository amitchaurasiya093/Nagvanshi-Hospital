package com.app;

import java.io.IOException;
import java.sql.*;
import java.util.Properties;
import java.util.Random;
import java.util.concurrent.TimeUnit;

import jakarta.mail.*;
import jakarta.mail.internet.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SendOTP")
public class SendOTP extends HttpServlet 
  {
  
	   protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	     {

        
		       String email = request.getParameter("txt_email");

               // Generate OTP
               Random rand = new Random();
               int otp = 100000 + rand.nextInt(900000);

               // OTP Validity of 40 seconds
               long expiryTime = System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(40);

               HttpSession session = request.getSession();
               session.setAttribute("otp", otp);
               session.setAttribute("email", email);
               session.setAttribute("otpExpiryTime", expiryTime);

               // Database Connection
               String dbUrl = "jdbc:mysql://localhost:3306/nagvanshi_hospital";
               String dbUser = "root";
               String dbPass = "boot";

               try
                 {
            
            	       Class.forName("com.mysql.cj.jdbc.Driver");
            
            	       try (Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/nagvanshi_hospital?autoReconnect=true&useSSL=false", "root", "boot")) 
            	         {

                               // Check if user already exists
                               PreparedStatement ps = conn.prepareStatement("SELECT * FROM login WHERE userid = ?");
                               ps.setString(1, email);
                               ResultSet rs = ps.executeQuery();

                               if (rs.next()) 
                                  {
                                        // User exists, update OTP
                                        PreparedStatement updateOtp = conn.prepareStatement("UPDATE login SET OTP = ? WHERE userid = ?");
                                        updateOtp.setString(1, String.valueOf(otp));
                                        updateOtp.setString(2, email);
                                        updateOtp.executeUpdate();
                
                                  }
                               else 
                                  {
                    
                                        PreparedStatement insert = conn.prepareStatement("INSERT INTO login (userid, role_id, OTP) VALUES (?, ?, ?)");
                    
                                        insert.setString(1, email);
                                        insert.setInt(2, 2); 
                                        insert.setString(3, String.valueOf(otp));
                                        insert.executeUpdate();
                
                                  }

            
            	         }
            	       catch (SQLException e) 
            	         {
                
            	    	      e.printStackTrace();
                              response.getWriter().println("❌ Database Error: " + e.getMessage());
                              return;
            
            	         }
        
                 }
               catch (ClassNotFoundException e) 
                 {
            
            	       e.printStackTrace();
                       response.getWriter().println("❌ JDBC Driver Not Found");
                       return;
        
                 }

               // Email Send Section  
               final String senderEmail = "nagvanshihospital@gmail.com";
               final String senderPassword = "pozrzewjrwazpgzy";

               Properties props = new Properties();
               props.put("mail.smtp.host", "smtp.gmail.com");
               props.put("mail.smtp.port", "587");
               props.put("mail.smtp.auth", "true");
               props.put("mail.smtp.starttls.enable", "true");

               Session mailSession = Session.getInstance(props, new Authenticator() 
                  {
            
            	        protected PasswordAuthentication getPasswordAuthentication() 
            	          {
                
            	        	    return new PasswordAuthentication(senderEmail, senderPassword);
            
            	          }
        
                  });

               try 
                 {
            
            	       Message message = new MimeMessage(mailSession);
                       message.setFrom(new InternetAddress(senderEmail));
                       message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
                       message.setSubject("Your OTP Code");
                       message.setText("Your OTP is: " + otp + "\nValid for 40 seconds only.");

                       Transport.send(message);

                       response.sendRedirect("VerificationOTP.jsp");

        
                 }
               catch (MessagingException e) 
                 {
            
            	   e.printStackTrace();
            
            	   throw new RuntimeException(e);
        
                 }
    
	     }

  }
