<%@ page import="jakarta.servlet.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Medical Test Report</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
    font-family: 'Segoe UI', sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
}

.page {
    width: 210mm;
    min-height: 297mm;
    padding-inline:30px;
    padding-top:5px;
    
    margin: auto;
    background: white;
    box-shadow: 0 0 5px rgba(0,0,0,0.1);
    animation: fadeIn 1s ease-in-out;
}

.report-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 30px;
    animation: slideDown 1s ease-in-out;
}

.report-logo {
    height: 150px;
    max-width: 150px;
}

.report-hospital-info {
    text-align: right;
    line-height: 1.5;
}

.report-hospital-info .hospital-name {
    font-size: 35px;
    font-weight: bold;
    color: #343a40;
    margin-bottom: 5px;
    animation: fadeInUp 1s ease-in-out;
}

.report-hospital-info .hospital-contact {
    font-size: 14px;
    color: #6c757d;
}

.report-heading {
    text-align: center;
    font-size: 32px;
    font-weight: bold;
    margin-bottom: 30px;
    text-decoration: underline;
    color: #007bff;
    animation: fadeInUp 1s ease-in-out;
}

.patient-details {
    font-size: 18px;
    margin-bottom: 15px;
    animation: fadeIn 1.5s ease-in-out;
}

.patient-details b {
    color: #343a40;
}

.report-table {
    width: 100%;
    border: 1px solid #dee2e6;
    border-radius: 8px;
    margin-top: 30px;
    animation: fadeInUp 2s ease-in-out;
}

.report-table th, .report-table td {
    border: 1px solid #dee2e6;
    padding: 12px;
    text-align: center;
}

.report-table th {
    background-color: #007bff;
    color: white;
    font-size: 16px;
}

.report-table td {
    font-size: 14px;
}

.report-table tr:nth-child(even) {
    background-color: #f8f9fa;
}

.btn-print {
    background-color: #28a745;
    color: white;
    font-size: 18px;
    padding: 10px 20px;
    border-radius: 5px;
    animation: fadeInUp 2s ease-in-out;
}

.btn-print:hover {
    background-color: #218838;
}

@media print {
    body {
        width: 21cm;
        height: 29.7cm;
        margin: 0 auto;
    }
    .no-print {
        display: none;
    }
}

@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

@keyframes slideDown {
    from {
        transform: translateY(-30px);
        opacity: 0;
    }
    to {
        transform: translateY(0);
        opacity: 1;
    }
}

@keyframes fadeInUp {
    from {
        transform: translateY(30px);
        opacity: 0;
    }
    to {
        transform: translateY(0);
        opacity: 1;
    }
}
</style>
</head>
<body>

<!-- Medical Report Section -->

<div class="page my-5">
   
    <div class="report-header">
   
        <div>
   
            <img src="./images/Nagvanshi-Logo.png" alt="Hospital Logo" class="img-fluid report-logo rounded-5">
   
        </div>
   
        <div class="report-hospital-info">
   
          <div class="hospital-name">Nagvanshi Hospital</div>
 
              <div class="hospital-contact">
                123, Near Balika Inter College, Balrampur, UP - 271201<br>
                📞 +91-9305667841 | ✉️ nagvanshihospital@gmail.com
              </div>
         </div>
   </div>

    <div class="report-heading">Medical Urine Test Report</div>

    <div class="patient-details">

        <p><b>Name:</b> <%= session.getAttribute("name") %></p>

        <p><b>Age:</b> <%= session.getAttribute("age") %></p>

        <p><b>Gender:</b> <%= session.getAttribute("gender") %></p>

        <p><b>Mobile:</b> <%= session.getAttribute("mobile") %></p>

        <p><b>Address:</b> <%= session.getAttribute("address") %></p>

        <p><b>Test Name:</b> <%= session.getAttribute("test_name") %></p>

        <p><b>Date:</b> <%= session.getAttribute("date") %> &nbsp; <b>Time:</b> <%= session.getAttribute("time") %></p>

    </div>

    <h5 class="mt-4">Blood Test Results:</h5>

    <table class="report-table">

        <tr>
       
            <th>Parameter</th>
            <th>Result</th>
       
        </tr>
        
        <tr><td>Protein</td><td><%= request.getParameter("protein") %> g/dL</td></tr>
        
        <tr><td>Glucose(Sugar)</td><td><%= request.getParameter("glucose") %> cells/mcL</td></tr>
        
        <tr><td>RBC Count</td><td><%= request.getParameter("rbc_count") %> million/mcL</td></tr>
        
        <tr><td>RBC</td><td><%= request.getParameter("rbc") %> lakhs/mcL</td></tr>
        
        <tr><td>WBC</td><td><%= request.getParameter("wbc") %> %</td></tr>
        
        <tr><td>Crystal</td><td><%= request.getParameter("crystal") %> fL</td></tr>
        
        <tr><td>Appereance</td><td><%= request.getParameter("appear") %></td></tr>
        
        <tr><td>Color</td><td><%= request.getParameter("color") %></td></tr>
        
        <tr><td>Volume</td><td><%= request.getParameter("volume") %></td></tr>
        
        <tr><td>Gravity</td><td><%= request.getParameter("gravity") %></td></tr>
    
    </table>

    <div class="text-center mt-4">

        <button onclick="window.print()" class="btn-print">Print Report</button>

    </div>

</div>

</body>

</html>
