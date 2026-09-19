<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>C.S.F Examination Report</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f9f9f9;
      padding: 20px;
    }
    .report-header {
      border-bottom: 3px solid #007bff;
      padding-bottom: 10px;
      margin-bottom: 20px;
    }
    .logo-text {
      color: #007bff;
      font-weight: bold;
      font-size: 50px;
    }
    .section-title {
      background-color: #007bff;
      color: white;
      padding: 6px 10px;
      font-size: 18px;
      font-weight: bold;
    }
    .table th, .table td {
      vertical-align: middle;
    }
    .signature {
      margin-top: 40px;
    }
    .signature p {
      margin: 0;
    }
    .footer {
      margin-top: 40px;
      font-size: 12px;
      color: gray;
    }
    .logo-img {
      height: 150px;
      width: 150px;
      border-radius: 20px;
    }
    .btn-print {
      background-color: #007bff;
      color: white;
      border: none;
      padding: 10px 20px;
      margin-top: 20px;
    }

    /* PRINT STYLES */
@media print {
  body, html {
    margin: 0;
    padding: 0;
    width: 100%;
    -webkit-print-color-adjust: exact;
    print-color-adjust: exact;
  }

  .container {
    zoom: 0.7; /* Try 0.65 or 0.6 if still overflows */
    padding: 10mm;
    box-sizing: border-box;
    background-color: white;
  }

  .btn-print {
    display: none;
  }

  @page {
    size: A4 portrait;
    margin: 0;
  }
}

  </style>
</head>
<body>

  <div class="container bg-white shadow p-4">
    <!-- Header -->
    <div class="report-header d-flex justify-content-between align-items-start">
      <div>
        <h4 class="logo-text">NAGVANSHI HOSPITAL</h4>
        <p>Accurate | Caring | Instant<br>
        105-108, NEAR BALRAMPUR BALIKA INTER COLLEGE BALRAMPUR, BALRAMPUR - 271201</p>
        <p> 91-9305667841 / 8840671505<br>nagvanshihospital@gmail.com</p>
      </div>
      <div>
        <img src="./images/Nagvanshi-Logo.png" alt="Lab Logo" class="logo-img">
      </div>
    </div>

    <!-- Patient Info -->
    <div class="row mb-3">
      <div class="col-md-6">
        <strong>Name: <%= session.getAttribute("name") %></strong><br>
        Age: <%= session.getAttribute("age") %><br>
        Sex: <%= session.getAttribute("gender") %><br>
        Mobile: <%= session.getAttribute("mobile") %><br>
        Address: <%= session.getAttribute("address") %><br>
        PID: 555
      </div>
      <div class="col-md-6 text-end">
        <strong>Sample Collected At:</strong><br>
        125, Shivam Bungalow, S G Road, Mumbai<br>
        Ref. By: <b><%= session.getAttribute("dname") %></b><br>
      </div>
    </div>

    <!-- Test Name -->
    <div class="section-title text-center"><%= session.getAttribute("test_name") %></div>

    <!-- Chemical Examination -->
    <h5 class="mt-4">CHEMICAL EXAMINATION</h5>
    <table class="table table-bordered">
      <thead class="table-light">
        <tr>
          <th>Investigation</th>
          <th>Result</th>
          <th>Reference Value</th>
          <th>Unit</th>
        </tr>
      </thead>
      <tbody>
        <tr><td>Hemoglobin</td><td><%= request.getParameter("hemoglobin") %></td><td>98 - 107</td><td>mg/dL</td></tr>
        <tr><td>WBC Count</td><td><%= request.getParameter("wbc_count") %></td><td>20 - 45</td><td>mg/dL</td></tr>
        <tr><td>RBC Count</td><td><%= request.getParameter("rbc_count") %></td><td>40 - 80</td><td>mg/dL</td></tr>
      </tbody>
    </table>

    <!-- Physical Examination -->
    <h5 class="mt-4">PHYSICAL EXAMINATION</h5>
    <table class="table table-bordered">
      <tbody>
        <tr><td>P</td><td><%= request.getParameter("platelet_count") %></td></tr>
        <tr><td>Quantity</td><td><%= request.getParameter("pcv") %></td></tr>
        <tr><td>Appearance</td><td><%= request.getParameter("mcv") %></td></tr>
        <tr><td>Coagulum</td><td><%= request.getParameter("mchc") %></td></tr>
        <tr><td>Blood</td><td><%= request.getParameter("mchc") %></td></tr>
      </tbody>
    </table>

    <!-- Microscopic Examination -->
    <h5 class="mt-4">MICROSCOPIC EXAMINATION</h5>
    <table class="table table-bordered">
      <tbody>
        <tr><td>Total W.B.C. Count</td><td><%= request.getParameter("mchc") %></td></tr>
        <tr><td>Polymorphs</td><td><%= request.getParameter("mchc") %></td></tr>
        <tr><td>Lymphocytes</td><td><%= request.getParameter("mchc") %></td></tr>
        <tr><td>Any Others</td><td><%= request.getParameter("mchc") %></td></tr>
        <tr><td>RBC's</td><td><%= request.getParameter("mchc") %></td></tr>
        <tr><td>Z.N. Stain</td><td><%= request.getParameter("mchc") %></td></tr>
        <tr><td>Cram's Smear</td><td><%= request.getParameter("mchc") %></td></tr>
      </tbody>
    </table>

    <!-- Signatures -->
    <div class="row signature text-center mt-5">
      <div class="col-md-4">
        <hr>
        <p><strong>Medical Lab Technician</strong><br>(DMLT, BMLT)</p>
      </div>
      <div class="col-md-4">
        <hr>
        <p><strong>Dr. Payal Shah</strong><br>(MD, Pathologist)</p>
      </div>
      <div class="col-md-4">
        <hr>
        <p><strong>Dr. Vimal Shah</strong><br>(MD, Pathologist)</p>
      </div>
    </div>

    <!-- Print Button -->
    <div class="text-center mt-4">
      <button onclick="window.print()" class="btn-print">Print Report</button>
    </div>
  </div>

</body>
</html>
