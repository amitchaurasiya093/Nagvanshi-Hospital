<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

<style>

.main-section{

    background-color:#74bcd3;

}

.main-div{

   padding:20px;
   
   border-radius:20px;

}

.image-1 {
	height: 80%;
	width: 90%;
	
}

.heading-1{

    font-size:22px;
    font-family: sans-serif;

}

.heading-2{

    font-size:20px;
    font-family: sans-serif;

}

.Hover:hover{

    background-color:red;
    font-size:18px;
    border-radius:10px;
}

</style>
</head>
<body>

	<!--Header Section Start-->

	<%@ include file="HeaderPage.html"%>

	<!--Header Section End-->

	<!--NavBar Section Start-->

	<nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
		<div class="container-fluid"><a class="navbar-brand" href="#"><b>Nagvanshi Hospital</b></a>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
					<li class="nav-item Hover"><a class="nav-link active" aria-current="page" href="HomePage.jsp"><b>Home</b></a></li>
					<li class="nav-item ps-1 Hover"><a class="nav-link active" aria-current="page" href="DoctorDetails.jsp"><b>Doctor Details</b></a></li>
					<li class="nav-item ps-1 Hover"><a class="nav-link active" href="BookAppointment.jsp"><b>Book Appointment</b></a></li>

					<li class="nav-item dropdown ps-1"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>Patient Services</b></a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item Hover" href="Registration.jsp"><b>Registration</b></a></li>
							<li><a class="dropdown-item Hover" href="Login.jsp"><b>Login</b></a></li>
							<li><a class="dropdown-item Hover" href="Prescription.jsp"><b>Prescription</b></a></li>
							<li><a class="dropdown-item Hover" href="LaboratoryReport.jsp"><b>Laboratory Report</b></a></li>
							<li class="Hover"><a class="dropdown-item" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
							
						</ul></li>

					<li class="nav-item ps-1 Hover"><a class="nav-link active" aria-current="page" href="OurServices.jsp"><b>Our Services</b></a>
					</li>
					<li class="nav-item ps-1 Hover"><a class="nav-link active" href="Contact.jsp"><b>Contact</b></a></li>
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>

	<!--NavBar Section End-->



	<div class="main-section">

		<div class="container main-div">
        
          <div class="item"> 
        
			<div class="row mt-5">

				<div class="col-lg-6 bg-white">
					<img class="img-fluid image-1" src="./images/PM-Health-2.png"
						alt="">
				</div>
				<div class="col-lg-6 bg-white">
					<h4 class="px-5 py-5 heading-1">
						<b>"Pradhan Mantri Swasthya Suraksha Yojana</b><br> is a
							scheme whose aim is to make health <br> facilities equally
							available to all in different <br> parts of the country." <br>
							Under this scheme, the target is to provide <br> facilities
							to improve medical education in the <br> backward states of
							the country. This scheme was approved in March 2006.
						
					</h4>
				</div>

			</div>

			<div class="row two">

				<div class="col-lg-6 bg-white">

					<h4 class="px-5 py-5 heading-2">
						    Under the Pradhan Mantri Jan Arogya Yojana <b>(Ayushman Bharat
							Yojana)</b>, poor and vulnerable families get free treatment. Under
							this scheme, insurance cover of up to Rs 5 lakh is available.
							More than 1300 diseases can be treated through this scheme.<br>
							<b>Benefits of Ayushman Bharat Yojana :</b><br><b> 1.</b> Facility of cashless
							treatment on hospitalization<br> <b>2.</b> Includes expenses before and after
							hospitalization <br> <b>3.</b> No waiting period for pre-existing diseases<br>

							<b>4.</b> Facility of cashless treatment on admission in hospitals
							associated with the scheme<br> <b>5.</b> Treatment of diseases like cardiology,
							neurosurgery, oncology, pediatrics, orthopedics etc.
					</h4>

				</div>
				<div class="col-lg-6 bg-white">

					<img class="img-fluid image-1" src="./images/PM-Health.png" alt="">

				</div>

			</div>
			
			<div class="row mb-5">

				<div class="col-lg-6 bg-white">
					
					<img class="img-fluid image-1" src="./images/PM-Health-3.png" alt="">
					
				</div>
				<div class="col-lg-6 bg-white">
					
					<h4 class="px-5 py-5 heading-1">
						   "Pradhan Mantri Swasthya Suraksha Yojana<br> is a
							scheme whose aim is to make health <br> facilities equally
							available to all in different <br> parts of the country." <br>
							Under this scheme, the target is to provide <br> facilities
							to improve medical education in the <br> backward states of
							the country. This scheme was approved in March 2006.
						
					</h4>
					
				</div>

			</div>
			
			</div>

		</div>

	</div>


	<!-- Footer Section Start Here -->

	<%@ include file="FooterPage.html"%>

	<!-- Footer Section End Here -->
	
	
	<script>
	
	 (function(w, d) {
			w.CollectId = "67b2d5451f59b1cbec8a9dde";
			var h = d.head || d.getElementsByTagName("head")[0];
			var s = d.createElement("script");
			s.setAttribute("type", "text/javascript");
			s.async = true;
			s.setAttribute("src", "https://collectcdn.com/launcher.js");
			h.appendChild(s);
		})(window, document);

	
	</script>

   
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>