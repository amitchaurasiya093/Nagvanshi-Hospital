<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*,jakarta.servlet.*" %>

<%
    
      HttpSession session1 = request.getSession(false);
      String email = (session1 != null) ? (String) session1.getAttribute("email") : null;

      String name = "";
      String mobile = "";
      String address = "";
      String profileImagePath = "images/default_profile.png"; // default image
      String userName = "";

      if (email != null && !email.trim().isEmpty()) 
        {
        
    	    String dbUrl = "jdbc:mysql://localhost:3306/nagvanshi_hospital";
            String dbUser = "root";
            String dbPass = "boot";

            try (Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/nagvanshi_hospital?autoReconnect=true&useSSL=false", "root", "boot");
                PreparedStatement pst = conn.prepareStatement("SELECT name, mobile, address, image_url FROM registration WHERE email = ?")) 
              {
            
                 	Class.forName("com.mysql.cj.jdbc.Driver");
                    pst.setString(1, email);
                    ResultSet rs = pst.executeQuery();

                    if (rs.next()) 
                      {
                
                    	   name = rs.getString("name");
                           mobile = rs.getString("mobile");
                           address = rs.getString("address");
                           String imgPath = rs.getString("image_url");
                 
                           if (imgPath != null && !imgPath.trim().isEmpty()) 
                             {
                    
                        	      profileImagePath = imgPath;
                
                             }
                
                             userName = name;
            
                      }
            
                      rs.close();
        
              }
            catch (Exception e) 
              {
            
            	   e.printStackTrace();
        
              }
    
        }
      else 
        {
        
    	     userName = "Guest User";
    
        }

%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard || Nagvanshi Hospital</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        html, body { height: 100%; background-color: #f1f4f9; }
        .Hover:hover { background-color: red; font-size: 18px; border-radius: 10px; }
        #welcomeMessage { display: none; font-size: 24px; font-weight: bold; color: #0066cc; text-align: center; margin-top: 30px; }
        .profile-card { background: #ffffff; border-radius: 15px; padding: 30px; box-shadow: 0px 5px 15px rgba(0,0,0,0.1); }
        .section-card { background: #ffffff; border-radius: 15px; padding: 20px; box-shadow: 0px 3px 8px rgba(0,0,0,0.05); transition: transform 0.3s; }
        .section-card:hover { transform: translateY(-5px); }
        .profile-image { width: 150px; height: 150px; border-radius: 15%; object-fit: cover; margin-bottom: 15px; border-left: 5px solid red; border-bottom: 3px solid blue; }
    </style>
</head>
<body>
    
    <div class="d-flex flex-column min-vh-100">
        
        <%@ include file="HeaderPage.html" %>

        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
            
            <div class="container-fluid">
                
                <a class="navbar-brand" href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>
                
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
                        
                        <li class="nav-item Hover"><a class="nav-link active" href="HomePage.jsp"><b>Home</b></a></li>
                        
                        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="DoctorDetails.jsp"><b>Doctor Details</b></a></li>
                        
                        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="BookAppointment.jsp"><b>Book Appointment</b></a></li>
                        
                        <li class="nav-item dropdown ps-1">
                            
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"><b>Hospital Facility</b></a>
                            
                            <ul class="dropdown-menu">
                                
                                <li class="Hover"><a class="dropdown-item" href="AdmitInformation.jsp"><b>Admit Information</b></a></li>
                              
                                <li class="Hover"><a class="dropdown-item" href="SpecializedDoctors.html"><b>Specialized Doctors</b></a></li>
                                
                                <li class="Hover"><a class="dropdown-item" href="InsuranceInfo.jsp"><b>Insurance Info</b></a></li>
                                
                                <li class="Hover"><a class="dropdown-item" href="HospitalInfo.jsp"><b>Hospital Info</b></a></li>
                                
                                <li class="Hover"><a class="dropdown-item" href="Gallery.html"><b>Gallery</b></a></li>
                                
                                <li class="Hover"><a class="dropdown-item" href="PatientReview.jsp"><b>Patient Review</b></a></li>
                                
                                <li class="Hover"><a class="dropdown-item" href="Announcements.jsp"><b></b>Announcements</a></li>
                                
                                <li class="Hover"><a class="dropdown-item" href="Notice.jsp"><b>Notice</b></a></li>
                            
                            </ul>
                        
                        </li>
                        
                        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="OurServices.jsp"><b>Our Services</b></a></li>
                        
                        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Contact.jsp"><b>Contact Us</b></a></li>
                    
                    </ul>
                    
                    <form class="d-flex" role="search">
                 
                        <a href="HomePage.jsp" class="btn btn-danger">Logout</a>
                    
                    </form>
                
                </div>
            
            </div>
        
        </nav>

        <!-- Main Content -->
        <main class="flex-fill">
            
            <div id="welcomeMessage"></div>
            
            <div class="container py-4">
             
                <div class="row mt-3">
                    <!-- Profile Info -->
                    <div class="col-md-4">
             
                        <div class="profile-card text-center">
             
                            <img src="<%= profileImagePath %>" alt="Profile Image" class="profile-image" />
             
                            <h4><%= name != null && !name.isEmpty() ? name : "Name not found" %></h4>
             
                            <p class="text-muted">Email: <%= email != null ? email : "N/A" %></p>
             
                            <p>Phone: <%= mobile != null && !mobile.isEmpty() ? mobile : "+91 9876543210" %></p>
             
                            <p>Address: <%= address != null && !address.isEmpty() ? address : "Ayodhya, India" %></p>
             
                            <a href="EditProfile.jsp" class="btn btn-outline-primary btn-sm mt-2">Edit Profile</a>
             
                        </div>
             
                    </div>

                    <!-- Dashboard Cards -->
                    <div class="col-md-8">
             
                        <div class="row g-3">
             
                            <div class="col-md-6">
             
                                <div class="section-card">
             
                                    <h5>📅 My Appointments</h5>
             
                                    <p>Check or book your appointments easily.</p>
             
                                    <a href="BookAppointment.jsp" class="btn btn-primary btn-sm">View Appointments</a>
             
                                </div>
             
                            </div>
             
                            <div class="col-md-6">
             
                                <div class="section-card">
             
                                    <h5>💊 Medical History</h5>
             
                                    <p>Access all your prescription records.</p>
             
                                    <a href="Prescription.jsp" class="btn btn-primary btn-sm">View History</a>
             
                                </div>
             
                            </div>
             
                            <div class="col-md-6">
             
                                <div class="section-card">
             
                                    <h5>💳 Billing Details</h5>
             
                                    <p>View bills and payment history.</p>
             
                                    <a href="BillingForm.jsp" class="btn btn-primary btn-sm">Check Bills</a>
             
                                </div>
             
                            </div>
             
                            <div class="col-md-6">
             
                                <div class="section-card">
             
                                    <h5>🏥 Our Services</h5>
             
                                    <p>Know about available facilities.</p>
             
                                    <a href="OurServices.jsp" class="btn btn-primary btn-sm">Explore Services</a>
             
                                </div>
             
                            </div>
             
                        </div>
             
                    </div>
             
                </div>


                <div class="my-4 text-center">

                    <a href="LogoutServlet"><button class="btn btn-danger"><b>Logout</b></button></a>

                </div>

            </div>

        </main>

        <%@ include file="FooterPage.html" %>

    </div>

    <script>
        $(document).ready(function () {
            let userName = "<%= userName %>";
            if (userName && userName.trim() !== "") {
                let message = "Welcome " + userName + " in Nagvanshi Hospital Site";
                $("#welcomeMessage").text(message).fadeIn(2000);
            } else {
                $("#welcomeMessage").text("Welcome to User Panel").fadeIn(2000);
            }
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
