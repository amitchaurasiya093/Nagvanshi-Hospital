<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Contact</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="Custom-CSS.css">
  <style>
  
    body {
      background: linear-gradient(120deg, #e0f7fa, #ffffff);
      font-family: 'Segoe UI', sans-serif;
    }

  </style>
</head>
<body>

         <!-- Header Include -->
 
         <%@ include file="HeaderPage.html" %>

         <!-- Navbar -->
  
        <nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
    
           <div class="container-fluid">
      
              <a class="navbar-brand" href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>
      
           <div class="collapse navbar-collapse">
       
              <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
          
                 <li class="nav-item"><a class="nav-link active Hover" href="HomePage.jsp"><b>Home</b></a></li>
          
                 <li class="nav-item ps-1"><a class="nav-link active Hover" href="DoctorDetails.jsp"><b>Doctor Details</b></a></li>
          
                 <li class="nav-item ps-1"><a class="nav-link active Hover" href="BookAppointment.jsp"><b>Book Appointment</b></a></li>
          
                 <li class="nav-item dropdown ps-1">
            
                    <a class="nav-link dropdown-toggle Hover" data-bs-toggle="dropdown" href="#"><b>Patient Services</b></a>
            
                 <ul class="dropdown-menu">
              
                    <li><a class="dropdown-item Hover" href="Registration.jsp"><b>Registration</b></a></li>
              
                       <li><a class="dropdown-item Hover" href="Login.jsp"><b>Login</b></a></li>
              
                       <li><a class="dropdown-item Hover" href="Prescription.jsp"><b>Prescription</b></a></li>
              
                       <li><a class="dropdown-item Hover" href="LaboratoryReport.jsp"><b>Laboratory Report</b></a></li>
              
                       <li><a class="dropdown-item Hover" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
            
                  </ul>
          
               </li>
          
               <li class="nav-item ps-1"><a class="nav-link active Hover" href="OurServices.jsp"><b>Our Services</b></a></li>
          
               <li class="nav-item ps-1"><a class="nav-link active Hover" href="Contact.jsp"><b>Contact</b></a></li>
        
            </ul>
        
            <form class="d-flex" role="search">
          
               <input class="form-control me-2" type="search" placeholder="Search">
          
               <button class="btn btn-outline-success" type="submit">Search</button>
        
             </form>
      
          </div>
    
      </div>
  
  </nav>

  
  
  <!-- Contact Form -->
  <div class="contact-form">
  
      <div class="form-header">Contact Form</div>
   
          <img src="./images/Nagvanshi-Logo.png" class="logo-img" alt="Logo">
    
          <div class="form-footer">Nagvanshi Hospital</div>

          <form method="post" action="ContactConfirm.jsp">
      
             <div class="mb-3">
       
                <label>Name</label>
        
                <input type="text" name="txt_name" placeholder="Enter your name" class="form-control" required>
      
             </div>
      
             <div class="mb-3">
        
                <label>Email</label>
        
                <input type="email" name="txt_email" placeholder="Enter your email" class="form-control" required>
     
             </div>
     
             <div class="mb-3">
        
                <label>Mobile No</label>
        
                <input type="text" name="txt_mobile" placeholder="Enter mobile number" class="form-control" required>
      
             </div>
      
             <div class="mb-3">
        
                <label>Address</label>
        
                <textarea name="ta_address" placeholder="Enter your address" class="form-control" rows="3" required></textarea>
      
             </div>
      
             <div class="mb-3">
        
                <label>Message</label>
        
                <textarea name="txt_message" placeholder="Enter your message" class="form-control" rows="3" required></textarea>
      
              </div>
      
              <div class="text-center">
        
                 <button type="submit" class="submit-btn" onclick="alert('We will contact you soon!')">Submit</button>
      
              </div>
    
          </form>

    
                  <!-- Google Map Embed -->
    
    <div class="mt-4">
    
      <h5 class="text-center mb-3">Our Location</h5>
    
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3559.102510820018!2d80.93699527518138!3d26.8617564766667!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399be26c776e15b3%3A0x3b2d0f7eb5f1c07b!2sKing%20George's%20Medical%20University%2C%20Lucknow!5e0!3m2!1sen!2sin!4v1683109200792!5m2!1sen!2sin"
                width="100%" height="350" style="border:0; border-radius: 20px; box-shadow: 0 0 10px rgba(0,0,0,0.1);" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
        </iframe>
    
    </div>
  
  </div>

 
  <!-- Footer Include -->
 
  <%@ include file="FooterPage.html" %>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
