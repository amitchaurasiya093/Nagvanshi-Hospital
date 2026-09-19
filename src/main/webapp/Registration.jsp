<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTRATION</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<style>
.Hover:hover {
  background-color: red;
  font-size: 18px;
  border-radius: 10px;
}
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
.container {
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px blue;
}
.container .title {
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before {
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box {
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details {
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input,
.user-details .input-box textarea {
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid,
.custom-textarea:focus {
  border-color: blue;
  box-shadow: 0 0 5px 3px rgba(0, 123, 255, 0.5);
}
form .gender-details .gender-title {
  font-size: 20px;
  font-weight: 500;
}
form .category {
  display: flex;
  width: 80%;
  margin: 14px 0;
  justify-content: space-between;
}
form .category label {
  display: flex;
  align-items: center;
  cursor: pointer;
}
form .category label .dot {
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
#dot-1:checked~.category label .one,
#dot-2:checked~.category label .two,
#dot-3:checked~.category label .three {
  background: #9b59b6;
  border-color: #d9d9d9;
}
form input[type="radio"] {
  display: none;
}
form .button {
  height: 45px;
  margin: 35px 0;
}
form .button input {
  height: 100%;
  width: 30%;
  border-radius: 5px;
  border: none;
  color: #fff;
  font-size: 18px;
  font-weight: 500;
  letter-spacing: 1px;
  cursor: pointer;
  transition: all 0.3s ease;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
form .button input:hover {
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
}
@media(max-width: 584px) {
  .container { max-width: 100%; }
  form .user-details .input-box { width: 100%; }
  form .category { width: 100%; }
  .content form .user-details {
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar { width: 5px; }
}
@media(max-width: 459px) {
  .container .content .category {
    flex-direction: column;
  }
}
.patient { width: 50% !important; }
</style>
</head>
<body>

<%@ include file="HeaderPage.html" %>

<nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
  <div class="container-fluid"><a class="navbar-brand" href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
        <li class="nav-item Hover"><a class="nav-link active" href="HomePage.jsp"><b>Home</b></a></li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="DoctorDetails.jsp"><b>Doctor Details</b></a></li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="BookAppointment.jsp"><b>Book Appointment</b></a></li>
        <li class="nav-item dropdown ps-1">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"><b>Patient Services</b></a>
          <ul class="dropdown-menu">
            <li class="Hover"><a class="dropdown-item" href="Registration.jsp"><b>Registration</b></a></li>
            <li class="Hover"><a class="dropdown-item" href="Login.jsp"><b>Login</b></a></li>
            <li class="Hover"><a class="dropdown-item" href="Prescription.jsp"><b>Patient Prescription</b></a></li>
            <li class="Hover"><a class="dropdown-item" href="LaboratoryReport.jsp"><b>Laboratory Report</b></a></li>
            <li class="Hover"><a class="dropdown-item" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
          </ul>
        </li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="OurServices.jsp"><b>Our Services</b></a></li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Contact.jsp"><b>Contact</b></a></li>
      </ul>
      <form class="d-flex" role="search"><input class="form-control me-2" type="search" placeholder="Search"><button class="btn btn-outline-success" type="submit">Search</button></form>
    </div>
  </div>
</nav>

<div class="container mt-5">
  <div class="title fs-3"><b>Registration</b></div>
  <div class="content">
    <form action="<%=request.getContextPath()%>/RegisterConfirm" method="post" enctype="multipart/form-data">
      <div class="user-details">
        <div class="input-box"><span class="details fw-bold">Full Name</span><input type="text" name="txt_name" placeholder="Enter your Name" required></div>
        <div class="input-box"><span class="details fw-bold">Age</span><input type="text" name="txt_age" placeholder="Enter your Age" required></div>
        <div class="input-box"><span class="details fw-bold">Email</span><input type="email" name="email" placeholder="Enter your Email" required></div>
        <div class="input-box"><span class="details fw-bold">Phone Number</span><input type="text" name="txt_mobile" placeholder="Enter your Number" required></div>
        <div class="input-box"><span class="details fw-bold">Address</span><textarea class="form-control custom-textarea" rows="4" name="ta_address" placeholder="Enter your Address" required></textarea></div>
        <div class="input-box"><span class="details fw-bold">Aadhar</span><input type="text" name="txt_aadhar" placeholder="Enter Your Aadhar" required></div>
        <div class="input-box"><span class="details fw-bold patient">Patient-ID</span><input type="text" name="txt_pid" class="form-control" placeholder="Enter Your ID" required></div>
        
        <!-- 📸 Image Upload -->
        <div class="input-box">
          <span class="details fw-bold">Upload Photo</span>
          <input type="file" name="photo" accept="images/*" onchange="previewImage(event)" required>
          <div id="imagePreview" class="mt-2">
            <img id="preview" src="#" alt="Preview" style="display:none; width: 100px; height: 100px; border-radius: 5px; border: 1px solid #ccc;">
          </div>
        </div>
      </div>

      <div class="gender-details">
        <input type="radio" name="Gender" value="Male" id="dot-1">
        <input type="radio" name="Gender" value="Female" id="dot-2">
        <input type="radio" name="Gender" value="Prefer Not to Say" id="dot-3">
        <span class="gender-title fw-bold">Gender</span>
        <div class="category">
          <label for="dot-1"><span class="dot one"></span><span class="gender fw-bold">Male</span></label>
          <label for="dot-2"><span class="dot two"></span><span class="gender fw-bold">Female</span></label>
          <label for="dot-3"><span class="dot three"></span><span class="gender fw-bold">Prefer not to say</span></label>
        </div>
      </div>

      <div align="center" class="button">
        <input type="submit" value="Register">
      </div>
    </form>
  </div>
</div>

<%@ include file="FooterPage.html" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
  function previewImage(event) {
    const input = event.target;
    const preview = document.getElementById('preview');
    if (input.files && input.files[0]) {
      const reader = new FileReader();
      reader.onload = function (e) {
        preview.src = e.target.result;
        preview.style.display = 'block';
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
</script>
</body>
</html>
