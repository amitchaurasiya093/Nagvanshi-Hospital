<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

<style>

  body {
    cursor: url('images/cursor.ico'), auto !important;
    
  }


.Hover:hover {
    background-color: red;
    font-size: 18px;
    border-radius: 10px;
}

</style>
</head>
<body>

<!-- Page Loader Start -->
<div id="page-loader" style="position: fixed; top: 0; left: 0; width: 100%; height: 100%;
  background: white; z-index: 9999; display: flex; justify-content: center; align-items: center;">
  <img src="images/loader.gif" alt="Loading..." style="width: 200px; height: 200px;" />
</div>


    <!--Header Section Start-->
    <%@ include file="HeaderPage.html" %>
    <!--Header Section End-->

    <!--NavBar Section Start-->
    <nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
                    <li class="nav-item">
                        <a class="nav-link active Hover" aria-current="page" href="HomePage.jsp"><b>Home</b></a>
                    </li>
                    <li class="nav-item ps-1 Hover">
                        <a class="nav-link active" aria-current="page" href="DoctorDetails.jsp"><b>Doctor Details</b></a>
                    </li>
                    <li class="nav-item ps-1 Hover">
                        <a class="nav-link active" href="BookAppointment.jsp"><b>Book Appointment</b></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">Patient Services</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item Hover" href="Login.jsp"><b>Login</b></a></li>
                            <li><a class="dropdown-item Hover" href="Registration.jsp"><b>Registration</b></a></li>
                            <li><a class="dropdown-item Hover" href="LaboratoryReport.jsp"><b>Laboratory Report</b></a></li>
                            <li><a class="dropdown-item Hover" href="Prescription.jsp"><b>Patient Prescription</b></a></li>
                            <li class="Hover"><a class="dropdown-item" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
                        </ul>
                    </li>
                    <li class="nav-item ps-1 Hover">
                        <a class="nav-link active" aria-current="page" href="OurServices.jsp"><b>Our Services</b></a>
                    </li>
                    <li class="nav-item ps-1 Hover">
                        <a class="nav-link active" href="Contact.jsp"><b>Contact</b></a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <!--NavBar Section End-->

    <!--Login Form Start-->
    <section class="py-4">
      <div class="container">
        <div class="row justify-content-center align-items-center">
          <div class="col-lg-10">
            <div class="card border-1 rounded-4 shadow">
              <div class="row g-0 flex-column flex-md-row">

                <!-- IMAGE SECTION -->
                <div class="col-12 col-md-5 text-center p-3 order-1 order-md-1">
                  <img src="./images/login-one.jpg" alt="login form"
                    class="img-fluid"
                    style="max-height: 400px; width: 80%; object-fit: cover; border-radius: 1rem;">
                </div>

                <!-- FORM SECTION -->
                <div class="col-12 col-md-7 d-flex align-items-center p-4 order-2 order-md-2">
                  <div class="w-100">
                    <form method="post" action="SendOTP">
                      <div class="text-center mb-3">
                        <img src="./images/Nagvanshi-Logo.png" height="90" width="90" style="border-radius: 50%;">
                      </div>
                      <h5 class="text-center mb-3"><b>Login into your account</b></h5>

                      <div class="form-outline mb-3">
                        <label class="form-label" for="txt_email"><b>Email address</b></label>
                        <input type="text" id="txt_email" name="txt_email" class="form-control form-control-lg" />
                      </div>

                      <div class="mb-3">
                        <button class="btn btn-success btn-lg w-100" type="submit">Verify OTP</button>
                      </div>

                      <p class="text-center mb-0" style="color: #393f81;">
                        Don't have an account?
                        <a href="Registration.jsp" style="color: #393f81;"><b>Register here</b></a>
                      </p>
                    </form>
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--Login Form End-->

    <!-- Footer Section Start Here -->
    <%@ include file="FooterPage.html" %>
    <!-- Footer Section End Here -->

<script>


window.addEventListener("load", function () {
    setTimeout(function () {
      document.getElementById("page-loader").style.display = "none";
      document.getElementById("main-content").style.display = "block";
    }, 1000); // 5000 milliseconds = 5 seconds
  });

</script>



<script src="script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
