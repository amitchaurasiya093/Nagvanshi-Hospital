<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Urine Test Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

<style>
 
 body {
    background: linear-gradient(to right, #e0f7fa, #ffffff);
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    animation: fadeIn 1s ease-in;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

.form-container {
    background: #ffffff;
    padding: 40px 30px;
    border-radius: 15px;
    box-shadow: 0 0 20px rgba(0, 123, 255, 0.2);
    animation: slideIn 0.7s ease-in-out;
}

@keyframes slideIn {
    0% { transform: translateY(-30px); opacity: 0; }
    100% { transform: translateY(0); opacity: 1; }
}

.form-heading {
    text-align: center;
    font-size: 28px;
    font-weight: bold;
    color: #00796b;
    margin-bottom: 30px;
    position: relative;
}

.form-heading::after {
    content: "";
    position: absolute;
    width: 60px;
    height: 4px;
    background: #00796b;
    left: 50%;
    transform: translateX(-50%);
    bottom: -10px;
    border-radius: 5px;
}

label {
    font-weight: 600;
    color: #00796b;
}

input.form-control {
    border-radius: 8px;
    border: 1px solid #ccc;
    transition: all 0.3s ease-in-out;
}

input.form-control:focus {
    border-color: #00796b;
    box-shadow: 0 0 5px rgba(0, 121, 107, 0.4);
}

.submit-btn {
    background-color: #00796b;
    color: white;
    padding: 10px 30px;
    font-size: 16px;
    font-weight: bold;
    border: none;
    border-radius: 30px;
    transition: 0.3s ease;
    box-shadow: 0 8px 20px rgba(0, 121, 107, 0.3);
}

.submit-btn:hover {
    background-color: #004d40;
    transform: translateY(-2px);
    box-shadow: 0 12px 24px rgba(0, 121, 107, 0.4);
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
        <div class="form-heading"><i class="fas fa-vial me-2"></i>Urine Test Details Form</div>

        <form method="post" action="SaveUrineTestReport.jsp">

            <div class="mb-3"><label>Protein</label><input type="text" name="protein" class="form-control" required></div>

            <div class="mb-3"><label>Glucose (Sugar)</label><input type="text" name="glucose" class="form-control" required></div>

            <div class="mb-3"><label>RBC Count</label><input type="text" name="rbc_count" class="form-control" required></div>

            <div class="mb-3"><label>RBCs</label><input type="text" name="rbc" class="form-control" required></div>

            <div class="mb-3"><label>WBCs</label><input type="text" name="wbc" class="form-control" required></div>

            <div class="mb-3"><label>Crystals</label><input type="text" name="crystal" class="form-control" required></div>

            <div class="mb-3"><label>Appearance</label><input type="text" name="appear" class="form-control" required></div>

            <div class="mb-3"><label>Color</label><input type="text" name="color" class="form-control" required></div>

            <div class="mb-3"><label>Volume</label><input type="text" name="volume" class="form-control" required></div>

            <div class="mb-3"><label>Specific Gravity</label><input type="text" name="gravity" class="form-control" required></div>

            <div class="text-center mt-4">
                <button type="submit" class="submit-btn"><i class="fas fa-save me-2"></i>Save Report</button>
            </div>

        </form>
    </div>
</div>

</body>
</html>
