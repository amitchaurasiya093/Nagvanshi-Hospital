<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Doctor Information Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #fdfbfb, #ebedee);
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

        .form-container {
            max-width: 1000px;
            margin: 40px auto;
            background: #ffffff;
            border-radius: 20px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);
            padding: 40px 50px;
            animation: slideIn 1s ease-out;
        }

        @keyframes slideIn {
            from {
                transform: translateY(50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        h2 {
            text-align: center;
            font-weight: 600;
            color: #343a40;
            margin-bottom: 30px;
        }

        .form-label {
            font-weight: 500;
            color: #495057;
        }

        .form-control {
            border-radius: 10px;
            padding: 10px 14px;
            transition: 0.3s;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 6px rgba(0, 123, 255, 0.2);
        }

        .btn-submit {
            background: linear-gradient(to right, #007bff, #00c6ff);
            color: white;
            padding: 12px 30px;
            font-weight: 600;
            border-radius: 30px;
            border: none;
            transition: 0.4s;
        }

        .btn-submit:hover {
            background: linear-gradient(to right, #0056b3, #00aaff);
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


<div class="form-container">
    <h2>Doctor Information Form</h2>
    <form method="post" action="DoctorConfirm.jsp">
        <div class="row g-4">
            <!-- Basic Info -->
            <div class="col-md-6">
                <label class="form-label">Full Name</label>
                <input type="text" name="txt_name" class="form-control" required>
            </div>

            <div class="col-md-3">
                <label class="form-label">Age</label>
                <input type="text" name="txt_age" class="form-control" required>
            </div>

            <div class="col-md-3">
                <label class="form-label">Gender</label>
                <select class="form-control" name="Gender" required>
                    <option value="" disabled selected hidden>Choose...</option>
                    <option name="Gender" value="Male">Male</option>
                    <option name="Gender" value="Female">Female</option>
                    <option name="Gender" value="Other">Other</option>
                </select>
            </div>

            <div class="col-md-6">
                <label class="form-label">Date of Birth</label>
                <input type="date" name="dob" class="form-control" required>
            </div>

            <div class="col-md-6">
                <label class="form-label">Mobile Number</label>
                <input type="text" name="txt_mobile" class="form-control" pattern="[0-9]{10}" required>
            </div>

            <div class="col-md-6">
                <label class="form-label">Father's Name</label>
                <input type="text" name="txt_fname" class="form-control" required>
            </div>

            <div class="col-md-6">
                <label class="form-label">Address</label>
                <textarea class="form-control" name="ta_address" rows="2" required></textarea>
            </div>

            <div class="col-md-6">
                <label class="form-label">Qualification</label>
                <input type="text" name="txt_qualification" class="form-control" required>
            </div>

            <div class="col-md-6">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" required>
            </div>

            <div class="col-md-6">
                <label class="form-label">Aadhar Number</label>
                <input type="text" name="txt_aadhar" class="form-control" pattern="\d{12}" required>
            </div>

            <div class="col-md-6">
                <label class="form-label">Salary</label>
                <input type="text" name="txt_salary" class="form-control" required>
            </div>

            <div class="col-md-4">
                <label class="form-label">Attend Day</label>
                <select name="day" class="form-control" required>
                    <option value="" disabled selected hidden>Choose...</option>
                    <option name="day" value="Monday-Friday">Monday-Friday</option>
                    <option name="day" value="Monday-Saturday">Monday-Saturday</option>
                    <option>Custom</option>
                </select>
            </div>
            
            <div class="col-md-4">
                <label class="form-label">Attend Time</label>

            <div class="d-flex gap-2">
                <input type="time" name="from_time" class="form-control" required>
                <span class="mt-2 fw-bold">to</span>
                <input type="time" name="to_time" class="form-control" required>
            </div>
            </div>

            <div class="col-md-4">
                <label class="form-label">Joining Date</label>
                <input type="date" name="join" class="form-control" required>
            </div>

            <div class="col-md-6">
                <label class="form-label">Bank Name</label>
                <input type="text" name="txt_bank" class="form-control" required>
            </div>

            <div class="col-md-6">
                <label class="form-label">Account Number</label>
                <input type="text" name="txt_account" class="form-control" required>
            </div>

            <div class="col-md-6">
                <label class="form-label">IFSC Code</label>
                <input type="text" name="txt_ifsc" class="form-control" required>
            </div>
            
            <div class="col-md-6">
                <label class="form-label">Doctor Fee</label>
                <input type="number" name="doctor_fee" class="form-control" required>
            </div>
        </div>
        
        <div class="col-md-6">
          <label class="form-label">Department</label>

          <select name="dept_id" class="form-control" required>
          <option value="">Select Department</option>

        <%
            Connection cn = (Connection)application.getAttribute("CONN");
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM departments");

            while(rs.next()) {
        %>
            <option value="<%=rs.getInt("dept_id")%>">
                <%=rs.getString("dept_name")%>
            </option>
        <%
            }
        %>
    </select>
</div>

        <div class="text-center mt-4">
            <button type="submit" class="btn btn-submit">Submit</button>
        </div>
    </form>
</div>



  <!-- FOOTER SECTION START HERE -->

  <%@ include file="FooterPage.html"%>

  <!-- FOOTER SECTION END HERE -->
                                                          


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
