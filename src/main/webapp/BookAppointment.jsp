<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Appointment</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="Custom-CSS.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
<style>
body {
    background: linear-gradient(135deg, #74ebd5, #ACB6E5);
    font-family: 'Segoe UI', sans-serif;
}

.appointment-form {
    max-width: 900px;
    margin: 50px auto;
    background: rgba(255, 255, 255, 0.95);
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.2);
}

.appointment-form h3 {
    font-weight: 700;
    letter-spacing: 1px;
}

.form-control, .form-select {
    border-radius: 10px;
    padding: 10px;
    border: 1px solid #ccc;
    transition: 0.3s;
}

.form-control:focus, .form-select:focus {
    border-color: #0d6efd;
    box-shadow: 0 0 8px rgba(13,110,253,0.4);
}

label {
    margin-bottom: 5px;
    font-weight: 600;
    color: #333;
}

.btn-custom {
    background: linear-gradient(45deg, #28a745, #20c997);
    border: none;
    color: white;
    transition: 0.3s;
}

.btn-custom:hover {
    transform: scale(1.05);
    background: linear-gradient(45deg, #20c997, #28a745);
}
</style>

</head>
<body>

<%@ include file="HeaderPage.html" %>

<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg m-2 rounded-4 bg-primary" data-bs-theme="dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
                <li class="nav-item Hover"><a class="nav-link active" href="HomePage.jsp"><b>Home</b></a></li>
                <li class="nav-item Hover"><a class="nav-link active" href="DoctorDetails.jsp"><b>Doctor Details</b></a></li>
                <li class="nav-item Hover"><a class="nav-link active" href="BookAppointment.jsp"><b>Book Appointment</b></a></li>
                <li class="nav-item dropdown Hover">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Patient Services</a>
                    <ul class="dropdown-menu">
                        <li class="Hover"><a class="dropdown-item" href="Login.jsp"><b>Login</b></a></li>
                        <li class="Hover"><a class="dropdown-item" href="Registration.jsp"><b>Registration</b></a></li>
                        <li class="Hover"><a class="dropdown-item" href="LaboratoryReport.jsp"><b>Laboratory Report</b></a></li>
                        <li class="Hover"><a class="dropdown-item" href="Prescription.jsp"><b>Patient Prescription</b></a></li>
                        <li class="Hover"><a class="dropdown-item" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
                    </ul>
                </li>
                <li class="nav-item Hover"><a class="nav-link active" href="OurServices.jsp"><b>Our Services</b></a></li>
                <li class="nav-item Hover"><a class="nav-link active" href="Contact.jsp"><b>Contact</b></a></li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<!-- Navbar End -->

<!-- Book Appointment Form Start -->
<div class="container appointment-form">
    <h3 class="text-center text-white bg-danger py-3 rounded-3">
        🏥 BOOK APPOINTMENT
    </h3>


<%
Connection cn = (Connection)application.getAttribute("CONN");
%>

<form method="post" action="AppointmentConfirm.jsp">
<div class="row g-4 mt-2">

<!-- NAME -->
<div class="col-md-6">
    <label>Full Name</label>
    <input type="text" class="form-control" name="txt_name"
    value="<%=session.getAttribute("name")%>">
</div>

<!-- AGE -->
<div class="col-md-6">
    <label>Age</label>
    <input type="number" class="form-control" name="txt_age"
    value="<%=session.getAttribute("age")%>">
</div>

<!-- GENDER -->
<div class="col-md-6">
<label>Gender</label><br>

<%
String gender = (String)session.getAttribute("gender");
%>

<input type="radio" name="Gender" value="Male"
<%= "Male".equals(gender)?"checked":"" %>> Male

<input type="radio" name="Gender" value="Female"
<%= "Female".equals(gender)?"checked":"" %>> Female
</div>

<!-- MOBILE -->
<div class="col-md-6">
    <label>Mobile</label>
    <input type="text" class="form-control" name="txt_mobile"
    value="<%=session.getAttribute("mobile")%>">
</div>

<!-- EMAIL -->
<div class="col-md-6">
    <label>Email</label>
    <input type="email" class="form-control" name="email" value="<%=session.getAttribute("email")%>">
</div>

<!-- ADDRESS -->
<div class="col-md-6">
    <label>Address</label>
    <textarea class="form-control" name="ta_address">
        <%=session.getAttribute("address")%>
    </textarea>
</div>

<div class="col-md-6">
    <label>Department</label>

    <select id="dept" name="dept_id" class="form-select" onchange="loadDoctors()" required>
        <option value="">Select Department</option>

        <%
        
        Statement st = cn.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM departments");

        while(rs.next()){
        	
        %>
            <option value="<%=rs.getInt("dept_id")%>">
                <%=rs.getString("dept_name")%>
            </option>
            
        <% } %>

    </select>
</div>

<div class="col-md-4">
<label>Doctor Name</label>
<select id="doctor" name="cmb_dname" class="form-select" onchange="loadDoctorDetails()" required>
    <option value="">Select Doctor</option>
</select>
</div>

<div class="col-md-6">
    <label>Doctor Day</label>

    <select id="day" name="cmb_dday" class="form-select" required>
        <option value="">Select Day</option>
    </select>
</div>

<div class="col-md-6">
    <label>Doctor Time</label>

    <select id="time" name="cmb_time" class="form-select" required>
        <option value="">Select Time</option>
    </select>
</div>

<div class="col-md-3">
    <label>Date</label>
    <input type="date" name="txt_date" class="form-control" required>
</div>

<div class="col-md-3 d-flex align-items-end gap-2">
    
    <div style="flex:1;">
        <label class="form-label">Doctor Fee</label>
        <input type="number" name="doctor_fee" id="doctor_fee" class="form-control" readonly>
    </div>

    
    <button type="button" id="payBtn" class="btn btn-primary" onclick="payNow()">Pay</button>

</div>

</div>

<input type="hidden" name="patient_id" value="<%=session.getAttribute("patient_id")%>">

<div class="text-center mt-4">
    <button type="submit" class="btn btn-success px-5 py-2 rounded-pill fw-bold">
        ✔ Book Appointment
    </button>
</div>
</form>
</div>

<!-- Book Appointment Form End -->






<%@ include file="FooterPage.html" %>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>
  $(function() {
    $("#datepicker").datepicker({
      showAnim: "fadeIn",
      dateFormat: "yy-mm-dd",
      changeMonth: true,
      changeYear: true,
      showOtherMonths: true,
      selectOtherMonths: true
    });
  });
  
  
 
  function loadDoctors() {

	    let dept_id = document.getElementById("dept").value;

	    if(dept_id === ""){
	        document.getElementById("doctor").innerHTML =
	            "<option value=''>Select Doctor</option>";
	        return;
	    }

	    let xhr = new XMLHttpRequest();

	    xhr.open("GET", "<%=request.getContextPath()%>/GetDoctor?dept_id=" + dept_id, true);

	    xhr.onload = function() {
	        if (xhr.status === 200) {
	            document.getElementById("doctor").innerHTML = xhr.responseText;
	        } else {
	            console.log("Status:", xhr.status);
	            alert("Error loading doctors");
	        }
	    };

	    xhr.onerror = function() {
	        alert("Server not reachable!");
	    };

	    xhr.send();
	}
  
  function loadDoctorDetails(){

	    let doctorName = document.getElementById("doctor").value;

	    if(doctorName === ""){
	        document.getElementById("day").innerHTML = "<option>Select Day</option>";
	        document.getElementById("time").innerHTML = "<option>Select Time</option>";
	        
	        
	        document.querySelector("input[name='doctor_fee']").value = "";

	        
	        document.getElementById("payBtn").style.display = "none";

	        return;
	    }

	    let xhr = new XMLHttpRequest();
	    xhr.open("GET", "<%=request.getContextPath()%>/GetDoctorDetails?name=" + doctorName, true);

	    xhr.onload = function(){
	        if(xhr.status === 200){
	            let data = JSON.parse(xhr.responseText);

	            
	            document.getElementById("day").innerHTML =
	                "<option>"+data.day+"</option>";

	            
	            document.getElementById("time").innerHTML =
	                "<option>"+data.from_time+" - "+data.to_time+"</option>";

	            
	            let fee = parseInt(data.fee);
	            document.querySelector("input[name='doctor_fee']").value = fee;

	            
	            let total = fee;

	            let btn = document.getElementById("payBtn");
	            btn.innerText = "Pay + " + total;
	            btn.style.display = "inline-block";

	        }
	        else{
	            alert("Error loading doctor details");
	        }
	    };

	    xhr.send();
	}  
  

  
  </script>
  
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<script>
async function payNow() {

    console.log("Pay button clicked");

    try {
        // ✅ API call
        let res = await fetch("<%=request.getContextPath()%>/CreateOrderServlet", {
            method: "POST"
        });

        // ❌ अगर servlet नहीं मिला (404 आदि)
        if (!res.ok) {
            throw new Error("Server error: " + res.status);
        }

        // ✅ response text पहले लो (debug friendly)
        let text = await res.text();
        console.log("Server Response:", text);

        let order;
        try {
            order = JSON.parse(text); // safe parse
        } catch (e) {
            throw new Error("Invalid JSON response (check servlet)");
        }

        // ❌ Razorpay loaded है या नहीं
        if (typeof Razorpay === "undefined") {
            alert("Razorpay SDK not loaded!");
            return;
        }

        // ✅ Payment options
        var options = {
            key: "rzp_test_SkxNrkCOBZ5mDy",
            amount: order.amount,
            currency: "INR",
            name: "Nagvanshi Hospital",
            description: "Hospital Payment",
            order_id: order.id,

            handler: function (response) {

                console.log("Payment Response:", response);

                fetch("<%=request.getContextPath()%>/VerifyPaymentServlet", {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/x-www-form-urlencoded"
                    },
                    body:
                        "razorpay_order_id=" + response.razorpay_order_id +
                        "&razorpay_payment_id=" + response.razorpay_payment_id +
                        "&razorpay_signature=" + response.razorpay_signature
                })
                .then(res => res.text())
                .then(data => {
                    alert("Payment Status: " + data);
                })
                .catch(err => {
                    console.error("Verification Error:", err);
                });
            },

            prefill: {
                name: "Patient Name",
                email: "test@gmail.com",
                contact: "9999999999"
            },

            theme: {
                color: "#3399cc"
            }
        };

        // ✅ Open Razorpay
        var rzp = new Razorpay(options);
        rzp.open();

    } catch (err) {
        console.error("Error:", err);
        alert("Error: " + err.message);
    }
}
</script>
</body>
</html>
