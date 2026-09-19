<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Details</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"> 
<style>

   .banner-btn{
 
     font-size:22px;
     font-family:verdana;
     font-weight:bold;
     background-color:red;
     border:none;
     padding-block:10px;
     margin-block:5px;
     border-radius:5px;
     
 }
 
 .Hover:hover{

    background-color:red;
    font-size:18px;
    border-radius:10px;
}

.heading{

    font-size:22px;
}

    .one {
      position: relative;
      overflow: hidden;
      height: 150px; /* Optional: Adjust according to image height */
    }

    .Ambulance-image {
      position: absolute;
      top: 10px; /* adjust vertical position */
      right: -200px; /* Start from outside the right */
      animation: moveAmbulance 10s linear infinite;
    }

    @keyframes moveAmbulance {
      0% {
        right: -200px; /* Start off-screen from the right */
      }
      100% {
        right: 100%; /* Move completely to the left */
      }
    }
   

</style>
</head>
<body>

     <!--Header Section Start-->

     <%@ include file="HeaderPage.html" %>
    
    <!--Header Section End-->
    
    
    <nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
        
       <div class="container-fluid">
    
          <a class="navbar-brand" href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>
   
       <div class="collapse navbar-collapse" id="navbarSupportedContent">
     
          <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
       
             <li class="nav-item Hover">
          
               <a class="nav-link active" aria-current="page" href="HomePage.jsp"><b>Home</b></a>
        
             </li>
        
             <li class="nav-item ps-1 Hover">
         
               <a class="nav-link active" aria-current="page" href="DoctorDetails.jsp"><b>Doctor Details</b></a>
        
             </li>
        
             <li class="nav-item ps-1 Hover">
          
                <a class="nav-link active" href="Gallery.jsp"><b>Gallery</b></a>
        
             </li>
        
             <li class="nav-item dropdown ps-1">
          
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>Patient Services</b></a>
          
             <ul class="dropdown-menu">
           
                 <li class="Hover"><a class="dropdown-item" href="Registration.jsp"><b>Registration</b></a></li>
		   
		         <li class="Hover"><a class="dropdown-item" href="Login.jsp"><b>Login</b></a></li>
		   
		         <li class="Hover"><a class="dropdown-item" href="AdmitInformation.jsp"><b>Admit Information</b></a></li>
		   
		         <li class="Hover"><a class="dropdown-item" href="PatientReview.jsp"><b>Patient Review</b></a></li>
		   
		         <li class="Hover"><a class="dropdown-item" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
          
             </ul>
        
          </li>
        
          <li class="nav-item ps-1 Hover">
          
             <a class="nav-link active" aria-current="page" href="OurServices.jsp"><b>Our Services</b></a>
          
          </li>
         
          <li class="nav-item ps-1 Hover">
          
             <a class="nav-link active" href="Contact.jsp"><b>Contact</b></a>
        
          </li>
      
        </ul>
      
        <form class="d-flex" role="search">
        
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
       
               <button class="btn btn-outline-success" type="submit">Search</button>
      
        </form>
    
    </div>
 
  </div>
    
</nav>


 
    
  <div class="container" style="height:30%; width:90%; background-color:#F2D7D5; margin-inline:100px; margin-block:10px; margin-left:200px; border-radius:10px;">
  
    <div class="d-flex align-item-center p-3" style="gap:50px;">
    
       <div><img class="img-fluid" style="border-radius:50%" height="150px" width="150px" alt="" src="./images/Nagvanshi-Logo.png"></div>
       
       <div class="text-center">
       
         <h1 style="font-size:80px; padding-left:140px; color:brown; padding-bottom:45px; font-family:impact; text-shadow: 4px 4px 10px white;">NAGVANSHI HOSPITAL</h1>
         
       </div>
       
    </div>
    
    <div class="text-center" style="height:40px">
    
       <h1 class="text-center text-danger" style="font-size:45px; font-weight:bold; padding-bottom:25px; text-shadow: 2px 2px 5px white;">SUPER MULTISPECIALITY HOSPITAL</h1>
    
    </div>
    
    <div class="container d-flex align-item-center justify-content-between py-3 flex-wrap">
       
       <div><button class="banner-btn px-2 text-white">ICU</button></div>
       <div><button class="banner-btn px-2 text-white">PICU</button></div>
       <div><button class="banner-btn px-2 text-white">NICU</button></div>
       <div><button class="banner-btn px-2 text-white">OT</button></div>
       <div><button class="banner-btn px-2 text-white">OPD</button></div>
       <div><button class="banner-btn px-3 text-white">Dialysis</button></div>
       <div><button class="banner-btn px-3 text-white">Ventilator</button></div>
       <div><button class="banner-btn px-3 text-white">Pathology</button></div>
       <div><button class="banner-btn px-3 text-white">Pharmacy</button></div>
       
       
    </div>
    
  </div>
  
  <div class="container-fluid one">
  
     <div class="conatiner-item">
     
        <div class="row">
        
           <div class="col-lg-12">
           
              <div class="Ambulance-image">
              
                 <img   src="./images/Ambulance.png" height="150px" width="200px" rel="">
              
              </div>
           
           </div>
        
        </div>
     
     </div>
  
  </div>
  
  
  
  
  
  
  
                                      <!-- DOCTOR DETAILS SECTION START HERE -->

          <table cellpadding="10" cellspacing="0" border="0" width="80%" bgcolor="#add8e6" align="center" style="border-radius:20px; margin-top:40px;" class="table table-striped">
          
             <tr><td colspan="5" style="background-color:red; color:white; font-size:24px; text-align:center; border-radius:20px; text-shadow: 2px 2px 5px black;"><b>DOCTOR DETAILS</b></td></tr>
             
             <tr align="center">
                <th class="heading"><b>DOCTOR NAME</b></th>
                <th class="heading"><b>QUALIFICATION</b></th>
                <th class="heading"><b>PHONE</b></th>
                <th class="heading"><b>SPECIALITY</b></th>
                <th class="heading"><b>DAY / TIME</b></th>
             </tr>
             
      <%
    Connection cn = (Connection) application.getAttribute("CONN");

    PreparedStatement ps = cn.prepareStatement("SELECT name, qualification, mobile, specialist, attend_day, attend_time FROM doctor_info");
    ResultSet rs = ps.executeQuery();

    while (rs.next()) {
%>
        <tr class="text-center fw-bold">
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("qualification") %></td>
            <td><%= rs.getString("mobile") %></td>
            <td><%= rs.getString("specialist") %></td>
            <td><%= rs.getString("attend_day") %> (<%= rs.getString("attend_time") %>)</td>
        </tr>
<%
    }
%>

            
            
     
          
          </table>    
          
          
    <%@ include file="FooterPage.html" %>  
    
    
    <script>
    
    (function(w, d) {
		w.CollectId = "67b2d5451f59b1cbec8a9dde";
		var h = d.head || d.getElementsByTagName("head")[0];
		var s = d.createElement("script");
		s.setAttribute("type", "text/javascript");
		s.async = true;
		s.setAttribute("src", "https://collectcdn.com/launcher.js");
		h.appendChild(s);
	})(window, document);
    
    
    </script>
    
   
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
    </html>