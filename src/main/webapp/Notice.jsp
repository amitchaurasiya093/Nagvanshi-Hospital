<!DOCTYPE html>
<html>
<head>
  <title>All Hospital Notice</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Bootstrap Icons -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <style>
    .notice-card {
      background-color: white;
      border: 1px solid #ddd;
      border-radius: 10px;
      margin-bottom: 20px;
      padding: 15px 20px;
      display: flex;
      align-items: flex-start;
      box-shadow: 0 4px 12px rgba(0, 123, 255, 0.5);
      transition: 0.3s ease-in-out;
    }

    .notice-card:hover {
      box-shadow: 0 6px 16px rgba(0, 123, 255, 0.7);
    }

    .notice-icon {
      font-size: 24px;
      color: #007bff;
      margin-right: 15px;
      margin-top: 5px;
    }

    .notice-content {
      flex: 1;
    }

    .notice-date {
      font-weight: bold;
      color: #28a745;
      font-size: 16px;
    }

    .new-badge {
      font-size: 14px;
      color: white;
      background-color: red;
      padding: 3px 7px;
      border-radius: 5px;
      margin-left: 10px;
    }

    .Hover:hover {
      background-color: red;
      font-size: 18px;
      border-radius: 10px;
    }

    .home-table-one {
      width: 100%;
      background-color: #077fa5;
    }

    .home-table-two {
      background-color: #add8e6;
    }
  </style>
</head>
<body>

  <!-- Header Section -->
  <%@ include file="HeaderPage.html"%>

  <!-- NavBar Section Start -->
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
  <!-- NavBar Section End -->

  <div class="container mt-5">
    <div class="text-center mb-4">
      <h2 style="text-shadow: 1px 1px 2px black, 0 0 25px white, 0 0 5px white;" class="text-success">All Hospital Notice</h2>
    </div>

   
    <div class="notice-card">
      <i class="bi bi-arrow-right-circle-fill notice-icon"></i>
      <div class="notice-content">
        <div class="notice-date">08-04-2025</div>
        <p class="text-dark mb-0">All hospital staff are requested to mark their attendance by 9:00 AM.</p>
      </div>
    </div>

    <div class="notice-card">
      <i class="bi bi-arrow-right-circle-fill notice-icon"></i>
      <div class="notice-content">
        <div class="notice-date">09-04-2025</div>
        <p class="text-dark mb-0">Doctors' meeting will be held in Conference Room A at 10:00 AM.</p>
      </div>
    </div>

    <div class="notice-card">
      <i class="bi bi-arrow-right-circle-fill notice-icon"></i>
      <div class="notice-content">
        <div class="notice-date">10-04-2025 <span class="new-badge">New</span></div>
        <p class="text-dark mb-0">A free health check-up camp will be organized in OPD Block on Friday.</p>
      </div>
    </div>

    <div class="notice-card">
      <i class="bi bi-arrow-right-circle-fill notice-icon"></i>
      <div class="notice-content">
        <div class="notice-date">11-04-2025 <span class="new-badge">New</span></div>
        <p class="text-dark mb-0">Hospital premises will be sanitized between 3:00 PM to 5:00 PM. Visitors are advised to cooperate.</p>
      </div>
    </div>

    <div class="notice-card">
      <i class="bi bi-arrow-right-circle-fill notice-icon"></i>
      <div class="notice-content">
        <div class="notice-date">12-04-2025 <span class="new-badge">New</span></div>
        <p class="text-dark mb-0">Blood Donation Camp scheduled in the Main Hall from 10:00 AM to 2:00 PM.</p>
      </div>
    </div>

    <div class="text-center mt-4">
      <a href="Adminview.jsp" class="btn btn-primary px-3 mb-5">Back</a>
    </div>
  </div>

 
  <%@ include file="FooterPage.html"%>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
