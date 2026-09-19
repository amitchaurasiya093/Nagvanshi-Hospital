<%@page import="com.app.FestivalCheck"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home || Nagvanshi Hospital</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="Custom-CSS.css">

<style>
  
  body {
    
    cursor: url('images/cursor.png'), auto !important;
  }
</style>

</head>
<body>

<%
    String festival = FestivalCheck.getTodayFestival();
%>
 
 <!-- Page Loader Start -->
 
<div id="page-loader" style="position: fixed; top: 0; left: 0; width: 100%; height: 100%;
  background: white; z-index: 9999; display: flex; flex-direction: column; justify-content: center; align-items: center;">
  
  <img src="images/loader.gif" alt="Loading..." style="width: 200px; height: 200px;" />
  
  <h4 style="margin-top: 20px; font-weight: bold; font-size: 30px; color: blue;">
    Loading<span id="dots"></span>
  </h4>
</div>
 

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
        
                    <li class="nav-item ps-1 Hover"><a class="nav-link active" aria-current="page" href="OurServices.jsp"><b>Our Services</b></a></li>
        
                    <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Gallery.html"><b>Gallery</b></a></li>

                    <li class="nav-item dropdown ps-1"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>Hospital Facality</b></a>
          
                       <ul class="dropdown-menu">
          
                           <li class="Hover bg-success"><a class="dropdown-item" href="AdmitInformation.jsp"><b>Admit Information</b></a></li>
          
                           <li class="Hover bg-success"><a class="dropdown-item" href="HospitalInfo.jsp"><b>Hospital Info</b></a></li>
            
                           <li class="Hover bg-success"><a class="dropdown-item" href="Prime-Minister-Health.jsp"><b>PM Health Offer</b></a></li>
          
                       </ul>
        
                   </li>

                   <li class="nav-item ps-1 Hover"><a class="nav-link active" aria-current="page" href="Announcements.jsp"><b>Announcements</b></a></li>
        
                   <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Contact.jsp"><b>Contact Us</b></a></li>
        
               </ul>
               

               <form class="d-flex" role="search">
       
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          
                  <div class="btn-group shadow-sm">
    
                     <a href="Registration.jsp" class="btn btn-dark px-4">Register</a>
    
                     <a href="Login.jsp" class="btn btn-outline-dark px-4">Login</a>

</div>
        
               </form>
      
          </div>
    
    </div>

</nav>

	<!--NavBar Section End-->


	<!--Slider Banner Section Start-->

	<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
      
        <div class="carousel-inner text-center">  
       
            <div class="carousel-item active">
          
               <img class="img-fluid rounded" style=" height:400px; width:90%; object-fit:cover;" src="./images/Gemini_Generated_Image_ag6717ag6717ag67.png" class="d-block w-100" alt="Banner-1">
         
            </div>
         
            <div class="carousel-item">
            
               <img class="img-fluid" style=" height:400px; width:90%; object-fit:cover;" src="./images/Gemini_Generated_Image_rsctgmrsctgmrsct.png" class="d-block w-100" alt="Banner-2">
         
            </div> 
       
        </div>
    
    </div>

	<!--Slider Banner Section End-->


	<!--Doctor Specialized Section Start-->

	<%@ include file="SpecializedDoctors.html"%>

	<!--Doctor Specialized Section End-->

		
	<!----------------------------------------->
	<!-- HOSPITAL MACHINE SECTION START HERE -->
	<!----------------------------------------->
	
	
   <div class="container-fluid my-5">
  
      <div class="row g-4">
  
         <!-- Card 1 -->
         <div class="col-12 col-sm-6 col-lg-3">
      
            <div class="card h-100 custom-card text-center">
        
               <div class="image-box">
           
                  <img src="./images/Altrasound.png" class="card-img-top image rounded-4" alt="Altrasound Machine">
             
               </div>
        
               <div class="card-body">
          
                  <h5 class="card-title">Altrasound Machine</h5>
        
               </div>
      
          </div>
    
      </div>

      <!-- Card 2 -->
      <div class="col-12 col-sm-6 col-lg-3">
      
         <div class="card h-100 custom-card text-center">
        
            <div class="image-box">
          
               <img src="./images/CT Scan.png" class="card-img-top image rounded-4" alt="CT Scan Machine">
        
            </div>
        
            <div class="card-body">
          
               <h5 class="card-title">CT Scan Machine</h5>
        
            </div>
      
        </div>
    
    </div>

    <!-- Card 3 -->
    <div class="col-12 col-sm-6 col-lg-3">
      
       <div class="card h-100 custom-card text-center">
       
          <div class="image-box">
         
             <img src="./images/ECG.png" class="card-img-top image rounded-4" alt="ECG Machine">
        
          </div>
        
          <div class="card-body">
          
             <h5 class="card-title">ECG Machine</h5>
        
          </div>
      
      </div>
    
   </div>

    <!-- Card 4 -->
    <div class="col-12 col-sm-6 col-lg-3">
      
       <div class="card h-100 custom-card text-center">
       
          <div class="image-box">
         
             <img src="./images/X-Ray.png" class="card-img-top image rounded-4" alt="X-Ray Machine">
        
          </div>
        
          <div class="card-body">
          
             <h5 class="card-title">X-Ray Machine</h5>
        
          </div>
      
       </div>
    
    </div>

  </div>

</div>

	
	<!---------------------------------------------->
	<!-- IMPORTANT INFORMATION SECTION START HERE -->
	<!---------------------------------------------->
	
	<div class="container-div" style="border-radius:20px;">

		<h1 class="text-white text-center py-2 heading">-: IMPORTANT INFORMATION :-</h1>

		<div class="container middle-banner div-2">

			<div class="row">

				<div class="col-lg-6">

					<ol>

						<li class="pb-4 pt-4"><b>Hygiene and Health Safety :</b> All
							patients, staff and visitors are required to follow hygiene and
							health safety. Regular hand washing, wearing of masks, and use of
							sanitizers are mandatory. Smoking and consumption of alcohol are
							strictly prohibited in the hospital premises.</li>

						<li class="pb-4"><b>Punctuality :</b> Patients must adhere to
							the time allotted for medical consultation, treatment and
							investigations. Understand and respect the importance of the
							doctor and staff's time.</li>

						<li class="pb-4"><b>Visiting Hours :</b> Visitors to the
							hospital are allowed to meet patients only during scheduled
							visiting hours. Family members are encouraged to adjust the time
							to suit the patient's needs.</li>

						<li class="pb-4"><b>Emergency services :</b> In case of
							emergency, avail the hospital's emergency services immediately.
							Patients and their families should remember the hospital's
							emergency number.</li>
					</ol>

				</div>
				<div class="col-lg-6">

					<ol>

						<li class="pb-4 pt-4"><b>Valuables & Security :</b> Patients
							and visitors to the hospital are advised not to bring valuables
							such as jewellery and cash with them. The hospital administration
							will not be responsible for the safety of these items.</li>

						<li class="pb-4"><b>Medicine & Treatment :</b> Patients are
							required to follow the medicines and treatment prescribed by the
							doctor. Taking any kind of medicine without medical advice is
							prohibited.</li>

						<li class="pb-4"><b>Conduct & Etiquette :</b> All patients,
							staff and visitors are expected to behave in a courteous and
							respectful manner. Any form of uncivil behaviour will not be
							tolerated in the hospital.</li>

						<li class="pb-4"><b>Feedback & Complaints :</b> Patients and
							their families can submit feedback and complaints to the hospital
							administration using the hospital helpdesk or online portal.</li>

					</ol>

				</div>

			</div>

		</div>


	</div>
	
	
    
  
       <div class="row g-4">

             <!-- Hospital Announcements -->
      
             <div class="col-md-4">
  
                <div class="card mt-4 ms-4" style="height: 600px;">
    
                   <div class="card-header py-3 bg-danger text-white text-center fs-4 fw-bold">Hospital Announcements</div>
    
                   <div class="card-body p-0">
      
                       <div class="announcement-scroll p-2" style="height: 490px; overflow-y: auto;">
        
                          <div class="notice-item">
          
                             <div class="announcement-card p-3 mb-2">
            
                                 <p class="mb-1 text-muted" style="font-size: 13px;">📅 08/04/2025</p>
            
                                 <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">🟦 All the Hospital Staff reached the hospital on time.</p>
          
                             </div>
        
                          </div>
        
                          <div class="notice-item">
          
                             <div class="announcement-card p-3 mb-2">
            
                                <p class="mb-1 text-muted" style="font-size: 13px;">📅 09/04/2025</p>
            
                                <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">🟦 Doctor's meeting at 10 AM.</p>
          
                             </div>
        
                          </div>
        
                          <div class="notice-item">
          
                             <div class="announcement-card p-3 mb-2">
            
                                <p class="mb-1 text-muted" style="font-size: 13px;">📅 10/04/2025</p>
            
                                <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">🟨 Free health checkup camp in OPD.
              
                                   <span class="badge bg-warning text-dark ms-2">New</span>
            
                                </p>
          
                             </div>
        
                          </div>
        
                          <div class="notice-item">
          
                             <div class="announcement-card p-3 mb-2">
            
                                 <p class="mb-1 text-muted" style="font-size: 13px;">📅 11/04/2025</p>
            
                                 <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">🟩 Blood donation camp this Friday.
              
                                     <span class="badge bg-info text-dark ms-2">New</span>
            
                                 </p>
          
                              </div>
        
                              </div>
        
                                 <div class="notice-item">
          
                                    <div class="announcement-card p-3 mb-2">
            
                                       <p class="mb-1 text-muted" style="font-size: 13px;">📅 12/04/2025</p>
            
                                       <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">🟪 New nurse staff joining ceremony.
              
                                           <span class="badge bg-primary text-light ms-2">New</span>
            
                                       </p>
          
                                     </div>
        
                                  </div>
      
                               </div>
    
                           </div>
    
                           <div class="text-center p-2">
      
                               <a href="Announcements.jsp" class="text-decoration-none fs-5" style="color: red; font-weight: bold;">All Announcements</a>
    
                           </div>
  
                       </div>

                   </div>

                    <!-- Hospital Notice -->
    
                   <div class="col-md-4">
      
                       <div class="card mt-4" style="height: 600px;">
        
                          <div class="card-header py-3 bg-warning text-white text-center fs-4 fw-bold">Hospital Notice</div>
        
                             <div class="card-body p-0">
          
                                <div class="announcement-scroll p-2">
            
                                    <div class="notice-item">
              
                                       <div class="announcement-card p-3 mb-2">
                
                                           <p class="mb-1 text-muted" style="font-size: 13px;">📅 12/04/2025</p>
                
                                           <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">All hospital staff are requested to mark their attendance by 9:00 AM.</p>
              
                                       </div>
            
                                    </div>
            
                                    <div class="notice-item">
              
                                       <div class="announcement-card p-3 mb-2">
               
                                           <p class="mb-1 text-muted" style="font-size: 13px;">📅 07/04/2025</p>
                
                                           <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">Doctors' meeting will be held in Conference Room A at 10:00 AM.</p>
             
                                       </div>
            
                                    </div>
            
                                    <div class="notice-item">
              
                                      <div class="announcement-card p-3 mb-2">
                
                                          <p class="mb-1 text-muted" style="font-size: 13px;">📅 04/04/2025</p>
              
                                          <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">A free health check-up camp will be organized in OPD Block on Friday.</p>
              
                                      </div>
            
                                    </div>
            
                                    <div class="notice-item">
              
                                       <div class="announcement-card p-3 mb-2">
                
                                           <p class="mb-1 text-muted" style="font-size: 13px;">📅 03/04/2025</p>
                
                                           <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">Hospital premises will be sanitized between 3:00 PM to 5:00 PM. Visitors are advised to cooperate.</p>
               
                                       </div>
            
                                    </div>
 
                                    <div class="notice-item">
              
                                       <div class="announcement-card p-3 mb-2">
                
                                          <p class="mb-1 text-muted" style="font-size: 13px;">📅 01/04/2025</p>
                
                                          <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">Blood Donation Camp scheduled in the Main Hall from 10:00 AM to 2:00 PM</p>
              
                                       </div>

                                    </div>
          
                                </div>
       
                             </div>
        
                             <div class="text-center p-2">
          
                                <a href="Notice.jsp" class="text-decoration-none text-warning fs-5" style="font-weight: bold;">All Notice</a>
        
                             </div>
      
                         </div>
    
                      </div>

                      <!-- Hospital Events -->
    
                      <div class="col-md-4">
      
                         <div class="card mt-4 me-4" style="height: 600px;">
       
                              <div class="card-header py-3 bg-success text-white text-center fs-4 fw-bold">Hospital Events</div>
        
                                 <div class="card-body p-0">
          
                                     <div class="announcement-scroll p-2">
           
                                        <div class="notice-item">
              
                                            <div class="announcement-card p-3 mb-2">
                
                                                <p class="mb-1 text-muted" style="font-size: 13px;">📅 12/04/2025</p>
                
                                                <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">World Health Day Celebration – Awareness rally and health camp at 10:00 AM.
                  
                                                     <span class="badge bg-success text-light ms-2">New</span>
     
                                                </p>
              
                                             </div>
            
                                          </div>
           
                                          <div class="notice-item">
              
                                             <div class="announcement-card p-3 mb-2">
                
                                                <p class="mb-1 text-muted" style="font-size: 13px;">📅 07/04/2025</p>
                
                                                <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">Free Eye Check-Up Camp in OPD-2 from 9:00 AM to 1:00 PM.</p>
              
                                             </div>
           
                                          </div>
            
                                          <div class="notice-item">
              
                                             <div class="announcement-card p-3 mb-2">
                
                                                <p class="mb-1 text-muted" style="font-size: 13px;">📅 04/04/2025</p>
                
                                                <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">Blood Donation Drive – Join us in the Main Hall from 10:00 AM onwards.</p></div>
            
                                          </div>
            
                                          <div class="notice-item">
             
                                             <div class="announcement-card p-3 mb-2">
               
                                                 <p class="mb-1 text-muted" style="font-size: 13px;">📅 03/04/2025</p>
               
                                                 <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">Staff Yoga Workshop – Wellness session for hospital staff at 5:00 PM on the rooftop garden.</p>
              
                                             </div>
            
                                           </div>
            
                                           <div class="notice-item">
              
                                               <div class="announcement-card p-3 mb-2">
                
                                                  <p class="mb-1 text-muted" style="font-size: 13px;">📅 01/04/2025</p>
                
                                                  <p class="mb-0 text-dark fw-semibold" style="font-size: 15px;">Nutrition Awareness Seminar for patients and caregivers in Seminar Room A.</p></div>
                                                      
                                               </div>
          
                                           </div>
        
                                         </div>
        
                                         <div class="text-center p-2">
          
                                            <a href="Events.jsp" class="text-decoration-none text-success fs-5" style="font-weight: bold;">All Events</a>
        
                                         </div>
      
                                       </div>
    
                                   </div>

  
                               </div>

                           
	
	                       <!-- SCROLLING CARD BOX END -->
	                       
	                      
                         <div class="modal fade" id="festivalModal" tabindex="-1" aria-labelledby="festivalModalLabel" aria-hidden="true">
   
                            <div class="modal-dialog modal-dialog-centered">
    
                               <div class="modal-content">
      
                                  <div class="modal-header border-0">
       
                                      <h5 class="modal-title w-100 text-center" id="festivalModalLabel">🎉 Today's Festival</h5>
        
                                      <button type="button" class="btn-close position-absolute end-0 me-3" data-bs-dismiss="modal" aria-label="Close"></button>
      
                                  </div>
      
                                  <div class="modal-body text-center">
        
                                     <h4><%= festival %></h4>
       
                                     <p>Wishing you a joyful <%= festival %> from our hospital family! ❤️</p>
      
                                  </div>
   
                               </div>
  
                            </div>

                        </div>                 

                                        
                           <!-- FOOTER SECTION START HERE -->

	                       <%@ include file="FooterPage.html"%>

	                       <!-- FOOTER SECTION START HERE -->
	                                                                 
<script>
	 
		(function(w, d) 
				{
		
			         w.CollectId = "67b2d5451f59b1cbec8a9dde";
			
			         var h = d.head || d.getElementsByTagName("head")[0];
			
			         var s = d.createElement("script");
			
			         s.setAttribute("type", "text/javascript");
			
			         s.async = true;
			
			         s.setAttribute("src", "https://collectcdn.com/launcher.js");
			
			         h.appendChild(s);
		
				})(window, document);
		


		  document.addEventListener("DOMContentLoaded", function ()
				  {
		        
			           var festival = "<%= festival %>";
		        
			           if (festival !== "") 
			              {
		             
			        	        var myModal = new bootstrap.Modal(document.getElementById('festivalModal'),
			        	        		{
		                
			        	        	          keyboard: false
		            
			        	        		});
		            
			        	        myModal.show();
		        
			              }
		    
				  });
		  
		  
		  
		  window.addEventListener("load", function () 
				  {
			    
			           setTimeout(function () 
			        	 {
			      
			        	       document.getElementById("page-loader").style.display = "none";
			      
			        	       document.getElementById("main-content").style.display = "block";
			    
			        	 }, 2000); 
			  
				  });

		  
		  let dotCount = 0;
		  const dotsSpan = document.getElementById("dots");

		  setInterval(() => 
		     {
		    
		    	 dotCount = (dotCount + 1) % 4;
		         dotsSpan.textContent = ".".repeat(dotCount);
		  
		     }, 500); 
		  
</script>
	 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

