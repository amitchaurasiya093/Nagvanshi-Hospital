<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome Doctor</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #fdfbfb, #ebedee);
            font-family: 'Inter', sans-serif;
            padding: 20px;
        }
        .welcome-box {
            background: #ffffff;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
            animation: fadeIn 1s ease;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .details-table {
            margin-top: 30px;
            background: #ffffff;
            border-radius: 20px;
            padding: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
        h1 {
            font-weight: 700;
            color: #007bff;
        }
        th, td {
            padding: 10px 15px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="welcome-box">
        <h1>Welcome to Nagvanshi Hospital</h1>
        <p class="mt-3 fs-5">Your registration was successful! Here are your details:</p>
    </div>

    <div class="details-table table-responsive">
        <table class="table table-striped">
            <thead class="table-primary">
                <tr>
                    <th>Field</th>
                    <th>Detail</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String name = request.getParameter("txt_name");
                    String age = request.getParameter("txt_age");
                    String gender = request.getParameter("Gender");
                    String dob = request.getParameter("dob");
                    String mobile = request.getParameter("txt_mobile");
                    String father_name = request.getParameter("txt_fname");
                    String address = request.getParameter("ta_address");
                    String qualification = request.getParameter("txt_qualification");
                    String email = request.getParameter("email");
                    String aadhar = request.getParameter("txt_aadhar");
                    String salary = request.getParameter("txt_salary");
                    String attend_day = request.getParameter("day");
                    String from_time = request.getParameter("from_time");
                    String to_time = request.getParameter("to_time");
                    String joining_date = request.getParameter("join");
                    String bank_name = request.getParameter("txt_bank");
                    String account_no = request.getParameter("txt_account");
                    String ifsc_code = request.getParameter("txt_ifsc");
                    String dept_id = request.getParameter("dept_id");
                    String doctor_fee = request.getParameter("doctor_fee");
                    
                    
                    Connection cn=(Connection)application.getAttribute("CONN");

                    PreparedStatement ps=cn.prepareCall("INSERT INTO doctor_info(name,age,gender,mobile,father_name,qualification,address,salary,attend_day,joining_date,bank_name,account_no,ifsc_code,dept_id,from_time,to_time,doctor_fee) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

                    ps.setString(1, name);
                    ps.setString(2, age);
                    ps.setString(3, gender);
                    ps.setString(4, mobile);
                    ps.setString(5, father_name);
                    ps.setString(6, qualification);
                    ps.setString(7, address);
                    ps.setString(8, salary);
                    ps.setString(9, attend_day);
                    ps.setString(10, joining_date);
                    ps.setString(11, bank_name);
                    ps.setString(12, account_no);
                    ps.setString(13, ifsc_code);
                    ps.setString(14, dept_id);
                    ps.setString(15, from_time);
                    ps.setString(16, to_time);
                    ps.setString(17, doctor_fee);
                    
                    
                    ps.executeUpdate();

                %>
                <tr><th>Full Name</th><td><%= name %></td></tr>
                <tr><th>Age</th><td><%= age %></td></tr>
                <tr><th>Gender</th><td><%= gender %></td></tr>
                <tr><th>Date of Birth</th><td><%= dob %></td></tr>
                <tr><th>Mobile Number</th><td><%= mobile %></td></tr>
                <tr><th>Father's Name</th><td><%= father_name %></td></tr>
                <tr><th>Address</th><td><%= address %></td></tr>
                <tr><th>Qualification</th><td><%= qualification %></td></tr>
                <tr><th>Email</th><td><%= email %></td></tr>
                <tr><th>Aadhar Number</th><td><%= aadhar %></td></tr>
                <tr><th>Salary</th><td><%= salary %></td></tr>
                <tr><th>Attend Days</th><td><%= attend_day %></td></tr>
                <tr><th>From Time</th><td><%= from_time %></td></tr>
                <tr><th>To Time</th><td><%= to_time %></td></tr>
                <tr><th>Joining Date</th><td><%= joining_date %></td></tr>
                <tr><th>Bank Name</th><td><%= bank_name %></td></tr>
                <tr><th>Account Number</th><td><%= account_no %></td></tr>
                <tr><th>IFSC Code</th><td><%= ifsc_code %></td></tr>
                <tr><th>Doctor Fee</th><td><%= doctor_fee %></td></tr>
                <tr><th>Department In</th><td><%= dept_id %></td></tr>
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
