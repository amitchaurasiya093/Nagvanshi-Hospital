<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard || Hospital Info</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #dff9fb, #c7ecee);
            padding: 0;
            margin: 0;
        }

         .Hover:hover{

    background-color:red;
    font-size:18px;
    border-radius:10px;
}

        .owner-container {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 50px 0;
        }

        .card-one {
            background: #fff;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            padding: 30px;
            text-align: center;
            max-width: 400px;
            width: 100%;
            transition: transform 0.4s ease, box-shadow 0.4s ease;
            animation: fadeInUp 1s ease-in-out;
            border-left: 8px solid brown;
            border-bottom: 4px solid yellow;
        }

        .card-one:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.2);
        }

        .image-section img {
            border-radius: 50%;
            border: 5px solid #28a745;
            transition: transform 0.4s ease;
        }

        .image-section img:hover {
            transform: scale(1.05) rotate(2deg);
        }

        .Heading-section h2 {
            margin-top: 20px;
            color: #333;
        }

        .Heading-section h3 {
            font-size: 18px;
            color: #555;
            margin-top: 10px;
        }

        .button-section {
            margin-top: 20px;
        }

        .btn-success {
            font-size: 16px;
            font-weight: bold;
            border-radius: 30px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .btn-success:hover {
            background-color: #218838;
            transform: scale(1.05);
        }

        .info-section {
            padding: 60px 20px;
            animation: fadeInUp 1s ease-in-out;
        }

        .section-title {
            text-align: center;
            color: #2f3542;
            margin-bottom: 40px;
            font-weight: bold;
            font-size: 36px;
        }

        .info-box {
            background: white;
            border-left: 5px solid #1e90ff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            transition: 0.3s ease-in-out;
        }

        .info-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 25px rgba(0,0,0,0.15);
        }

        .info-box h4 {
            color: #1e90ff;
            margin-bottom: 15px;
        }

        .info-box p {
            font-size: 15px;
            color: #333;
        }

        @keyframes fadeInUp {
            from {
                transform: translateY(40px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        @media (max-width: 576px) {
            .card-one {
                margin: 0 15px;
            }
        }
    </style>
</head>
<body>

<%@ include file="HeaderPage.html" %>


                         <nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
        <div class="container-fluid">
    <a class="navbar-brand " href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>
   
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
        <li class="nav-item Hover"><a class="nav-link active" aria-current="page" href="HomePage.jsp"><b>Home</b></a></li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" aria-current="page" href="DoctorDetails.jsp"><b>Doctor Details</b></a></li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="BookAppointment.jsp"><b>Book Appointment</b></a></li>
        <li class="nav-item dropdown ps-1">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>Patient Services</b></a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item Hover" href="Registration.jsp"><b>Registration</b></a></li>
            <li><a class="dropdown-item Hover" href="Login.jsp"><b>Login</b></a></li>
            <li><a class="dropdown-item Hover" href="Prescription.jsp"><b>Prescription</b></a></li>
            <li><a class="dropdown-item Hover" href="LaboratoryReport.jsp"><b>Laboratory Report</b></a></li>
            <li class="Hover"><a class="dropdown-item" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
           
          </ul>
        </li>
        
        <li class="nav-item ps-1 Hover"><a class="nav-link active" aria-current="page" href="OurServices.jsp"><b>Our Services</b></a></li>
         <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Contact.jsp"><b>Contact</b></a></li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
    </nav>





<!-- Owner Section -->
<div class="owner-container">
    <div class="card-one">
        <div class="image-section">
            <img src="./images/Abhishek.jpeg" height="250" width="250" class="img-fluid" alt="Owner Image">
        </div>
        <div class="Heading-section">
            <h3 class="fw-bold" style="font-size:25px;">Dr.Abhishek Nagvanshi</h3>
            <h6 class="fw-bold">CHAIRMAN OF NAGVANSHI HOSPITAL</h6>
        </div>
        <div class="button-section">
            <button class="btn btn-success px-4 py-2">See Profile</button>
        </div>
    </div>
</div>

<!-- Hospital Info Section -->
<section class="info-section">
    <div class="container">
        <h2 class="section-title"><i class="fas fa-hospital-alt"></i> About Our Hospital</h2>

        <div class="row g-4">
            <div class="col-md-6">
                <div class="info-box">
                    <h4>🏥 About Us</h4>
                    <p>Nagvanshi Hospital was established in 2012 with the vision of providing world-class healthcare with compassion and dedication. We serve thousands of patients every month with affordable, quality medical services.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="info-box">
                    <h4>🎯 Our Mission & Vision</h4>
                    <p>To deliver ethical, patient-centric care using advanced medical technology, while also promoting research and innovation in the healthcare industry.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="info-box">
                    <h4>👨‍⚕️ Expert Doctors</h4>
                    <p>Our team consists of highly qualified doctors and surgeons in various specialties such as cardiology, orthopedics, neurology, and pediatrics.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="info-box">
                    <h4>🏆 Achievements</h4>
                    <p>Ranked among the top 10 hospitals in the state. Accredited with NABH and ISO certification. Recognized for excellence in patient safety and satisfaction.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="info-box">
                    <h4>🚑 Emergency Services</h4>
                    <p>24x7 Emergency Department with Ambulance, Trauma Care Unit, and Critical Life-Saving Facilities always ready to serve you.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="info-box">
                    <h4>🧪 Modern Lab Facilities</h4>
                    <p>Equipped with latest diagnostic tools, pathology labs, radiology (X-Ray, CT, MRI), and real-time reporting system.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="info-box">
                    <h4>🌱 Eco-Friendly Campus</h4>
                    <p>We maintain a clean, green, and peaceful environment for the patients with solar energy systems and zero plastic usage policy.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="info-box">
                    <h4>💬 Patient-Centered Care</h4>
                    <p>All our decisions and services are designed keeping the comfort and convenience of our patients at the center of everything.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="info-box">
                    <h4>💡 Technology We Use</h4>
                    <p>From robotic surgeries to AI-based reporting and digital health records – we lead in healthcare technology innovation.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="info-box">
                    <h4>❤️ Community Initiatives</h4>
                    <p>Free health checkup camps, rural medical drives, blood donation events, and health awareness workshops throughout the year.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<%@ include file="FooterPage.html" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
