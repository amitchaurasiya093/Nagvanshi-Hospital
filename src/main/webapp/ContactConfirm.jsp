<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Successful Submitted</title>
</head>
<body>

   <%
   
         String name=request.getParameter("txt_name");
   
         String email=request.getParameter("txt_email");
         
         String mobile=request.getParameter("txt_mobile");
         
         String address=request.getParameter("ta_address");
         
         String message=request.getParameter("txt_message");
         
         
         Connection cn=(Connection)application.getAttribute("CONN");
         
         CallableStatement stmt=cn.prepareCall("{call contact(?,?,?,?,?)}");
         
         stmt.setString(1, name);
         
         stmt.setString(2, email);
         
         stmt.setString(3, mobile);
         
         stmt.setString(4, address);
         
         stmt.setString(5, message);
         
         stmt.execute();
   
   
   %>
         

</body>
</html>