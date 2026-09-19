<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Our Services</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
 <style>
 
 .Hover:hover{

    background-color:red;
    font-size:18px;
    border-radius:10px;
}
 
     body {
      font-family: 'Poppins', sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f5f8fa;
      color: #333;
    }

    header {
      background: linear-gradient(to right, #007bff, #00c6ff);
      color: white;
      padding: 40px 20px;
      text-align: center;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    header h1 {
      margin: 0;
      font-size: 3em;
      animation: fadeInDown 1s ease;
    }

    .services-section {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 20px;
      padding: 40px;
      max-width: 1200px;
      margin: auto;
      animation: fadeInUp 1s ease;
    }

.service-card {
  background-color: white;
  border-radius: 15px;
  padding: 25px;
  text-align: center;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease, box-shadow 0.3s ease, border 0.3s ease;
}

.service-card:hover {
  transform: translateY(-10px);
  box-shadow: 0 0 15px rgba(0, 123, 255, 0.7); /* Blue shadow on hover */
  border: 2px solid #007bff; /* Blue border on hover */
}

    .service-card i {
      font-size: 40px;
      color: #007bff;
      margin-bottom: 15px;
    }

    .service-card h3 {
      margin: 10px 0;
      font-size: 1.5em;
    }

    .service-card p {
      font-size: 1em;
      color: #666;
    }

    @keyframes fadeInDown {
      from {
        opacity: 0;
        transform: translateY(-50px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    } 

    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(50px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    footer {
      background-color: #222;
      color: white;
      text-align: center;
      padding: 20px;
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
          <a class="nav-link active" href="BookAppointment.jsp"><b>Book Appointment</b></a>
        </li>
        <li class="nav-item dropdown ps-1">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>Patient Services</b></a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item Hover" href="Registration.jsp"><b>Registration</b></a></li>
            <li><a class="dropdown-item Hover" href="Login.jsp"><b>Login</b></a></li>
            <li><a class="dropdown-item Hover" href="LaboratoryReport.jsp"><b>Laboratory Report</b></a></li>
            <li><a class="dropdown-item Hover" href="Prescription.jsp"><b>Patient Prescription</b></a></li>
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
    
    
    <div colspan="4" class="py-2" style="width:50%; margin-left:27%; background-color:red; font-weight:bold; color:white; font-size:25px; text-align:center; border-radius:20px;">OUR SERVICES</div>
    
       <section class="services-section">
    <div class="service-card">
      <i class="fas fa-user-md"></i>
      <h3>General Consultation</h3>
      <p>Personalized medical advice and diagnosis from experienced physicians.</p>
    </div>

    <div class="service-card">
      <i class="fas fa-stethoscope"></i>
      <h3>Specialist Care</h3>
      <p>Expert care in Cardiology, Orthopedics, Neurology, and more.</p>
    </div>

    <div class="service-card">
      <i class="fas fa-ambulance"></i>
      <h3>Emergency Services</h3>
      <p>24/7 emergency support with fully equipped ambulances and trauma care.</p>
    </div>

    <div class="service-card">
      <i class="fas fa-x-ray"></i>
      <h3>Diagnostics & Imaging</h3>
      <p>Modern X-ray, Ultrasound, ECG, and Lab Testing Facilities.</p>
    </div>

    <div class="service-card">
      <i class="fas fa-syringe"></i>
      <h3>Vaccination & Immunization</h3>
      <p>Safe and timely vaccination for children and adults.</p>
    </div>

    <div class="service-card">
      <i class="fas fa-hospital-user"></i>
      <h3>In-Patient Services</h3>
      <p>Well-maintained wards, ICU, and private rooms for complete patient care.</p>
    </div>

    <div class="service-card">
      <i class="fas fa-pills"></i>
      <h3>Pharmacy</h3>
      <p>In-house pharmacy with all essential medicines available round the clock.</p>
    </div>

    <div class="service-card">
      <i class="fas fa-heartbeat"></i>
      <h3>Health Checkup Packages</h3>
      <p>Affordable preventive health packages for early disease detection.</p>
    </div>
  </section>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <%@ include file="FooterPage.html" %>
    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>         
    </body>
    </html>