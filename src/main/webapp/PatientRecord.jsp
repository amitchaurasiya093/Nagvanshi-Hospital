<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Patient Records</title>
  <!-- Bootstrap & DataTables CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css"/>
  <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.3.6/css/buttons.bootstrap5.min.css"/>

  <style>
    /* Navbar hover */
    .Hover:hover {
      background-color: #0056b3;
      color: #fff !important;
      transition: background-color 0.3s ease-in-out;
    }

    /* Table Row Fade-In Animation */
    @keyframes rowFadeIn {
      from { opacity: 0; transform: translateY(10px); }
      to { opacity: 1; transform: translateY(0); }
    }

    table.dataTable tbody tr {
      animation: rowFadeIn 0.4s ease-in;
    }

    /* Alternating row colors */
    table.dataTable tbody tr:nth-child(odd) {
      background-color: #e9f2fb;
    }
    table.dataTable tbody tr:nth-child(even) {
      background-color: #ffffff;
    }

    /* Row Hover effect */
    table.dataTable tbody tr:hover {
      background-color: #cce4ff !important;
      transition: background-color 0.3s ease-in-out;
    }

    /* Column Highlight */
    table.dataTable tbody td.highlight {
      background-color: #d0e7ff !important;
    }

    /* Profile Image Animation */
    .profile-image {
      height:60px; width:60px;
      object-fit:cover; border-radius:50%;
      animation: fadeIn 0.5s ease-in;
    }

    @keyframes fadeIn { from {opacity:0;} to {opacity:1;} }
  </style>
</head>

<body>
<%@ include file="HeaderPage.html" %>

<!-- मजबूत Navbar -->
<nav class="navbar navbar-expand-lg bg-primary m-2 rounded-4 navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="HomePage.jsp"><b>Nagvanshi Hospital</b></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-3">
        <li class="nav-item Hover"><a class="nav-link active" href="HomePage.jsp"><b>Home</b></a></li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="PatientRecord.jsp"><b>Patient Record</b></a></li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Prescription.jsp"><b>Prescription</b></a></li>
        <li class="nav-item dropdown ps-1">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"><b>Hospital Facality</b></a>
          <ul class="dropdown-menu">
            <li class="Hover bg-success"><a class="dropdown-item" href="AdmitInformation.jsp"><b>Admit Information</b></a></li>
            <li class="Hover bg-success"><a class="dropdown-item" href="TodayAppointment.jsp"><b>Today Book Appointment</b></a></li>
            <li class="Hover bg-success"><a class="dropdown-item" href="InsuranceInfo.jsp"><b>Insurance Info</b></a></li>
            <li class="Hover bg-success"><a class="dropdown-item" href="BillingForm.jsp"><b>Generate Bill</b></a></li>
            <li class="Hover bg-success"><a class="dropdown-item" href="Staff-Info.jsp"><b>Register New Staff</b></a></li>
            <li class="Hover bg-success"><a class="dropdown-item" href="Doctor_info.jsp"><b>Register New Doctor</b></a></li>
            <li class="Hover bg-success"><a class="dropdown-item" href="HospitalInfo.jsp"><b>Hospital Info</b></a></li>
            <li class="Hover bg-success"><a class="dropdown-item" href="Prime-Mininster-Health.jsp"><b>PM Health Offer</b></a></li>
          </ul>
        </li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="LaboratoryReport.jsp"><b>Laboratory Report</b></a></li>
        <li class="nav-item ps-1 Hover"><a class="nav-link active" href="Staff.jsp"><b>Staff Management</b></a></li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search">
        <button class="btn btn-outline-light" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

<div class="container mt-5">
  <h2 class="text-primary text-center mb-4">ALL PATIENT RECORDS</h2>
  <div class="table-responsive shadow-sm rounded">
    <table id="patientTable" class="table table-bordered display nowrap" style="width:100%">
      <thead class="table-primary">
        <tr>
          <th>ID</th><th>Image</th><th>Name</th><th>Age</th><th>Gender</th>
          <th>Email</th><th>Phone</th><th>Address</th><th>Aadhar-No</th>
        </tr>
      </thead>
      <tbody>
      <%
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nagvanshi_hospital","root","boot");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT registration_no,name,age,gender,email,mobile,address,aadhar,image_url FROM registration");
        while(rs.next()) {
      %>
      <tr>
        <td><%= rs.getInt("registration_no") %></td>
        <td>
          <%
            String img = rs.getString("image_url");
            img = (img != null && !img.isBlank()) ? img : "Nagvanshi-Logo.png";
            String src = request.getContextPath() + "/images/" + img;
          %>
          <img src="<%= src %>" alt="Patient" class="profile-image img-thumbnail"/>
        </td>
        <td><%= rs.getString("name") %></td>
        <td><%= rs.getString("age") %></td>
        <td><%= rs.getString("gender") %></td>
        <td><%= rs.getString("email") %></td>
        <td><%= rs.getString("mobile") %></td>
        <td><%= rs.getString("address") %></td>
        <td><%= rs.getString("aadhar") %></td>
      </tr>
      <% }
         con.close();
      %>
      </tbody>
    </table>
  </div>
</div>

<!-- JS Dependencies -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.bootstrap5.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.html5.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>
  $(document).ready(function() {
    var table = $('#patientTable').DataTable({
      dom: 'Bfrtip',
      buttons: ['excelHtml5','pdfHtml5'],
      paging: true, searching: true, scrollX: true, responsive: true
    });

    $('#patientTable tbody').on('mouseenter', 'td', function() {
      var colIdx = table.cell(this).index().column;
      $(table.cells().nodes()).removeClass('highlight');
      $(table.column(colIdx).nodes()).addClass('highlight');
    }).on('mouseleave', function() {
      $(table.cells().nodes()).removeClass('highlight');
    });
  });
</script>

<%@ include file="FooterPage.html" %>
</body>
</html>
