<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jakarta.servlet.http.*,jakarta.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="Custom-CSS.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>

html, body {
	
	  height: 100%;
   	  width: 100%;
}

</style>
</head>
<body>

    <!--Header Section Start-->

	<%@ include file="HeaderPage.html"%>

	<!--Header Section End-->



	<!--NavBar Section Start-->

	<nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
		
		<div class="container-fluid"><a class="navbar-brand" href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
					
					<li class="nav-item Hover"><a class="nav-link active" aria-current="page" href="HomePage.jsp"><b>Home</b></a></li>
					
					<li class="nav-item ps-1 Hover"><a class="nav-link active" aria-current="page" href="PatientRecord.jsp"><b>Patient Record</b></a></li>
					
					<li class="nav-item ps-1 Hover"><a class="nav-link active" href="Prescription.jsp"><b>Prescription</b></a></li>

					<li class="nav-item dropdown ps-1"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>Hospital Facality</b></a>
						
						<ul class="dropdown-menu">
							
							<li class="Hover bg-success"><a class="dropdown-item" href="Blood-test.jsp"><b>Blood Test</b></a></li>
							
							<li class="Hover bg-success"><a class="dropdown-item" href="Department.html"><b>Add Department</b></a></li>
							
							<li class="Hover bg-success"><a class="dropdown-item" href="TodayAppointment.jsp"><b>Today Book Appointment</b></a></li>
							
							<li class="Hover bg-success"><a class="dropdown-item" href="EditDoctor.jsp"><b>Edit Doctor</b></a></li>
							
							<li class="Hover bg-success"><a class="dropdown-item" href="BillingForm.jsp"><b>Generate Bill</b></a></li>
							
							<li class="Hover bg-success"><a class="dropdown-item" href="Staff-Info.jsp"><b>Register New Staff</b></a></li>
							
							<li class="Hover bg-success"><a class="dropdown-item" href="Doctor_info.jsp"><b>Register New Doctor</b></a></li>
							
							<li class="Hover bg-success"><a class="dropdown-item" href="LetterPad.jsp"><b>Letter Pad</b></a></li>
							
							<li class="Hover bg-success"><a class="dropdown-item" href="LaboratoryReport.jsp"><b>Laboratory Reports</b></a></li>
							
							<li class="Hover bg-success"><a class="dropdown-item" href="Urine-test.jsp"><b>Urine Test</b></a></li>
						
						</ul></li>

					        <li class="nav-item ps-1 Hover"><a class="nav-link active" aria-current="page" href="BookAppointment.jsp"><b>Book Appointment</b></a></li>
		         		
		         			<li class="nav-item ps-1 Hover"><a class="nav-link active"href="AdminDoctorList.jsp"><b>Doctors List</b></a></li>
				      
				       </ul>
				
				<form class="d-flex" role="search"><input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
				
					<button class="btn btn-outline-success" type="submit">Search</button>
				
				</form>
			
			</div>
		
		</div>
	
	</nav>

	<!--NavBar Section End-->
	
	
<%
    HttpSession session1 = request.getSession(false);
    String adminName = (String) session1.getAttribute("name");
%>


    <!-- Welcome Message Container -->
    
    <div style="color:red; font-size:26px; font-weight:bold; text-shadow: 1px 1px 2px black, 0 0 25px white, 0 0 5px white;" id="welcomeMessage"></div>
    
        <div class="container my-5">
 
           <div class="row g-4">
   
              <div class="col-md-4">
  
                 <div class="card card-one">
    
                    <div class="card-header bg-success text-light text-center">Hospital Announcements</div>
    
                       <div class="card-body" style="height: 200px; overflow: hidden; position: relative;">
       
                          <div class="announcement-container">
        
                             <ul class="announcement-list px-3 text-danger">
          
                                 <li><b><span>08-04-2025 :</span> All the Hospital Staff reached the hospital on time.</b></li>
          
                                 <li><b><span>09-04-2025 :</span> Doctor's meeting at 10 AM.</b></li>
          
                                 <li><b><span>10-04-2025 :</span> Free health checkup camp in OPD.</b></li>
          
                                 <li><b><span>11-04-2025 :</span> Blood donation camp this Friday.</b></li>
          
                                 <li><b><span>12-04-2025 :</span> New nurse staff joining ceremony.</b></li>
        
                              </ul>
    
                            </div>
    
                         </div>
    
                         <div class="read-more text-center text-danger" style="font-size:20px;">
 
                            <a href="Announcements.jsp" style="text-decoration:none; color: red;"><b>Read more</b></a>

                         </div>

                      </div>

                   </div>

    <!-- Notice -->
    
       <div class="col-md-4">
  
          <div class="card card-one">
    
              <div class="card-header bg-success text-light text-center">Hospital Notice</div>
    
                 <div class="card-body" style="height: 200px; overflow: hidden; position: relative;">
      
                     <div class="announcement-container">
        
                        <ul class="announcement-list px-3" style="color:#c8a405;">
          
                            <li><b><span>12-04-2025 :</span> All hospital staff are requested to mark their attendance by 9:00 AM.</b></li>
         
                            <li><b><span>07-04-2025 :</span> Doctors' meeting will be held in Conference Room A at 10:00 AM.</b></li>
          
                            <li><b><span>04-04-2025 :</span> A free health check-up camp will be organized in OPD Block on Friday.</b></li>
          
                            <li><b><span>03-04-2025 :</span>Hospital premises will be sanitized between 3:00 PM to 5:00 PM. Visitors are advised to cooperate.</b></li>
          
                            <li><b><span>01-04-2025 :</span>Blood Donation Camp scheduled in the Main Hall from 10:00 AM to 2:00 PM.</b></li>
        
                        </ul>
      
                      </div>
    
                   </div>
   
                   <div class="read-more text-center text-danger" style="font-size:20px;">
 
                      <a href="Notice.jsp" style="text-decoration:none; color: red;"><b>Read more</b></a>

                   </div>
  
                </div>

             </div>
    
         <!-- Events -->
   
        <div class="col-md-4">
  
           <div class="card card-one">
    
              <div class="card-header bg-success text-light text-center">Hospital Events</div>
    
                 <div class="card-body" style="height: 200px; overflow: hidden; position: relative;">
      
                    <div class="announcement-container">
        
                       <ul class="announcement-list px-3 text-primary">
          
                          <li><b><span>12-04-2025 :</span>World Health Day Celebration – Awareness rally and health camp at 10:00 AM.</b></li>
          
                          <li><b><span>07-04-2025 :</span> Free Eye Check-Up Camp in OPD-2 from 9:00 AM to 1:00 PM.</b></li>
          
                          <li><b><span>04-04-2025 :</span> Blood Donation Drive – Join us in the Main Hall from 10:00 AM onwards.</b></li>
          
                          <li><b><span>03-04-2025 :</span>Staff Yoga Workshop – Wellness session for hospital staff at 5:00 PM on the rooftop garden.</b></li>
          
                          <li><b><span>01-04-2025 :</span>Nutrition Awareness Seminar for patients and caregivers in Seminar Room A.</b></li>
        
                       </ul>
      
                    </div>
    
                 </div>
   
                 <div class="read-more text-center text-danger" style="font-size:20px;">
  
                    <a href="Events.jsp" style="text-decoration:none; color: red;"><b>Read more</b></a>

                 </div>
  
              </div>

           </div>

        </div>

    </div>
	
         <!-- Footer Code Start -->

        <div><%@ include file="FooterPage.html"%></div> 
        
        <!-- Footer Code End -->
        
        
        <script>
        
        $(document).ready(function() {
		    let adminName = "<%= adminName %>";

		    if (adminName && adminName.trim() !== "") {
		        let message = "💐 Welcome " + adminName + " in Nagvanshi Hospital Site 💐";
		        $("#welcomeMessage").text(message).fadeIn(2000); // 2 seconds slow motion
		    } else {
		         $("#welcomeMessage").text("Welcome to Admin Panel").fadeIn(2000);
		    }
		});

        </script>


 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>