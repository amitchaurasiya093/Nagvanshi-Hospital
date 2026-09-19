<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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
             
             String joining_date = request.getParameter("joindate");
             
             String bank_name = request.getParameter("txt_bank");
             
             String account_no = request.getParameter("txt_account");
             
             String ifsc_code = request.getParameter("txt_ifsc");
             
             Connection cn=(Connection)application.getAttribute("CONN");
             
             PreparedStatement ps=cn.prepareCall("INSERT INTO staff_info(name,age,gender,dob,mobile,father_name,address,qualification,email,aadhar,salary,joining_date,bank_name,account_no,ifsc_code) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
             
             ps.setString(1, name);
             
             ps.setString(2, age);
             
             ps.setString(3, gender);
             
             ps.setString(4, dob);
             
             ps.setString(5, mobile);
             
             ps.setString(6, father_name);
             
             ps.setString(7, address);
             
             ps.setString(8, qualification);
             
             ps.setString(9, email);
             
             ps.setString(10, aadhar);
             
             ps.setString(11, salary);
             
             ps.setString(12, joining_date);
             
             ps.setString(13, bank_name);
             
             ps.setString(14, account_no);
             
             ps.setString(15, ifsc_code);
             
             ps.executeUpdate();
             
             
             
             
             %>
             
             <h1>Record Insert Successfull...✅✅</h1>


</body>
</html>