<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.concurrent.TimeUnit" %>
<%
    Long otpExpiryTime = (Long) session.getAttribute("otpExpiryTime");
    long currentTime = System.currentTimeMillis();
    boolean isOtpExpired = otpExpiryTime == null || currentTime > otpExpiryTime;
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>OTP Verification</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            min-height: 100vh;
            
         
            font-family: 'Poppins', sans-serif;
        }
        .otp-container {
            background: #FFFFFF;
            backdrop-filter: blur(15px);
            padding: 40px 30px;
            border-radius: 20px;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            animation: slideUp 1s ease;
            width: 90%;
            max-width: 500px;
            text-align: center;
        }
        .otp-container h2 {
            margin-bottom: 20px;
            color: black;
            font-weight: bold;
        }
        .otp-container input[type="text"] {
            margin-top: 20px;
            padding: 12px;
            width: 100%;
            border: none;
            border-radius: 10px;
            font-size: 18px;
            background-color: rgba(255,255,255,0.6);
        }
        .otp-container button {
            margin-top: 30px;
            padding: 12px 30px;
            background: #00c6ff;
            background: linear-gradient(to right, #0072ff, #00c6ff);
            color: white;
            font-size: 20px;
            border: none;
            border-radius: 50px;
            transition: all 0.4s ease;
            font-weight: bold;
            letter-spacing: 1px;
        }
        .otp-container button:hover {
            transform: scale(1.1);
            background: linear-gradient(to right, #00c6ff, #0072ff);
        }
        #timer {
            margin-top: 20px;
            font-size: 20px;
            font-weight: bold;
            color: #ff4e4e;
        }
        @keyframes slideUp {
            0% { transform: translateY(100px); opacity: 0; }
            100% { transform: translateY(0); opacity: 1; }
        }
        /* Responsive Design */
        @media (max-width: 576px) {
            .otp-container {
                padding: 30px 20px;
            }
        }
        
        .OTP-input{
        
              box-shadow: 5px 5px 5px 5px lightblue;
        }
    </style>
</head>
<body>

<!-- Header Include -->
<%@ include file="HeaderPage.html" %>

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
          
                           <li class="Hover"><a class="dropdown-item" href="Registration.jsp"><b>Registration</b></a></li>
          
                           <li class="Hover"><a class="dropdown-item" href="Login.jsp"><b>Login</b></a></li>
            
                           <li class="Hover"><a class="dropdown-item" href="AdmitInformation.jsp"><b>Admit Information</b></a></li>
            
                           <li class="Hover"><a class="dropdown-item" href="PatientReview.jsp"><b>Patient Review</b></a></li>
            
                           <li class="Hover"><a class="dropdown-item" href="InsuranceInfo.jsp"><b>Insurance Info</b></a></li>
            
                           <li class="Hover"><a class="dropdown-item" href="HospitalInfo.jsp"><b>Hospital Info</b></a></li>
            
                           <li class="Hover"><a class="dropdown-item" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
          
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
       
 

<!-- OTP Verification Form -->
<div class="d-flex align-items-center justify-content-center mt-5">
<div class="otp-container">
    <h2>🔒 OTP Verification</h2>
    <form method="post" action="VerifyOTP" id="otpForm">
        <input class="OTP-input" type="text" name="txt_otp" placeholder="Enter your OTP" required>
        <br>
        <button type="submit">Verify OTP</button>
        <p id="timer"></p>
    </form>
</div>
</div>

<!-- Footer Include -->
<%@ include file="FooterPage.html" %>

<script>
    window.onload = function() {
        var countdown = <%= otpExpiryTime != null ? (otpExpiryTime - currentTime) / 1000 : 0 %>;
        var timerElement = document.getElementById("timer");

        function updateTimer() {
            if (countdown <= 0) {
                timerElement.innerHTML = "❌ OTP Expired!";
                document.getElementById("otpForm").innerHTML = "<h2>OTP expired. Please request a new one.</h2>";
                clearInterval(timerInterval);
            } else {
                timerElement.innerHTML = countdown + " seconds remaining";
                countdown--;
            }
        }

        updateTimer();
        var timerInterval = setInterval(updateTimer, 1000);
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
