<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAGVANSHI-HOSPITAL</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="Custom-CSS.css">
<style>

 html, body {

    height: 100%;
    width: 100%;
    background: #f0f8ff;
    font-family: 'Segoe UI', sans-serif;
 } 

 .header-table {
    
    width: 100%;
    background-color: #077fa5;
 }
              
 .Hover:hover {
    
    background-color: red;
    font-size: 18px;
    border-radius: 10px;
    transition: 0.3s;
 }


 @keyframes fadeInUp {
 
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
 }

 .form-container {
  
    animation: fadeInUp 1s ease;
    box-shadow: 0px 0px 15px rgba(0,0,0,0.3);
    border-radius: 20px;
    padding: 30px;
    background-color: #add8e6;
    margin-top: 30px;
 }

 .form-title {
  
    background-color: red;
    color: white;
    padding: 15px;
    font-size: 24px;
    text-align: center;
    border-radius: 20px;
    margin-bottom: 20px;     
 }

 .form-control, textarea, select {
  
    border-radius: 10px !important;
 }

 .radio-group {
 
    display: flex;
    gap: 15px;
    align-items: center;
 }

 button {
 
    transition: transform 0.3s ease;
 }

 button:hover {
 
    transform: scale(1.05);
 
 }
</style>
</head>
<body>

                                                 <!--Header Section Start-->

                                             <%@ include file="HeaderPage.html" %>
 
                                                 <!--Header Section End-->


                                                 <!--NavBar Section Start-->

       <nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
  
          <div class="container-fluid">
    
              <a class="navbar-brand" href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>
    
                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
      
                     <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
        
                        <li class="nav-item Hover"><a class="nav-link active" href="HomePage.jsp"><b>Home</b></a></li>
        
                        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="DoctorDetails.jsp"><b>Doctor Details</b></a></li>
        
                        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="BookAppointment.jsp"><b>Book Appointment</b></a></li>
        
                        <li class="nav-item dropdown Hover">
          
                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Patient Services</a>
          
                     <ul class="dropdown-menu">
            
                         <li><a class="dropdown-item Hover" href="Login.jsp"><b>Login</b></a></li>
            
                         <li><a class="dropdown-item Hover" href="Registration.jsp"><b>Registration</b></a></li>
            
                         <li><a class="dropdown-item Hover" href="LaboratoryReport.jsp"><b>Laboratory Report</b></a></li>
            
                         <li><a class="dropdown-item Hover" href="Prescription.jsp"><b>Patient Prescription</b></a></li>
            
                         <li class="Hover"><a class="dropdown-item" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
          
                     </ul>
        
                    </li>
       
                        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="OurServices.jsp"><b>Our Services</b></a></li>
        
                        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Contact.jsp"><b>Contact</b></a></li>
      
                    </ul>
      
                    <form class="d-flex" role="search">
        
                        <input class="form-control me-2" type="search" placeholder="Search">
        
                        <button class="btn btn-outline-light" type="submit">Search</button>
     
                    </form>
    
                 </div>
  
             </div>

       </nav>

                                                         <!--NavBar Section End-->

                                                     <!-- Prescription Form Start -->
                                                     
   <%
    int nextId = 1;

    try {
        Connection cn = (Connection) application.getAttribute("CONN");
        Statement st = cn.createStatement();

        ResultSet rs = st.executeQuery("SELECT MAX(patient_id) FROM prescription");

        if (rs.next()) {
            nextId = rs.getInt(1) + 1;
        }

        rs.close();
        st.close();

    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }

    // Format like 01, 02, 03
    String formattedId = String.format("%02d", nextId);
%>
                                                     
                                                     

      <div class="container form-container">
  
          <form method="post" action="PrescriptionDownload.jsp">
    
             <div class="form-title fw-bold">PRESCRIPTION FORM</div>
    
                <div class="row g-3">
      
                   <div class="col-md-6">
        
                      <label><b>PATIENT-ID</b></label>
        
                      <input type="text" name="txt_pid" 
       value="<%=formattedId%>" 
       class="form-control" readonly>
      
                   </div>
      
                   <div class="col-md-6">
        
                     <label><b>NAME</b></label>
        
                     <input type="text" name="txt_name" class="form-control">
      
                   </div>
      
                   <div class="col-md-6">
        
                      <label><b>AGE</b></label>
        
                      <input type="text" name="txt_age" class="form-control">
      
                   </div>
      
                   <div class="col-md-6">
        
                       <label><b>GENDER</b></label>
        
                       <div class="radio-group">
    
                          <input type="radio" name="Gender" value="Male"><b>Male</b>
          
                          <input type="radio" name="Gender" value="Female"><b>Female</b>
        
                       </div>
      
                   </div>
      
                   <div class="col-md-6">
        
                      <label><b>WEIGHT</b></label>
        
                         <input type="text" name="txt_weight" class="form-control">
      
                   </div>
      
                   <div class="col-md-6">
        
                      <label><b>BLOOD GROUP</b></label>
        
                          <input type="text" name="txt_bgroup" class="form-control">
     
                   </div>
      
                   <div class="col-md-6">
        
                      <label><b>DOCTOR-NAME</b></label>
        
                          <select name="cmb_dname" class="form-select">
          
                               <option value="Dr.Abhishek Chaurasiya">Dr.Abhishek Chaurasiya</option>
          
                               <option value="Dr.Kaushalya Gupta">Dr.Kaushalya Gupta</option>
          
                               <option value="Dr.Mukesh Agarwal">Dr.Mukesh Agarwal</option>
          
                               <option value="Dr.Vikas Agarwal">Dr.Vikas Agarwal</option>
          
                               <option value="Dr.Suraj Shukla">Dr.Suraj Shukla</option>
          
                               <option value="Dr.Prakash Jaiswal">Dr.Prakash Jaiswal</option>
          
                               <option value="Dr.AK.Bhatt">Dr.AK.Bhatt</option>
         
                               <option value="Dr.Piyush Singha">Dr.Piyush Singha</option>
         
                               <option value="Dr.Arvind Mishra">Dr.Arvind Mishra</option>
        
                           </select>
      
                   </div>
      
                   <div class="col-md-6">
        
                      <label><b>ADDRESS</b></label>
        
                      <textarea name="ta_address" class="form-control" placeholder="Address"></textarea>
      
                   </div>
      
                   <div class="col-md-6">
        
                       <label><b>TRANSACTION-ID</b></label>
       
                       <input type="text" name="txt_tid" class="form-control">
      
                   </div>
      
                   <div class="col-md-6 text-center">
        
                     <label><b>PAYMENT</b></label><br>
        
                         <img src="./images/QR.jpg" class="img-fluid rounded shadow" style="max-width: 200px;" alt="QR">
     
                   </div>
    
               </div>
    
    
               <div class="text-center mt-4">
      
                   <button type="submit" class="btn btn-success px-4 py-2">Print Prescription</button>
    
               </div>
 
           </form>

       </div>

                                                       <!-- Prescription Form End -->
                                                       
                                                             <!-- Footer Start -->

                                                     <%@ include file="FooterPage.html" %>
                                                   
                                                             <!-- Footer End -->
                                                   
                                                   
                                                   
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
