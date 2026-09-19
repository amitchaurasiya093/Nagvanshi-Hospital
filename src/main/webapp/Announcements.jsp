<!DOCTYPE html>
<html>
<head>
<title>All Hospital Announcements</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" href="Custom-CSS.css">
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
              <li class="Hover"><a class="dropdown-item" href="Registration.jsp"><b>Admit Information</b></a></li>
              <li class="Hover"><a class="dropdown-item" href="Login.jsp"><b>Insurance Info</b></a></li>
              <li class="Hover"><a class="dropdown-item" href="Prescription.jsp"><b>Hospital Info</b></a></li>
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

  <div class="container mt-5">

    <div class="text-center mb-4">
      <h2 style="text-shadow: 1px 1px 2px black, 0 0 25px white, 0 0 5px white;" class="text-success">All Hospital Announcements</h2>
    </div>

    <!-- Announcements -->
    <div class="announcement-card">
      <i class="bi bi-arrow-right-circle-fill announcement-icon"></i>
      <div class="announcement-content">
        <div class="announcement-date">08-04-2025</div>
        <p class="text-dark mb-0">All the Hospital Staff reached the hospital on time.</p>
      </div>
    </div>

    <div class="announcement-card">
      <i class="bi bi-arrow-right-circle-fill announcement-icon"></i>
      <div class="announcement-content">
        <div class="announcement-date">09-04-2025</div>
        <p class="text-dark mb-0">Doctor's meeting at 10 AM.</p>
      </div>
    </div>

    <div class="announcement-card">
      <i class="bi bi-arrow-right-circle-fill announcement-icon"></i>
      <div class="announcement-content">
        <div class="announcement-date">10-04-2025 <span class="new-badge">New</span></div>
        <p class="text-dark mb-0">Free health checkup camp in OPD.</p>
      </div>
    </div>

    <div class="announcement-card">
      <i class="bi bi-arrow-right-circle-fill announcement-icon"></i>
      <div class="announcement-content">
        <div class="announcement-date">11-04-2025 <span class="new-badge">New</span></div>
        <p class="text-dark mb-0">Blood donation camp this Friday.</p>
      </div>
    </div>

    <div class="announcement-card">
      <i class="bi bi-arrow-right-circle-fill announcement-icon"></i>
      <div class="announcement-content">
        <div class="announcement-date">12-04-2025 <span class="new-badge">New</span></div>
        <p class="text-dark mb-0">New nurse staff joining ceremony.</p>
      </div>
    </div>

    <div class="text-center mt-4">
      <a href="Adminview.jsp" class="btn btn-primary px-3 mb-5">Back</a>
    </div>

  </div>

  <!-- Footer Section -->
  <%@ include file="FooterPage.html"%>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
