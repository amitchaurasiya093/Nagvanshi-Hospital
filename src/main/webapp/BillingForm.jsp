<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hospital Billing Form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
  
  <style>
    body {
      background: linear-gradient(to right, #74ebd5, #acb6e5);
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      padding: 0; 
      margin: 0;  
    }

    header, .navbar {
      margin: 0; /* Remove margin on header and navbar */
      padding: 0; /* Remove any padding on navbar */
    }

    .container {
      margin-top: 20px; /* Adjust margin-top for the content if needed */
    }

    .billing-card {
      background: #fff;
      padding: 40px;
      border-radius: 25px;
      box-shadow: 0 12px 35px rgba(0, 0, 0, 0.2);
      transition: all 0.4s ease-in-out;
      animation: fadeInDown 1s ease-in-out;
    }

    .billing-card:hover {
      transform: scale(1.01);
      box-shadow: 0 20px 50px rgba(0, 0, 0, 0.25);
    }

    .form-label {
      font-weight: 600;
      color: #333;
    }

    .btn-custom {
      background: linear-gradient(135deg, #007bff, #0056b3);
      color: white;
      font-weight: bold;
      transition: all 0.3s ease;
      border-radius: 30px;
    }

    .btn-custom:hover {
      transform: scale(1.05);
      background: linear-gradient(135deg, #0056b3, #003d82);
    }

    .form-control:focus {
      box-shadow: 0 0 10px rgba(0,123,255,0.5);
      border-color: #007bff;
    }

    .section-header {
      font-size: 1.8rem;
      color: #007bff;
      font-weight: 700;
      margin-bottom: 25px;
      animation: fadeIn 1.2s ease-in-out;
    }

    #upiPayBtn button {
      border-radius: 30px;
      font-weight: bold;
      font-size: 1.1rem;
      transition: 0.3s;
    }

    #upiPayBtn button:hover {
      transform: translateY(-3px);
      box-shadow: 0 10px 20px rgba(0, 128, 0, 0.3);
    }
  </style>

</head>
<body>

  <!-- Header Section Start -->

  <%@ include file="HeaderPage.html"%>

  <!-- Header Section End -->

  <!-- Navbar Section Start -->
  
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
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>Hospital Facility</b></a>
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
  
  <!-- Navbar Section End -->

  <div class="container">
    <div class="billing-card mx-auto col-lg-8 col-md-10">
      <h2 class="text-center section-header"><i class="fas fa-file-invoice-dollar"></i> Hospital Billing Form</h2>
      <form id="billingForm">
        <div class="row g-3">
          <div class="col-md-6">
            <label class="form-label">Patient Name</label>
            <input type="text" class="form-control" placeholder="Enter patient's full name" required>
          </div>
          <div class="col-md-6">
            <label class="form-label">Doctor Name</label>
            <input type="text" class="form-control" placeholder="Enter doctor name" required>
          </div>
          <div class="col-md-6">
            <label class="form-label">Consultation Fee</label>
            <input type="number" id="consultationFee" class="form-control" placeholder="Enter consultation fee" required>
          </div>
          <div class="col-md-6">
            <label class="form-label">Medicine Charges</label>
            <input type="number" id="medicineCharges" class="form-control" placeholder="Enter medicine charges" required>
          </div>
          <div class="col-md-6">
            <label class="form-label">Other Charges</label>
            <input type="number" id="otherCharges" class="form-control" placeholder="Enter other charges" required>
          </div>
          <div class="col-md-6">
            <label class="form-label">Test Charges</label>
            <textarea class="form-control" rows="2" placeholder="e.g. X-Ray, Blood Test" required></textarea>
          </div>
          <div class="col-12">
            <label class="form-label">Total Amount</label>
            <input type="number" id="totalAmount" class="form-control" placeholder="Auto calculated" readonly>
          </div>

          <div class="col-12">
            <label class="form-label">Payment Method</label>
            <select class="form-select" id="paymentMethod" onchange="togglePaymentFields()" required>
              <option selected disabled>Select payment method</option>
              <option value="card">Credit/Debit Card</option>
              <option value="upi">UPI</option>
              <option value="cash">Cash</option>
              <option value="insurance">Insurance</option>
            </select>
          </div>

          <!-- Card Details -->
          <div id="cardDetails" style="display:none;" class="col-12">
            <div class="row g-3">
              <div class="col-md-8">
                <label class="form-label">Card Number</label>
                <input type="text" class="form-control" placeholder="XXXX-XXXX-XXXX-XXXX">
              </div>
              <div class="col-md-2">
                <label class="form-label">Expiry</label>
                <input type="text" class="form-control" placeholder="MM/YY">
              </div>
              <div class="col-md-2">
                <label class="form-label">CVV</label>
                <input type="text" class="form-control" placeholder="CVV">
              </div>
            </div>
          </div>

          <!-- UPI Details -->
          <div id="upiDetails" style="display:none;" class="col-12">
            <label class="form-label">Enter UPI ID</label>
            <input type="text" id="upiId" class="form-control" placeholder="e.g. name@upi">

            <label class="form-label mt-3">Choose UPI App</label>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="upiApp" value="Google Pay" id="gpay">
              <label class="form-check-label" for="gpay">Google Pay</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="upiApp" value="PhonePe" id="phonepe">
              <label class="form-check-label" for="phonepe">PhonePe</label>
            </div>

            <div id="upiPayBtn" class="mt-3" style="display: none;">
              <button type="button" class="btn btn-success w-100" id="payBtn">
                Pay ₹<span id="payAmount">0</span> with <span id="upiAppName">UPI</span>
              </button>
            </div>
          </div>

          <div class="col-12">
            <label class="form-label">Billing Status</label>
            <select class="form-select" required>
              <option selected disabled>Select billing status</option>
              <option>Paid</option>
              <option>Pending</option>
              <option>Partial</option>
            </select>
          </div>

          <div align="center" class="col-12">
            <button type="submit" class="btn btn-custom w-50 mt-4 text-light fw-bold">Generate Bill</button>
          </div>
        </div>
      </form>
    </div>
  </div>

  <%@ include file="FooterPage.html"%>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    function togglePaymentFields() {
      const method = document.getElementById("paymentMethod").value;
      document.getElementById("cardDetails").style.display = method === "card" ? "block" : "none";
      document.getElementById("upiDetails").style.display = method === "upi" ? "block" : "none";
      
      if (method === "upi") {
        document.getElementById("upiPayBtn").style.display = "block";
        document.getElementById("payAmount").textContent = document.getElementById("totalAmount").value;
        document.getElementById("upiAppName").textContent = document.querySelector('input[name="upiApp"]:checked')?.value || "UPI";
      } else {
        document.getElementById("upiPayBtn").style.display = "none";
      }
    }

    // Calculate the total amount
    document.getElementById("billingForm").addEventListener("input", function() {
      const consultationFee = parseFloat(document.getElementById("consultationFee").value) || 0;
      const medicineCharges = parseFloat(document.getElementById("medicineCharges").value) || 0;
      const otherCharges = parseFloat(document.getElementById("otherCharges").value) || 0;
      const totalAmount = consultationFee + medicineCharges + otherCharges;
      document.getElementById("totalAmount").value = totalAmount;
    });
  </script>
</body>
</html>
