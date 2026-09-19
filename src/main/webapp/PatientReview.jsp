<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Feedback</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
<style>
 body {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    height: 100vh;
    background: linear-gradient(-45deg, #1e3c72, #2a5298, #6dd5ed, #2193b0);
    background-size: 400% 400%;
    animation: gradientAnimation 10s ease infinite;
}


@keyframes gradientAnimation {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}


 .Hover:hover{

    background-color:red;
    font-size:18px;
    border-radius:10px;
}

    .feedback-section {
    max-width: 700px;
    margin: 60px auto;
    background: white;
    border-radius: 15px;
    padding: 40px;
    animation: slideUp 1s ease;
    box-shadow: 0 0 20px rgba(30, 144, 255, 0.6);
}


    .feedback-section h2 {
        text-align: center;
        margin-bottom: 30px;
        color: #130f40;
        font-weight: bold;
    }

    .form-control:focus {
        box-shadow: 0 0 5px #1e90ff;
        border-color: #1e90ff;
    }

    .btn-submit {
        background: #1e90ff;
        color: white;
        border: none;
        transition: 0.4s;
    }

    .btn-submit:hover {
        background: #3742fa;
    }

    .thank-you-msg {
        text-align: center;
        display: none;
        color: green;
        font-size: 18px;
        margin-top: 20px;
        animation: fadeIn 1s ease-in;
    }

    .star-rating {
        direction: rtl;
        display: flex;
        justify-content: center;
        margin-bottom: 20px;
    }

    .star-rating input[type="radio"] {
        display: none;
    }

    .star-rating label {
        font-size: 30px;
        color: #dcdcdc;
        cursor: pointer;
        transition: 0.3s;
    }

    .star-rating input:checked ~ label,
    .star-rating label:hover,
    .star-rating label:hover ~ label {
        color: #f1c40f;
    }

    @keyframes slideUp {
        from {
            transform: translateY(50px);
            opacity: 0;
        }
        to {
            transform: translateY(0px);
            opacity: 1;
        }
    }

    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
</style>
</head>
<body>

<%@ include file="HeaderPage.html" %>



               <nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
        <div class="container-fluid">
    <a class="navbar-brand " href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>
   
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
        <li class="nav-item Hover"><a class="nav-link active" aria-current="page" href="HomePage.jsp"><b>Home</b></a></li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" aria-current="page" href="DoctorDetails.jsp"><b>Doctor Details</b></a></li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="BookAppointment.jsp"><b>Book Appointment</b></a></li>
        <li class="nav-item dropdown ps-1">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>Patient Services</b></a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item Hover" href="Registration.jsp"><b>Registration</b></a></li>
            <li><a class="dropdown-item Hover" href="Login.jsp"><b>Login</b></a></li>
            <li><a class="dropdown-item Hover" href="Prescription.jsp"><b>Prescription</b></a></li>
            <li><a class="dropdown-item Hover" href="LaboratoryReport.jsp"><b>Laboratory Report</b></a></li>
            <li class="Hover"><a class="dropdown-item" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
           
          </ul>
        </li>
        
        <li class="nav-item ps-1 Hover"><a class="nav-link active" aria-current="page" href="OurServices.jsp"><b>Our Services</b></a></li>
         <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Contact.jsp"><b>Contact</b></a></li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
    </nav>





<div class="feedback-section shadow-lg">
    <h2><i class="fas fa-comments fw-bold"></i> Patient Feedback</h2>

    <form onsubmit="submitReview(event)">
        <div class="mb-3">
            <label for="name" class="form-label fw-bold">Full Name</label>
            <input type="text" class="form-control" id="name" required placeholder="Enter your name">
        </div>
        <div class="mb-3">
            <label for="email" class="form-label fw-bold">Email ID</label>
            <input type="email" class="form-control" id="email" required placeholder="Enter your email">
        </div>
        <div class="mb-3">
            <label for="review" class="form-label fw-bold">Your Feedback</label>
            <textarea class="form-control" id="review" rows="5" required placeholder="Write your review..."></textarea>
        </div>

        <!-- ⭐ Star Rating Starts Here -->
        <div class="mb-3 text-center">
            <label class="form-label d-block fw-bold">Your Rating</label>
            <div class="star-rating">
                <input type="radio" id="star5" name="rating" value="5" required><label for="star5">&#9733;</label>
                <input type="radio" id="star4" name="rating" value="4"><label for="star4">&#9733;</label>
                <input type="radio" id="star3" name="rating" value="3"><label for="star3">&#9733;</label>
                <input type="radio" id="star2" name="rating" value="2"><label for="star2">&#9733;</label>
                <input type="radio" id="star1" name="rating" value="1"><label for="star1">&#9733;</label>
            </div>
        </div>
        

        <button type="submit" class="btn btn-submit w-100 btn btn-success">Submit Review</button>
        <div class="thank-you-msg" id="thankYouMsg"><i class="fas fa-check-circle fw-bold"></i> Thank you for your valuable feedback!</div>
    </form>
</div>

<%@ include file="FooterPage.html" %>

<script>
    function submitReview(event) {
        event.preventDefault();

        const rating = document.querySelector('input[name="rating"]:checked');
        if (!rating) {
            alert("Please select a rating.");
            return;
        }

      
        setTimeout(() => {
            document.getElementById("thankYouMsg").style.display = "block";
            document.getElementById("name").value = "";
            document.getElementById("email").value = "";
            document.getElementById("review").value = "";
            document.querySelectorAll('input[name="rating"]').forEach(r => r.checked = false);
        }, 500);
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
