<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home||Admit Information</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
<link rel="stylesheet" href="Custom-CSS.css">
<style>
        body {
            scroll-behavior: smooth;
        }
        
</style>
</head>
<body class="bg-light">


	<!--Header Section Start-->

	<%@ include file="HeaderPage.html"%>

	<!--Header Section End-->


	<!--NavBar Section Start-->

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
          
                        <a class="nav-link active" href="Gallery.html"><b>Gallery</b></a>
        
                     </li>

                     <li class="nav-item dropdown ps-1">
          
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>Hospital Facality</b></a>
          
                           <ul class="dropdown-menu">
            
                               <li class="Hover"><a class="dropdown-item" href="AdmitInformation.jsp"><b>Admit Information</b></a></li>
           
                               <li class="Hover"><a class="dropdown-item" href="PatientReview.jsp"><b>Patient Review</b></a></li>
            
                               <li class="Hover"><a class="dropdown-item" href="Login.jsp"><b>Insurance Info</b></a></li>
            
                               <li class="Hover"><a class="dropdown-item" href="HospitalInfo.jsp"><b>Hospital Info</b></a></li>
            
                               <li class="Hover"><a class="dropdown-item" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
          
                           </ul>
        
                        </li>

                        <li class="nav-item ps-1 Hover">
          
                           <a class="nav-link active" aria-current="page" href="OurServices.jsp"><b>Our Services</b></a>
        
                        </li>
        
                        <li class="nav-item ps-1 Hover">
          
                            <a class="nav-link active" href="Contact.jsp"><b>Contact Us</b></a>
        
                        </li>
      
                    </ul>

                    <!-- Search Form -->
        
                    <form class="d-flex" role="search">
          
                       <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          
                       <button class="btn btn-outline-success" type="submit">Search</button>
        
                    </form>
      
                 </div>
    
             </div>

        </nav>

	   <!--NavBar Section End-->
	   
	   <!--Admit Information Code Start-->

       <header class="bg-primary text-white py-2 text-center shadow rounded-5 mt-3">
       
          <h1 class="display-5 fw-bold fade-in">🏥 Admit Information</h1>
        
          <p class="lead fade-in">Everything you need to know about patient admission</p>
    
       </header>

      <div class="container my-5">

          <div class="section-box fade-in">
          
              <h3 class="text-primary mb-3 fw-bold"><i class="bi bi-journal-medical icon-circle"></i> Admission Procedure</h3>
            
              <p class="fw-bold">Patients can be admitted either via OPD or Emergency. Our medical staff will assist you in completing the admission formalities. For emergency cases, patients are directly taken to Emergency Room.</p>
        
          </div>

          <div class="section-box fade-in">
  
              <h3 class="text-primary mb-3 fw-bold"><i class="bi bi-folder-check icon-circle"></i> Documents Required</h3>
    
                  <ul class="list-group list-group-flush">
          
                      <li class="list-group-item fw-bold">Government ID (Aadhar, PAN, etc.)</li>
               
                      <li class="list-group-item fw-bold">Doctor's referral or prescription</li>
                
                      <li class="list-group-item fw-bold">Insurance documents (if applicable)</li>
                
                      <li class="list-group-item fw-bold">Previous medical records (if any)</li>
            
                  </ul>
        
              </div>

              <div class="section-box fade-in">
      
                 <h3 class="text-primary mb-3 fw-bold"><i class="bi bi-hospital icon-circle"></i> Room Types & Charges</h3>
          
                    <div class="table-responsive">
                
                        <table class="table table-bordered text-center">
                    
                            <thead class="table-primary">
                        
                                <tr>
                            
                                   <th>Room Type</th>
                            
                                   <th>Charges (Per Day)</th>
                        
                                </tr>
                    
                             </thead>
                    
                           <tbody>
                        
                              <tr>
                            
                                  <td class="fw-bold">General Ward</td>
                            
                                  <td class="fw-bold">₹800</td>
                        
                              </tr>
                        
                              <tr>
                            
                                  <td class="fw-bold">Semi-Private Room</td>
                            
                                  <td class="fw-bold">₹1500</td>
                        
                              </tr>
                        
                              <tr>
                            
                                  <td class="fw-bold">Private Room</td>
                            
                                  <td class="fw-bold">₹2500</td>
                        
                              </tr>
                        
                              <tr>
                            
                                  <td class="fw-bold">Deluxe Suite</td>
                            
                                  <td class="fw-bold">₹5000</td>
                        
                              </tr>
                    
                           </tbody>
                
                       </table>
            
                    </div>
        
               </div>
               
               <!--Admit Information Code End-->
               
               <!--Patient Guideline Code Start-->

              <div class="section-box fade-in">
       
                 <h3 class="text-primary mb-3 fw-bold"><i class="bi bi-info-circle icon-circle"></i> Patient Guidelines</h3>
            
                    <ul class="fw-bold">
                
                       <li>Follow all instructions provided by medical staff.</li>
                       <li>Visiting hours: <strong>4:00 PM to 6:00 PM daily</strong>.</li>
                       <li>Please avoid bringing valuable items.</li>
                       <li>Use the nurse call button for any assistance.</li>
            
                    </ul>
        
              </div>

              <div class="alert alert-danger fade-in text-center fw-bold fs-5" role="alert">
      
                   🚨 <strong>Emergency?</strong> Bring the patient directly to Emergency Room. Our services are available <u>24x7</u>.
        
              </div>

         </div>
         
         <!--Patient Guideline Code End-->

         <!-- FOOTER SECTION START HERE -->

	     <%@ include file="FooterPage.html"%>

	     <!-- FOOTER SECTION START HERE -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
