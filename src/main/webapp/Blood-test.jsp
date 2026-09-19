<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Blood Test Details</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background: linear-gradient(135deg, #e0f7fa, #ffffff);
      font-family: 'Segoe UI', sans-serif;
    }

    .form-container {
      background: white;
      padding: 30px;
      border-radius: 20px;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
      animation: fadeIn 1s ease-in-out;
    }

    .form-heading {
      font-size: 26px;
      font-weight: bold;
      margin-bottom: 25px;
      text-align: center;
      color: #007bff;
      animation: slideDown 0.8s ease-in-out;
    }

    label {
      font-weight: 500;
      color: #333;
    }

    input.form-control {
      border-radius: 12px;
      transition: 0.3s ease;
      box-shadow: none;
    }

    input.form-control:focus {
      border-color: #007bff;
      box-shadow: 0 0 5px rgba(0, 123, 255, 0.4);
    }

    .submit-btn {
      background-color: #007bff;
      color: white;
      padding: 10px 25px;
      border: none;
      border-radius: 25px;
      font-size: 16px;
      transition: 0.3s ease-in-out;
    }

    .submit-btn:hover {
      background-color: #0056b3;
      transform: scale(1.05);
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    @keyframes slideDown {
      from { opacity: 0; transform: translateY(-30px); }
      to { opacity: 1; transform: translateY(0); }
    }

    @media (max-width: 576px) {
      .form-container {
        padding: 20px;
      }
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
    


  <div class="container my-5">
    <div class="form-container mx-auto" style="max-width: 700px;">
      <div class="form-heading">Blood Test Details Form</div>

      <form method="post" action="SaveBloodTestReport.jsp">
      
        <div class="mb-3"><label>Hemoglobin</label><input type="text" name="hemoglobin" class="form-control" required></div>
        <div class="mb-3"><label>WBC Count</label><input type="text" name="wbc_count" class="form-control" required></div>
        <div class="mb-3"><label>RBC Count</label><input type="text" name="rbc_count" class="form-control" required></div>
        <div class="mb-3"><label>Platelet Count</label><input type="text" name="platelet_count" class="form-control" required></div>
        <div class="mb-3"><label>PCV</label><input type="text" name="pcv" class="form-control" required></div>
        <div class="mb-3"><label>MCV</label><input type="text" name="mcv" class="form-control" required></div>
        <div class="mb-3"><label>MCHC</label><input type="text" name="mchc" class="form-control" required></div>
        <div class="mb-3"><label>Neutrophils</label><input type="text" name="neutrophils" class="form-control" required></div>
        <div class="mb-3"><label>LFT</label><input type="text" name="lft" class="form-control" required></div>
        <div class="mb-3"><label>Blood Group</label><input type="text" name="blood_group" class="form-control" required></div>

        <div class="text-center mt-4">
          <button type="submit" class="submit-btn">Save Report</button>
        </div>
      </form>

    </div>
  </div>
  
  
                                                    <%@ include file="FooterPage.html"%>

</body>
</html>
