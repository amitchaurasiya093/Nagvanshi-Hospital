<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LABORATORY REPORT</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<style>
.Hover:hover {
    background-color: red;
    font-size: 18px;
    border-radius: 10px;
    transition: all 0.3s ease;
}

.form-container {
    background-color: #add8e6;
    border-radius: 20px;
    padding: 30px;
    box-shadow: 0 0 20px rgba(0,0,0,0.2);
    transition: transform 0.3s;
}

.form-container:hover {
    transform: scale(1.02);
}

.form-heading {
    background-color: red;
    color: white;
    font-size: 26px;
    text-align: center;
    border-radius: 20px;
    padding: 10px;
    margin-bottom: 20px;
    box-shadow: 0 0 10px rgba(255, 0, 0, 0.5);
}

.input-field, select, textarea {
    border-radius: 10px;
    border: 1px solid #ccc;
    padding: 10px;
    width: 100%;
    transition: 0.3s;
}

.input-field:focus, select:focus, textarea:focus {
    border-color: #007bff;
    box-shadow: 0 0 5px rgba(0,123,255,0.5);
    outline: none;
}

.submit-btn {
    font-size: 20px;
    background-color: green;
    color: white;
    border: none;
    border-radius: 12px;
    padding: 10px 30px;
    transition: 0.3s;
}

.submit-btn:hover {
    background-color: darkgreen;
    transform: scale(1.05);
}

.gender-option {
    margin-right: 15px;
}
</style>
</head>
<body>

  <%@ include file="HeaderPage.html" %>

  <nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
   
    <div class="container-fluid">
   
        <a class="navbar-brand" href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>
   
           <div class="collapse navbar-collapse" id="navbarSupportedContent">
      
               <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
         
                  <li class="nav-item"><a class="nav-link active Hover" href="HomePage.jsp"><b>Home</b></a></li>
                  
                  <li class="nav-item ps-1 Hover"><a class="nav-link active" href="DoctorDetails.jsp"><b>Doctor Details</b></a></li>
                
                  <li class="nav-item ps-1 Hover"><a class="nav-link active" href="BookAppointment.jsp"><b>Book Appointment</b></a></li>
                
                  <li class="nav-item dropdown Hover"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Patient Services</a>
                    
                  <ul class="dropdown-menu">
                        
                     <li><a class="dropdown-item Hover" href="Login.jsp"><b>Login</b></a></li>
                     
                     <li><a class="dropdown-item Hover" href="Registration.jsp"><b>Registration</b></a></li>
                     
                     <li><a class="dropdown-item Hover" href="LaboratoryReport.jsp"><b>Laboratory Report</b></a></li>
                        
                     <li><a class="dropdown-item Hover" href="Prescription.jsp"><b>Patient Prescription</b></a></li>
                        
                     <li><a class="dropdown-item Hover" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
                    
                  </ul>
                
                </li>
                
                <li class="nav-item ps-1 Hover"><a class="nav-link active" href="OurServices.jsp"><b>Our Services</b></a></li>
                
                <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Contact.jsp"><b>Contact</b></a></li>
            
            </ul>
            
            <form class="d-flex" role="search">
                
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                
                <button class="btn btn-outline-success" type="submit">Search</button>
            
            </form>
        
        </div>
    
    </div>

</nav>

<!-- Navbar End -->

   <!-- Laboratory Report Form Start -->

   <div class="container my-4">
   
      <form method="post" action="LaboratoryReportConfirm.jsp" class="form-container">
     
          <div class="form-heading"><b>LABORATORY REPORT FORM</b></div>

             <div class="row mb-3">
           
                <div class="col-md-6">
               
                   <label><b>NAME</b></label>
                
                   <input type="text" name="txt_name" class="input-field" placeholder="Enter Name" required>
            
                </div>
            
                <div class="col-md-6">
                
                   <label><b>AGE</b></label>
                
                   <input type="text" name="txt_age" class="input-field" placeholder="Enter Age" required>
            
                </div>
        
            </div>

        
            <div class="row mb-3">
            
               <div class="col-md-6">
               
                  <label><b>GENDER</b></label><br>
                
                  <input type="radio" name="Gender" value="Male" class="gender-option"> <b>Male</b>
                
                  <input type="radio" name="Gender" value="Female" class="gender-option"> <b>Female</b>
            
               </div>
            
               <div class="col-md-6">
               
                  <label><b>MOBILE NO</b></label>
                
                  <input type="text" name="txt_mobile" class="input-field" placeholder="Enter Mobile Number" required>
            
               </div>
        
           </div>

        
           <div class="row mb-3">
            
              <div class="col-md-6">
            
                 <label><b>TEST NAME</b></label>
               
                    <select name="cmb_tname" class="input-field" required>
                   
                        <option value="">-- Select Test --</option>
                    
                        <option value="Blood Test">Blood Test</option>
                    
                        <option value="Urine Test">Urine Test</option>
                    
                        <option value="Digital X-Ray">Digital X-Ray</option>
                    
                        <option value="AltraSound">AltraSound</option>
                    
                        <option value="Heart Disease Test">Heart Disease Test</option>
                    
                        <option value="Thyroid Function Test">Thyroid Function Test</option>
                    
                        <option value="Cancer Test">Cancer Test</option>
                    
                        <option value="Lipid Profile Test">Lipid Profile Test</option>
                    
                        <option value="Blood Sugar Test">Blood Sugar Test</option>
                    
                        <option value="CBC Test">CBC Test</option>
                    
                        <option value="LFT Test">LFT Test</option>
                    
                        <option value="KFT Test">KFT Test</option>
                    
                        <option value="CT Scan">CT Scan</option>
                
                    </select>
            
                </div>
            
                <div class="col-md-6">
               
                   <label><b>DATE</b></label>
                
                   <input type="date" name="txt_date" class="input-field" required>
            
                </div>
        
                </div>

                <div class="row mb-3">
            
                   <div class="col-md-6">
                
                       <label><b>TIME</b></label>
                
                       <input type="time" name="txt_time" class="input-field" required>
            
                  </div>
            
                  <div class="col-md-6">
                
                      <label><b>ADDRESS</b></label>
                
                     <textarea name="txt_address" class="input-field" rows="3" placeholder="Enter Address" required></textarea>
            
                  </div>
                  
                    <div class="col-md-6">
               
                   <label><b>DOCTOR NAME</b></label>
                
                   <input type="text" name="txt_dname" class="input-field" placeholder="Enter Doctor" required>
            
                </div>
                  
       
               </div>

               <div class="text-center">
            
                  <button type="submit" class="submit-btn">SUBMIT</button>
        
               </div>

          </form>

     </div>
<!-- Laboratory Report Form End -->

<!-- Footer Include -->
<%@ include file="FooterPage.html" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
