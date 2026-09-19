<%@page import="java.sql.*"%>
<%@page import="jakarta.servlet.*"%>
<%@page import="jakarta.servlet.http.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
      String name = request.getParameter("txt_name");
    
      String age = request.getParameter("txt_age");
    
      String gender = request.getParameter("Gender");
    
      String mobile = request.getParameter("txt_mobile");
    
      String test_name = request.getParameter("cmb_tname");
    
      String date = request.getParameter("txt_date");
    
      String time = request.getParameter("txt_time");
    
      String address = request.getParameter("txt_address");
      
      String dname = request.getParameter("txt_dname");

      // Store data in session
      session.setAttribute("name", name);
    
      session.setAttribute("age", age);
    
      session.setAttribute("gender", gender);
    
      session.setAttribute("mobile", mobile);
    
      session.setAttribute("test_name", test_name);
    
      session.setAttribute("date", date);
    
      session.setAttribute("time", time);
    
      session.setAttribute("address", address);
      
      session.setAttribute("dname", dname);

      // Insert into database
    
      Connection cn = (Connection)application.getAttribute("CONN");
    
      if (cn != null)
         {
        
    	     PreparedStatement stmt = cn.prepareStatement("INSERT INTO laboratory_report(name,age,gender,mobile,test_name,date,time,address,dname) VALUES(?,?,?,?,?,?,?,?,?)");
        
    	     stmt.setString(1, name);
        
    	     stmt.setString(2, age);
        
    	     stmt.setString(3, gender);
        
    	     stmt.setString(4, mobile);
        
    	     stmt.setString(5, test_name);
        
    	     stmt.setString(6, date);
        
    	     stmt.setString(7, time);
        
    	     stmt.setString(8, address);
    	     
    	     stmt.setString(9, dname);
        
    	     stmt.executeUpdate();
    
         } 
      else
        {
        
    	     out.println("Database connection is not available.");
        
    	     return;
    
        }

     // Redirect to appropriate test form
    
     if (test_name != null)
        {
        
    	    switch(test_name)
    	       {
            
    	             case "Blood Test": response.sendRedirect("Blood-test.jsp"); break;
            
    	             case "Urine Test": response.sendRedirect("Urine-test.jsp"); break;
            
    	             case "Digital X-Ray": response.sendRedirect("XRayForm.jsp"); break;
            
    	             case "AltraSound": response.sendRedirect("UltrasoundForm.jsp"); break;
            
    	             case "Heart Disease Test": response.sendRedirect("HeartTestForm.jsp"); break;
            
    	             case "Thyroid Function Test": response.sendRedirect("ThyroidTestForm.jsp"); break;
            
    	             case "Cancer Test": response.sendRedirect("CancerTestForm.jsp"); break;
            
    	             case "Lipid Profile Test": response.sendRedirect("LipidProfileTestForm.jsp"); break;
            
    	             case "Blood Sugar Test": response.sendRedirect("BloodSugarTestForm.jsp"); break;
            
    	             case "CBC Test": response.sendRedirect("CBCTestForm.jsp"); break;
            
    	             case "LFT Test": response.sendRedirect("LFTTestForm.jsp"); break;
            
    	             case "KFT Test": response.sendRedirect("KFTTestForm.jsp"); break;
            
    	             case "CT Scan": response.sendRedirect("CTScanForm.jsp"); break;
            
    	             default: response.sendRedirect("HomePage.jsp");
        
    	       }
    
        }
     else
        {
        
    	     response.sendRedirect("HomePage.jsp");
    
        }
%>
