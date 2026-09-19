<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String date = request.getParameter("date");
    String content = request.getParameter("content");

    if (date == null || date.trim().equals("")) {
        date = "N/A";
    }

    if (content == null || content.trim().equals("")) {
        content = "No announcement content provided.";
    } else {
        content = URLDecoder.decode(content, "UTF-8");
    }
%>
<!DOCTYPE html>
<html>
<head>
  <title>Letter Pad</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .letter-box {
      max-width: 800px;
      margin: 50px auto;
      background: #fff;
      padding: 40px;
      border: 2px solid #198754;
      box-shadow: 0 0 15px rgba(0,0,0,0.1);
      font-family: Georgia, serif;
    }

    .letter-header {
      border-bottom: 2px solid #198754;
      padding-bottom: 10px;
      margin-bottom: 30px;
      text-align: center;
    }

    .letter-content {
      font-size: 18px;
      line-height: 1.6;
      text-align: justify;
    }

    .letter-footer {
      margin-top: 50px;
      text-align: right;
    }
  </style>
</head>
<body>
  <div class="letter-box">
    <div class="letter-header">
      <h2 class="text-success">Nagvanshi Hospital</h2>
      <p>NH-28, Near Balrampur Balika Inter College, Balrampur, Uttar Pradesh - 270201</p>
      <p>Phone: +91-9305667841 | Email: nagvanshihospital@gmail.com</p>
    </div>

    <p><strong>Date:</strong> <%= date %></p>

    <div class="letter-content">
      <p>To Whom It May Concern,</p>
      <p><%= content %></p>
    </div>

    <div class="letter-footer">
      <p><strong>Regards,</strong></p>
      <p><strong>Dr. Amit Chaurasiya</strong></p>
      <p>Owner, Nagvanshi Hospital</p>
    </div>
  </div>
</body>
</html>
