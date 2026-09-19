<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insurance Information - Our Hospital</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <!-- AOS Animation CSS -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #f2f4f7, #ffffff);
            margin: 0;
            padding: 0;
        }
        
.Hover:hover {
    background-color: #ff4d4d;
    font-size: 18px;
    border-radius: 10px;
    transition: all 0.3s ease-in-out;
}

        header {
    background: linear-gradient(135deg, #0066ff, #00c2ff);
    color: white;
    padding: 40px 20px; /* पहले 60px था, अब 40px कर दिया */
    text-align: center;
    position: relative;
    overflow: hidden;
}


        header::after {
            content: "";
            position: absolute;
            bottom: -30px;
            left: 0;
            width: 100%;
            height: 60px;
            background: white;
            border-top-left-radius: 100% 60px;
            border-top-right-radius: 100% 60px;
        }

        header h1 {
            margin: 0;
            font-size: 3rem;
            font-weight: 700;
        }

        header p {
            font-size: 1.2rem;
            opacity: 0.9;
        }

        .container {
            padding: 80px 10% 50px;
        }

        .section {
            margin-bottom: 70px;
        }

        .section h2 {
            font-size: 2.2rem;
            color: #007bff;
            margin-bottom: 30px;
            text-align: center;
            font-weight: 600;
            position: relative;
        }

        .section h2::after {
            content: "";
            width: 60px;
            height: 4px;
            background: #00c2ff;
            display: block;
            margin: 10px auto 0;
            border-radius: 3px;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            margin-top: 20px;
        }

        .card {
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.4s, box-shadow 0.4s;
        }

        .card:hover {
            transform: translateY(-10px) scale(1.02);
            box-shadow: 0 16px 40px rgba(0, 0, 0, 0.15);
        }

        .card i {
            font-size: 3rem;
            color: #00aaff;
            margin-bottom: 20px;
        }

        .card h3 {
            margin-bottom: 10px;
            color: #007bff;
        }

        .card p {
            font-size: 0.95rem;
            line-height: 1.5;
            color: #333;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        ul li {
            background: #e3f2fd;
            margin: 10px 0;
            padding: 12px 20px;
            border-left: 5px solid #007bff;
            border-radius: 8px;
            font-size: 1rem;
            color: #333;
        }

        footer {
            background: #212529;
            color: white;
            text-align: center;
            padding: 25px;
            margin-top: 50px;
        }

        @media screen and (max-width: 768px) {
            header h1 {
                font-size: 2rem;
            }

            .section h2 {
                font-size: 1.7rem;
            }
        }
    </style>
</head>
<body>


	<!--Header Section Start-->

	<%@ include file="HeaderPage.html"%>

	<!--Header Section End-->



	<!--NavBar Section Start-->

	<!--NavBar Section Start-->
<nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>

    <!-- Toggler for small screen -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Nav Links -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
        <li class="nav-item Hover">
          <a class="nav-link active" aria-current="page" href="HomePage.jsp"><b>Home</b></a>
        </li>
        <li class="nav-item ps-1 Hover">
          <a class="nav-link active" href="DoctorDetails.jsp"><b>Doctor Details</b></a>
        </li>
        <li class="nav-item ps-1 Hover">
          <a class="nav-link active" href="Gallery.html"><b>Gallery</b></a>
        </li>

        <!-- Dropdown -->
        <li class="nav-item dropdown ps-1 Hover">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
            aria-expanded="false"><b>Hospital Facility</b></a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item Hover" href="AdmitInformation.jsp"><b>Admit Information</b></a></li>
            <li><a class="dropdown-item Hover" href="PatientReview.jsp"><b>Patient Review</b></a></li>
            <li><a class="dropdown-item Hover" href="InsuranceInfo.jsp"><b>Insurance Info</b></a></li>
            <li><a class="dropdown-item Hover" href="HospitalInfo.jsp"><b>Hospital Info</b></a></li>
            <li><a class="dropdown-item Hover" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
          </ul>
        </li>

        <li class="nav-item ps-1 Hover">
          <a class="nav-link active" href="OurServices.jsp"><b>Our Services</b></a>
        </li>
        <li class="nav-item ps-1 Hover">
          <a class="nav-link active" href="Contact.jsp"><b>Contact Us</b></a>
        </li>
      </ul>

      <!-- Search Form -->
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-light" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<!--NavBar Section End-->

	<!--NavBar Section End-->










<header data-aos="zoom-in">
    <h1>Insurance Information</h1>
    <p>Your Health. Our Priority. Covered with Care.</p>
</header>

<div class="container">

    <!-- Accepted Insurance Providers -->
    <div class="section" data-aos="fade-up">
        <h2>Accepted Insurance Providers</h2>
        <div class="grid">
            <div class="card" data-aos="flip-left">
                <i class="fas fa-handshake"></i>
                <h3>Star Health Insurance</h3>
                <p>Fully integrated with Star Health. Hassle-free claim experience.</p>
            </div>
            <div class="card" data-aos="flip-up" data-aos-delay="100">
                <i class="fas fa-notes-medical"></i>
                <h3>ICICI Lombard</h3>
                <p>Enjoy cashless facility for all eligible ICICI policyholders.</p>
            </div>
            <div class="card" data-aos="flip-right" data-aos-delay="200">
                <i class="fas fa-heartbeat"></i>
                <h3>Care Health (Religare)</h3>
                <p>Quick approvals and 24/7 support for Religare customers.</p>
            </div>
        </div>
    </div>

    <!-- Claim Process -->
    <div class="section" data-aos="fade-up">
        <h2>Insurance Claim Process</h2>
        <div class="grid">
            <div class="card" data-aos="fade-right">
                <i class="fas fa-file-alt"></i>
                <h3>Step 1: Pre-Authorization</h3>
                <p>Submit claim form and documents through our Insurance Desk at admission.</p>
            </div>
            <div class="card" data-aos="fade-left" data-aos-delay="100">
                <i class="fas fa-thumbs-up"></i>
                <h3>Step 2: Approval</h3>
                <p>Insurance provider verifies documents and provides approval.</p>
            </div>
            <div class="card" data-aos="fade-up" data-aos-delay="200">
                <i class="fas fa-money-check-alt"></i>
                <h3>Step 3: Bill Settlement</h3>
                <p>Hospital and insurance provider directly settle the final bill amount.</p>
            </div>
        </div>
    </div>

    <!-- Required Documents -->
    <div class="section" data-aos="fade-up">
        <h2>Required Documents</h2>
        <ul data-aos="fade-in" data-aos-delay="100">
            <li>✅ Insurance Policy Copy or Card</li>
            <li>✅ Government ID Proof (Aadhaar / PAN / Voter ID)</li>
            <li>✅ Doctor’s Prescription and Reports</li>
            <li>✅ Original Bills and Discharge Summary</li>
            <li>✅ Filled Claim Form (Signed by Doctor and Patient)</li>
        </ul>
    </div>

</div>

                                                                    <!-- FOOTER SECTION START HERE -->


	                                                               <%@ include file="FooterPage.html"%>


	                                                                 <!-- FOOTER SECTION START HERE -->

<!-- AOS Animation JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init({
        duration: 1200,
        easing: 'ease-in-out',
        once: true,
    });
</script>

</body>
</html>
