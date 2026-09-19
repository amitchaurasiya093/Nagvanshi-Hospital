<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Prescription Download</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background: #f1f5f9;
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
        }

        /* A4 Sheet Setup */
        .a4-sheet {
            background: #fff;
            width: 210mm; /* A4 width */
            height: 297mm; /* A4 height */
            margin: 0 auto;
            border: 2px solid #007bff;
            border-radius: 10px;
            padding: 10mm; /* Set padding to 10mm for A4 paper */
            box-sizing: border-box;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            position: relative;
        }

        /* Watermark with Diagonal text */
        .a4-sheet::before {
            content: "NAGVANSHI HOSPITAL";
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%) rotate(-45deg); /* Diagonal rotation */
            font-size: 60px; /* Reduced font size */
            color: #007bff;
            font-weight: bold;
            text-shadow: 3px 3px 10px rgba(0, 0, 255, 0.3);
            opacity: 0.1;
            pointer-events: none;
            z-index: 1;
        }

        .header-logo {
            width: 150px;
            height: 150px;
            border-radius: 20px;
        }

        .hospital-title {
            font-size: 35px;
            font-weight: 900;
            color: #007bff;
        }

        .section-title {
            font-size: 20px;
            font-weight: 600;
            color: #343a40;
            margin-bottom: 10px;
        }

        .info-label {
            font-weight: 500;
            color: #000;
        }

        .prescription-box {
            min-height: 220px;
            border: 2px dashed #999;
            padding: 20px;
            margin-top: 20px;
        }

        .signature-section {
            margin-top: 60px;
            display: flex;
            justify-content: space-between;
            font-weight: 500;
        }

        .print-btn {
            margin: 20px auto;
            display: block;
        }

        hr {
            border-top: 3px solid #007bff;
        }

        @media print {
            body {
                background: #fff !important;
                margin: 0 !important;
                padding: 0 !important;
            }

            .a4-sheet {
                padding: 10mm; /* Adjust padding for print */
                margin: 0;
                width: 210mm;
                height: 297mm;
                box-shadow: none;
                border: none;
            }

            .no-print {
                display: none !important;
            }

            /* Ensure scaling is done properly for print */
            @page {
                size: A4;
                margin: 0;
            }
        }
    </style>
</head>
<body>
<%
    String name = request.getParameter("txt_name");
    String age = request.getParameter("txt_age");
    String gender = request.getParameter("Gender");
    String weight = request.getParameter("txt_weight");
    String blood_group = request.getParameter("txt_bgroup");
    String dname = request.getParameter("cmb_dname");
    String address = request.getParameter("ta_address");
    String payment = request.getParameter("txt_tid");
    String patient_id = request.getParameter("txt_pid");

    Connection cn = (Connection) application.getAttribute("CONN");
    CallableStatement stmt = cn.prepareCall("{ call prescription(?,?,?,?,?,?,?,?,?) }");
    stmt.setString(1, name);
    stmt.setString(2, age);
    stmt.setString(3, gender);
    stmt.setString(4, weight);
    stmt.setString(5, blood_group);
    stmt.setString(6, dname);
    stmt.setString(7, address);
    stmt.setString(8, payment);
    stmt.setInt(9, Integer.parseInt(patient_id));
    stmt.execute();
%>

<button onclick="window.print()" class="btn btn-primary btn-lg rounded-pill print-btn no-print">
    <i class="fas fa-print"></i> Print Prescription
</button>

<div class="a4-sheet">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <img src="./images/Nagvanshi-Logo.png" class="header-logo" alt="Logo">
        <div class="text-end">
            <div class="hospital-title">NAGVANSHI HOSPITAL</div>
            <div class="text-muted">Near Balrampur Balika Inter College Balrampur <br>(271201) Uttar Pradesh | Since 2005</div>
        </div>
    </div>

    <hr>

    <div class="section-title"><i class="fas fa-user"></i> Patient Information</div>
    <div class="row">
        <div class="col-md-6">
            <p><span class="info-label pe-3 fw-bold">Name:</span> <%= name %></p>
            <p><span class="info-label pe-3 fw-bold">Age:</span> <%= age %> Years</p>
            <p><span class="info-label pe-3 fw-bold">Gender:</span> <%= gender %></p>
        </div>
        <div class="col-md-6">
            <p><span class="info-label pe-3 fw-bold">Weight:</span> <%= weight %> kg</p>
            <p><span class="info-label pe-3 fw-bold">Blood Group:</span> <%= blood_group %></p>
            <p><span class="info-label pe-3 fw-bold">Consulting Doctor:</span> <%= dname %></p>
        </div>
    </div>

    <p><span class="info-label pe-3 fw-bold"><i class="fas fa-location-dot"></i> Address:</span> <%= address %></p>

    <div class="section-title"><i class="fas fa-notes-medical"></i> Prescription</div>
    <div class="prescription-box">
        <p class="text-muted">[ Doctor will write prescriptions here manually, or this can be auto-filled later. ]</p>
    </div>

    <div class="signature-section">
        <p><i class="far fa-calendar-alt"></i> Date: ____________</p>
        <p><i class="fas fa-signature"></i> Doctor's Signature: ____________</p>
    </div>
</div>

<div class="my-3" align="center"><a href="Userview.jsp"><button class="btn btn-success"><b>Back Profile</b></button></a></div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
