<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Today Book Appointment</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css"/>
  <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.3.6/css/buttons.dataTables.min.css"/>

  <style>
    * {
      margin: 0px;
      padding: 0px;
      box-sizing: border-box;
    }
    html, body {
      height: 100%;
      width: 100%;
    }
    .Hover:hover {
      background-color: red;
      font-size: 18px;
      border-radius: 10px;
    }
    div.dataTables_filter {
      margin-bottom: 5px;
    }
  </style>

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/2.3.6/js/dataTables.buttons.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
  <script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.html5.min.js"></script>
</head>
<body>

<%@ include file="HeaderPage.html" %>

<nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4" data-bs-theme="dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
        <li class="nav-item Hover"><a class="nav-link active" href="HomePage.jsp"><b>Home</b></a></li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="PatientRecord.jsp"><b>Patient Record</b></a></li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Prescription.jsp"><b>Prescription</b></a></li>
        <li class="nav-item dropdown ps-1">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"><b>Hospital Facility</b></a>
          <ul class="dropdown-menu">
            <li class="Hover bg-success"><a class="dropdown-item" href="Admit.jsp"><b>Admit Information</b></a></li>
            <li class="Hover bg-success"><a class="dropdown-item" href="Insurance.jsp"><b>Insurance Info</b></a></li>
            <li class="Hover bg-success"><a class="dropdown-item" href="BillingForm.jsp"><b>Generate Bill</b></a></li>
            <li class="Hover bg-success"><a class="dropdown-item" href="Staff-Info.jsp"><b>Register New Staff</b></a></li>
			<li class="Hover bg-success"><a class="dropdown-item" href="Doctor_info.jsp"><b>Register New Doctor</b></a></li>
            <li class="Hover bg-success"><a class="dropdown-item" href="Prescription.jsp"><b>Hospital Info</b></a></li>
            <li class="Hover bg-success"><a class="dropdown-item" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
          </ul>
        </li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="LaboratoryReport.jsp"><b>Laboratory Report</b></a></li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Staff.jsp"><b>Staff Management</b></a></li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

<div class="container mt-5">
  <h2 class="text-primary text-center" style="text-shadow: 1px 1px 2px black, 0 0 15px white, 0 0 5px black;"><b>TODAY'S BOOK APPOINTMENT</b></h2>
  <div class="table-responsive">
    <table id="patientTable" class="display nowrap table table-bordered" style="width:100%">
      <thead class="bg-primary text-light">
        <tr>
          <th class="bg-primary text-light text-center">ID</th>
          <th class="bg-primary text-light text-center">Patient Name</th>
          <th class="bg-primary text-light text-center">Age</th>
          <th class="bg-primary text-light text-center">Gender</th>
          <th class="bg-primary text-light text-center">Phone</th>
          <th class="bg-primary text-light text-center">Address</th>
          <th class="bg-primary text-light text-center">Doctor Name</th>
          <th class="bg-primary text-light text-center">Date</th>
          <th class="bg-primary text-light text-center">Time</th>
        </tr>
      </thead>
      <tbody>
      <%
        try {
          Class.forName("com.mysql.cj.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nagvanshi_hospital", "root", "boot");
          Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("SELECT * FROM book_appointment WHERE DATE(date) = CURDATE()");

          while(rs.next()) {
      %>
      <tr>
        <td class="text-center fw-bold"><%= rs.getInt("id") %></td>
        <td class="text-center fw-bold"><%= rs.getString("name") %></td>
        <td class="text-center fw-bold"><%= rs.getString("age") %></td>
        <td class="text-center fw-bold"><%= rs.getString("gender") %></td>
        <td class="text-center fw-bold"><%= rs.getString("mobile_no") %></td>
        <td class="text-center fw-bold"><%= rs.getString("address") %></td>
        <td class="text-center fw-bold"><%= rs.getString("dname") %></td>
        <td class="text-center fw-bold"><%= rs.getString("date") %></td>
        <td class="text-center fw-bold"><%= rs.getString("time") %></td>
      </tr>
      <%
          }
          con.close();
        } catch(Exception e) {
          out.println("Error: " + e.getMessage());
        }
      %>
      </tbody>
    </table>
  </div>
</div>

<script>
$(document).ready(function() {
  $('#patientTable').DataTable({
    dom: 'Bfrtip',
    buttons: [
      'excelHtml5',
      'pdfHtml5'
    ],
    paging: true,
    searching: true,
    scrollX: true,
    responsive: false
  });
});
</script>

<%@ include file="FooterPage.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
