<%@page import="jakarta.mail.PasswordAuthentication"%>
<%@page import="jakarta.mail.Authenticator"%>
<%@page import="jakarta.mail.Session"%>
<%@ page import="java.sql.CallableStatement" %>
<%@ page import="java.sql.Connection" %>

<%@ page import="java.sql.*,jakarta.mail.*,jakarta.mail.internet.*,java.util.Properties" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Appointment Confirmation</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background: linear-gradient(to right, #e0f7fa, #ffffff);
      font-family: 'Segoe UI', sans-serif;
    }
    
       .Hover:hover{

       background-color:red;
       font-size:18px;
       border-radius:10px;
}

    .confirmation-card {
      background: white;
      padding: 40px;
      border-radius: 15px;
      box-shadow: 0 0 15px rgba(0, 128, 0, 0.2);
      animation: fadeIn 1s ease-in-out;
    }

    .checkmark {
      font-size: 60px;
      color: green;
      animation: bounce 1s infinite alternate;
    }

    .hospital-logo {
      width: 150px;
      height: auto;
      border-radius:50%;
    }

    .hospital-name {
      font-size: 32px;
      font-weight: bold;
      color: #2e7d32;
      margin-top: 20px;
    }

    .thankyou {
      font-size: 24px;
      font-weight: bold;
      color: #2e7d32;
      margin-top: 20px;
    }

    .slogan {
      font-style: italic;
      color: #00796b;
      margin-top: 30px;
      font-size: 18px;
    }

    @keyframes bounce {
      from { transform: translateY(0px); }
      to { transform: translateY(-10px); }
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: scale(0.9); }
      to { opacity: 1; transform: scale(1); }
    }
  </style>
</head>
<body>

<!-- Header Start -->

<%@ include file="HeaderPage.html" %>

<!-- Header End -->

<!-- Navbar Code Start -->

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

<!-- Navbar Code Start -->

<!-- Java Code Start -->

<%@ page import="java.sql.*,java.net.*,java.io.*" %>


<%
    String name = request.getParameter("txt_name");
    String age = request.getParameter("txt_age");
    String gender = request.getParameter("Gender");
    String mobile = request.getParameter("txt_mobile");
    
    String address = request.getParameter("ta_address");
    String dname = request.getParameter("cmb_dname");
    String date = request.getParameter("txt_date");
    String time = request.getParameter("cmb_time");
    String day = request.getParameter("cmd_dday");
    String email = request.getParameter("email");
    String doctor_fee = request.getParameter("doctor_fee");
    String patient_id = (String)session.getAttribute("patient_id");

    Connection cn = (Connection) application.getAttribute("CONN");

    CallableStatement stmt = cn.prepareCall("{call appointment(?,?,?,?,?,?,?,?,?,?,?)}");

    stmt.setString(1, name);
    stmt.setString(2, age);
    stmt.setString(3, gender);
    stmt.setString(4, mobile);
    stmt.setString(5, address);
    stmt.setString(6, dname);
    stmt.setString(7, date);
    stmt.setString(8, time);
    stmt.setString(9, email);
    stmt.setString(10, day);
    stmt.setString(11, doctor_fee);
    
    
    

    int result = stmt.executeUpdate();

    if(result > 0) {

        
        final String senderEmail = "nagvanshihospital@gmail.com";
        final String senderPassword = "pozrzewjrwazpgzy";

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session mailSession = Session.getInstance(props, new Authenticator()
          {
              protected PasswordAuthentication getPasswordAuthentication() 
                {
                
            	     return new PasswordAuthentication(senderEmail, senderPassword);
                
                }
          });

        try {
            Message message = new MimeMessage(mailSession);

            message.setFrom(new InternetAddress(senderEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));

            message.setSubject("Appointment Confirmation - Nagvanshi Hospital");

            //Email Body
            String msgText = "Hello " + name + ",\n\n"
                    + "Your appointment has been successfully booked.\n\n"
                    + "📋 Appointment Details:\n"
                    + "-----------------------------------\n"
                    + "👨‍⚕️ Doctor Name : " + dname + "\n"
                    + "📅 Date         : " + date + "\n"
                    + "⏰ Time         : " + time + "\n"
                    + "📱 Mobile       : " + mobile + "\n"
                    + "-----------------------------------\n\n"
                    + "Please reach the hospital 10 minutes before your scheduled time.\n\n"
                    + "Thank you for choosing Nagvanshi Hospital.\n"
                    + "🏥 Team Nagvanshi Hospital";

            message.setText(msgText);

            Transport.send(message);

        } catch (MessagingException e) 
            {
            
        	    e.printStackTrace();
                out.println("<h3 style='color:green;'>Appointment Booked Successfully!</h3>");
                out.println("<p style='color:red;'>❌ Email Failed: " + e.getMessage() + "</p>");
           
            }

    } else 
       {
       
    	    out.println("<h3 style='color:red;'>❌ Appointment Failed!</h3>");
    
       }
%>
<!-- Java Code End -->

<div class="container mt-5">

  <div class="confirmation-card text-center">

     <img src="./images/Nagvanshi-Logo.png" alt="Hospital Logo" class="img-fluid hospital-logo">
     <div class="hospital-name">Nagvanshi Hospital</div>

     <div class="checkmark">✔</div>
     <h2 class="mt-3 text-success">Appointment Booked Successfully!</h2>
    
     <p class="mt-4"><strong>Doctor:</strong> <%= dname %></p>
     <p><strong>Appointment Day:</strong> <%= date %></p>
     <p><strong>Appointment Time:</strong> <%= time %></p>

     <div class="thankyou">Thank you for trusting Nagvanshi Hospital!</div>
     <div class="slogan mt-4">"Your Health is Our First Priority – Stay Strong, Live Long!"</div>
  
  </div>

</div>

<div class="my-3" align="center"><a href="Userview.jsp"><button class="btn btn-success"><b>Back Profile</b></button></a></div>

   <!-- Footer Code Start -->

   <%@ include file="FooterPage.html" %>

    <!-- Footer Code End -->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
