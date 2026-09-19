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

        String dname = request.getParameter("txt_dname");

        Connection cn=(Connection)application.getAttribute("CONN");

        PreparedStatement ps=cn.prepareCall("INSERT INTO departments(dept_name) values(?)");

        ps.setString(1, dname);
        
        ps.executeUpdate();


        
%>

     <h1>Record Insert Successfull...✅✅</h1>





</body>
</html>