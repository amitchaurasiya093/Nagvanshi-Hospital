<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Appointments</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
<style>
    .myappointment {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to right, #e3f2fd, #ffffff);
        padding: 40px;
    }

    .appointment-container {
        animation: fadeIn 1s ease-in-out;
        background: #ffffff;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }

    h3 {
        text-align: center;
        margin-bottom: 30px;
        font-weight: bold;
        color: #0d6efd;
    }

    .table {
        border-radius: 10px;
        overflow: hidden;
    }

    .table th {
        background-color: #0d6efd;
        color: white;
        text-align: center;
    }

    .table td {
        vertical-align: middle;
        text-align: center;
    }

    tr:hover {
        background-color: #f1f1f1;
        transition: all 0.3s ease;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>
</head>
<body>

   <!--Header Section Start-->

	<%@ include file="HeaderPage.html"%>

	<!--Header Section End-->



	<!--NavBar Section Start-->

	<nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
  
       <div class="container-fluid">
    
          <a class="navbar-brand" href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>

             <div class="collapse navbar-collapse" id="navbarSupportedContent">
      
                 <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
        
                    <li class="nav-item Hover"><a class="nav-link active" aria-current="page" href="HomePage.jsp"><b>Home</b></a></li>
        
                    <li class="nav-item ps-1 Hover"><a class="nav-link active" aria-current="page" href="DoctorDetails.jsp"><b>Doctor Details</b></a></li>
        
                    <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Gallery.html"><b>Gallery</b></a></li>

                    <li class="nav-item dropdown ps-1"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>Hospital Facality</b></a>
          
                       <ul class="dropdown-menu">
          
                           <li class="Hover bg-success"><a class="dropdown-item" href="Registration.jsp"><b>Registration</b></a></li>
          
                           <li class="Hover bg-success"><a class="dropdown-item" href="Login.jsp"><b>Login</b></a></li>
            
                           <li class="Hover bg-success"><a class="dropdown-item" href="AdmitInformation.jsp"><b>Admit Information</b></a></li>
            
                           <li class="Hover bg-success"><a class="dropdown-item" href="PatientReview.jsp"><b>Patient Review</b></a></li>
            
                           <li class="Hover bg-success"><a class="dropdown-item" href="InsuranceInfo.jsp"><b>Insurance Info</b></a></li>
            
                           <li class="Hover bg-success"><a class="dropdown-item" href="HospitalInfo.jsp"><b>Hospital Info</b></a></li>
            
                           <li class="Hover bg-success"><a class="dropdown-item" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
          
                       </ul>
        
                   </li>

                   <li class="nav-item ps-1 Hover"><a class="nav-link active" aria-current="page" href="OurServices.jsp"><b>Our Services</b></a></li>
        
                   <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Contact.jsp"><b>Contact Us</b></a></li>
        
               </ul>

               <form class="d-flex" role="search">
       
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          
                  <button class="btn btn-outline-success" type="submit">Search</button>
        
               </form>
      
          </div>
    
    </div>

</nav>

	<!--NavBar Section End-->

   

<%
           String email = (String) session.getAttribute("email");

           if (email == null) 
              {
        
        	       response.sendRedirect("login.jsp");
        
        	       return;
    
              }

           PreparedStatement ps = null;
    
           ResultSet rs = null;

           try 
             {
        
        	      Connection cn = (Connection) application.getAttribute("CONN");
          
                  ps = cn.prepareStatement("SELECT * FROM book_appointment WHERE email = ?");
        
                  ps.setString(1, email);
        
                  rs = ps.executeQuery();
%>

        <div class="myappointment">

           <div class="container appointment-container">
    
              <h2 class="text-center mb-3"><b>📅 My Appointments</b></h2>
    
                 <table class="table table-bordered table-hover table-striped">
        
                    <thead>
            
                       <tr>
                
                           <th class="bg-primary text-light">Name</th>
                
                           <th class="bg-primary text-light">Age</th>
                
                           <th class="bg-primary text-light">Gender</th>
                
                           <th class="bg-primary text-light">Email</th>
                
                           <th class="bg-primary text-light">Mobile No</th>
                
                           <th class="bg-primary text-light">Address</th>
                
                           <th class="bg-primary text-light">Doctor Name</th>
                
                           <th class="bg-primary text-light">Date</th>
                
                           <th class="bg-primary text-light">Time</th>
            
                       </tr>
        
                 </thead>
        
             <tbody>
        <%
            boolean found = false;
        
        while (rs.next())
           {
           
        	   found = true;
        %>
            <tr>
              
                <td><%= rs.getString("name") %></td>
              
                <td><%= rs.getString("age") %></td>
              
                <td><%= rs.getString("gender") %></td>
              
                <td><%= rs.getString("email") %></td>
              
                <td><%= rs.getString("mobile_no") %></td>
              
                <td><%= rs.getString("address") %></td>
              
                <td><%= rs.getString("dname") %></td>
              
                <td><%= rs.getString("date") %></td>
              
                <td><%= rs.getString("time") %></td>
            
           </tr>
       
        <%
            }
        
            if (!found) 
               {
        
        %>
        
            <tr>
        
                <td colspan="9">No appointments found.</td>
        
            </tr>
        
            <%
        
               }
       
            %>
        
        </tbody>
    
    </table>

</div>

</div>

<div align="center"><a href="BookAppointment.jsp"><button class="btn btn-success mt-5">Book New Appointment</button></a></div>


                             <!-- FOOTER SECTION START HERE -->


	                       <%@ include file="FooterPage.html"%>


	                       <!-- FOOTER SECTION START HERE -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
