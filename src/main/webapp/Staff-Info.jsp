<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Professional Staff Info Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #ddeafc, #e3fdfd);
            font-family: 'Inter', sans-serif;
        }
        
        .home-table-one {
	width: 100%;
	background-color: #077fa5;
}

.Hover:hover{

    background-color:red;
    font-size:18px;
    border-radius:10px;
}

.home-table-two {
	background-color: #add8e6;
}
        .form-wrapper {
            max-width: 950px;
            margin: 50px auto;
            background: #fff;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.1);
            padding: 40px 50px;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            text-align: center;
            font-weight: 600;
            color: #333;
            margin-bottom: 30px;
        }

        .form-label {
            font-weight: 500;
            color: #333;
        }

        .form-control {
            border-radius: 12px;
            padding: 10px 15px;
            border: 1px solid #ccc;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 8px rgba(0,123,255,0.2);
        }

        .btn-submit {
            background: linear-gradient(to right, #007bff, #00bfff);
            color: #fff;
            padding: 12px 35px;
            border-radius: 30px;
            font-size: 16px;
            border: none;
            transition: 0.3s ease;
        }

        .btn-submit:hover {
            background: linear-gradient(to right, #0056b3, #00aaff);
        }

        .floating-label {
            position: relative;
        }

        .floating-label input,
        .floating-label textarea,
        .floating-label select {
            height: 50px;
        }

        .floating-label label {
            position: absolute;
            top: 50%;
            left: 15px;
            transform: translateY(-50%);
            transition: 0.3s ease;
            pointer-events: none;
            color: #888;
            background: white;
            padding: 0 5px;
        }

        .floating-label input:focus + label,
        .floating-label input:not(:placeholder-shown) + label,
        .floating-label textarea:focus + label,
        .floating-label textarea:not(:placeholder-shown) + label,
        .floating-label select:focus + label {
            top: -8px;
            left: 10px;
            font-size: 13px;
            color: #007bff;
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

    <!-- Toggler Button for Small Screens -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Collapsible Menu -->
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

        <li class="nav-item dropdown ps-1">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
            aria-expanded="false"><b>Hospital Facility</b></a>
          <ul class="dropdown-menu">
            <li class="Hover"><a class="dropdown-item" href="Registration.jsp"><b>Registration</b></a></li>
            <li class="Hover"><a class="dropdown-item" href="Login.jsp"><b>Login</b></a></li>
            <li class="Hover"><a class="dropdown-item" href="AdmitInformation.jsp"><b>Admit Information</b></a></li>
            <li class="Hover"><a class="dropdown-item" href="PatientReview.jsp"><b>Patient Review</b></a></li>
            <li class="Hover"><a class="dropdown-item" href="InsuranceInfo.jsp"><b>Insurance Info</b></a></li>
            <li class="Hover"><a class="dropdown-item" href="HospitalInfo.jsp"><b>Hospital Info</b></a></li>
            <li class="Hover"><a class="dropdown-item" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
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
      <form class="d-flex mt-2 mt-lg-0" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>



	<!--NavBar Section End-->

              


<div class="form-wrapper">
    <h2>Staff Information Form</h2>
    <form method="post" action="StaffConfirm.jsp">
        <div class="row g-4">

            <div class="col-md-6 floating-label">
                <input type="text" name="txt_name" class="form-control" placeholder=" " required>
                <label>Full Name</label>
            </div>

            <div class="col-md-3 floating-label">
                <input type="text" name="txt_age" class="form-control" placeholder=" " required>
                <label>Age</label>
            </div>

            <div class="col-md-3 floating-label">
                <select class="form-control" name="Gender" required>
                    <option value="" disabled selected hidden></option>
                    <option name="Gender" value="Male">Male</option>
                    <option name="Gender" value="Female">Female</option>
                    <option name="Gender" value="Other">Other</option>
                </select>
                <label>Gender</label>
            </div>

            <div class="col-md-6 floating-label">
                <input type="date" name="dob" class="form-control" placeholder=" " required>
                <label>Date of Birth</label>
            </div>

            <div class="col-md-6 floating-label">
                <input type="text" name="txt_mobile" class="form-control" pattern="[0-9]{10}" required>
                <label>Mobile Number</label>
            </div>

            <div class="col-md-6 floating-label">
                <input type="text" name="txt_fname" class="form-control" placeholder=" " required>
                <label>Father's Name</label>
            </div>

            <div class="col-md-6 floating-label">
                <textarea class="form-control" name="ta_address" rows="2" placeholder=" " required></textarea>
                <label>Address</label>
            </div>

            <div class="col-md-6 floating-label">
                <input type="text" name="txt_qualification" class="form-control" placeholder=" " required>
                <label>Qualification</label>
            </div>

            <div class="col-md-6 floating-label">
                <input type="email" name="email" class="form-control" placeholder=" " required>
                <label>Email</label>
            </div>

            <div class="col-md-6 floating-label">
                <input type="text" name="txt_aadhar" class="form-control" placeholder=" " pattern="\d{12}" required>
                <label>Aadhar Number</label>
            </div>

            <div class="col-md-6 floating-label">
                <input type="text" name="txt_salary" class="form-control" placeholder=" " required>
                <label>Salary</label>
            </div>

            <div class="col-md-6 floating-label">
                <input type="date" name="joindate" class="form-control" placeholder=" " required>
                <label>Joining Date</label>
            </div>

            <div class="col-md-6 floating-label">
                <input type="text" name="txt_bank" class="form-control" placeholder=" " required>
                <label>Bank Name</label>
            </div>

            <div class="col-md-6 floating-label">
                <input type="text" name="txt_account" class="form-control" placeholder=" " required>
                <label>Account Number</label>
            </div>

            <div class="col-md-6 floating-label">
                <input type="text" name="txt_ifsc" class="form-control" placeholder=" " required>
                <label>IFSC Code</label>
            </div>
        </div>

        <div class="text-center mt-4">
            <button type="submit" class="btn btn-submit">Submit</button>
        </div>
    </form>
</div>



                                                            <!-- FOOTER SECTION START HERE -->


	                                                               <%@ include file="FooterPage.html"%>


	                                                                 <!-- FOOTER SECTION START HERE -->
                                                          

                                          

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- JavaScript -->
<script>
    document.getElementById('staffForm').addEventListener('submit', function (e) {
        e.preventDefault();
        alert("Staff information submitted successfully!");
        this.reset();
    });
</script>

    
</body>
</html>
