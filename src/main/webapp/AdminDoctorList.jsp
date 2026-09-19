<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin||Doctor List</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.3.6/css/buttons.bootstrap5.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="Custom-CSS.css">
    
<style>
        
 body {
            
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(120deg, #f6f9fc, #e9eff5);
        
 }

</style>
</head>
<body>
          <!-- Header Code Start -->

          <%@ include file="HeaderPage.html" %>
          
          <!-- Header Code End -->


         <!--NavBar Section Start-->

	<nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
  
       <div class="container-fluid">
    
          <a class="navbar-brand" href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>

             <div class="collapse navbar-collapse" id="navbarSupportedContent">
      
                 <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
        
                    <li class="nav-item Hover"><a class="nav-link active" aria-current="page" href="HomePage.jsp"><b>Home</b></a></li>
        
                    <li class="nav-item ps-1 Hover"><a class="nav-link active" aria-current="page" href="DoctorDetails.jsp"><b>Doctor Details</b></a></li>
        
                    <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Gallery.html"><b>Gallery</b></a></li>

                    <li class="nav-item dropdown ps-1"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>Hospital Facality</b></a>
          
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

                   <li class="nav-item ps-1 Hover"><a class="nav-link active" aria-current="page" href="OurServices.jsp"><b>Our Services</b></a></li>
        
                   <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Contact.jsp"><b>Contact Us</b></a></li>
        
               </ul>

               <form class="d-flex" role="search">
       
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          
                  <button class="btn btn-outline-success" type="submit">Search</button>
        
               </form>
      
          </div>
    
    </div>

</nav>

	<!--NavBar Section End-->

    <!--Doctor Information Code Start-->

    <div class="container">
    
        <h2 class="text-center">Doctor Information List</h2>

            <table id="doctorTable" class="table table-striped table-bordered" style="width:100%">
        
                <thead class="table-dark">
        
                    <tr>
            
                       <th class="text-center">ID</th>
                       <th class="text-center">Doctor Name</th>
                       <th class="text-center">Age</th>
                       <th class="text-center">Gender</th>
                       <th class="text-center">Phone</th>
                       <th class="text-center">Father's Name</th>
                       <th class="text-center">Qualification</th>
                       <th class="text-center">Address</th>
                       <th class="text-center">Day</th>
                       <th class="text-center">From Time</th>
                       <th class="text-center">To Time</th>
                       <th class="text-center">Actions</th>
         
                     </tr>
        
                 </thead>
        
                 <tbody>
        
                 <%
            
                     try
                       {
                
                    	      Class.forName("com.mysql.cj.jdbc.Driver");
                
                    	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nagvanshi_hospital", "root", "boot");
                
                    	      Statement stmt = con.createStatement();
                
                    	      ResultSet rs = stmt.executeQuery("SELECT * FROM doctor_info");

                    	      while(rs.next()) 
                    	         {
        
                 %>
        
                 <tr>
            
                      <td><%= rs.getInt("doctor_id") %></td>
                      <td><%= rs.getString("name") %></td>
                      <td><%= rs.getString("age") %></td>
                      <td><%= rs.getString("gender") %></td>
                      <td><%= rs.getString("mobile") %></td>
                      <td><%= rs.getString("father_name") %></td>
                      <td><%= rs.getString("qualification") %></td>
                      <td><%= rs.getString("address") %></td>
                      <td><%= rs.getString("attend_day") %></td>
                      <td><%= rs.getString("from_time") %></td>
                      <td><%= rs.getString("to_time") %></td>
            
                 <td>
                
                     <button class="btn btn-sm btn-outline-primary">Edit</button>
                     <button class="btn btn-sm btn-outline-danger">Delete</button>
            
                 </td>
        
             </tr>
        
             <%
             
                    	         }
                
                    	      con.close();
            
                       }
                 catch(Exception e) 
                   {
                
                	     out.println("<tr><td colspan='11'>Database Error: " + e.getMessage() + "</td></tr>");
            
                   }
        
             %>
        
        </tbody>
    
    </table>

</div>

 <!--Doctor Information Code End-->

<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.bootstrap5.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.html5.min.js"></script>




  <!-- FOOTER SECTION START HERE -->

  <%@ include file="FooterPage.html"%>

  <!-- FOOTER SECTION START HERE -->



<script>
    
    $(document).ready(function () 
    		{
        
    	        $('#doctorTable').DataTable
    	           ({
            
    	        	     dom: 'Bfrtip',
            
    	        	     buttons: [
                
    	        	    	 {
                    
    	        	    		   extend: 'excelHtml5',
                    
    	        	    		   title: 'Doctor_List',
                    
    	        	    		   text: 'Download Excel',
                    
    	        	    		   className: 'btn btn-success mb-2'
                
    	        	    	 },
                
    	        	    	 {
                    
    	        	    		   extend: 'pdfHtml5',
                    
    	        	    		   title: 'Doctor_List',
                    
    	        	    		   text: 'Download PDF',
                    
    	        	    		   className: 'btn btn-danger mb-2',
                    
    	        	    		   orientation: 'landscape',
                    
    	        	    		   pageSize: 'A4'
                
    	        	    	 }
            
    	        	    	 ]
        
    	           });
    
    		});
</script>

</body>
</html>