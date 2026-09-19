<%@ page import="java.sql.*, java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Doctor</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<%@ include file="HeaderPage.html" %>

<div class="container">
    <h2 class="text-center text-primary mb-4">Edit Doctor Information</h2>
    
    <form method="post" action="UpdateDoctor">
        <%
            String doctorId = request.getParameter("id");
            if (doctorId != null) {
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nagvanshi_hospital", "root", "boot");
                    PreparedStatement ps = con.prepareStatement("SELECT * FROM doctor_info WHERE doctor_id = ?");
                    ps.setInt(1, Integer.parseInt(doctorId));
                    ResultSet rs = ps.executeQuery();
                    if (rs.next()) {
        %>
        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" id="name" name="name" value="<%= rs.getString("name") %>" required>
        </div>
        <div class="mb-3">
            <label for="age" class="form-label">Age</label>
            <input type="number" class="form-control" id="age" name="age" value="<%= rs.getString("age") %>" required>
        </div>
        <div class="mb-3">
            <label for="gender" class="form-label">Gender</label>
            <select class="form-select" id="gender" name="gender">
                <option value="Male" <%= rs.getString("gender").equals("Male") ? "selected" : "" %>>Male</option>
                <option value="Female" <%= rs.getString("gender").equals("Female") ? "selected" : "" %>>Female</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="mobile" class="form-label">Mobile</label>
            <input type="text" class="form-control" id="mobile" name="mobile" value="<%= rs.getString("mobile") %>" required>
        </div>
        <div class="mb-3">
            <label for="father_name" class="form-label">Father Name</label>
            <input type="text" class="form-control" id="father_name" name="father_name" value="<%= rs.getString("father_name") %>" required>
        </div>
        <div class="mb-3">
            <label for="qualification" class="form-label">Qualification</label>
            <input type="text" class="form-control" id="qualification" name="qualification" value="<%= rs.getString("qualification") %>" required>
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <input type="text" class="form-control" id="address" name="address" value="<%= rs.getString("address") %>" required>
        </div>
        <div class="mb-3">
            <label for="attend_day" class="form-label">Day</label>
            <input type="text" class="form-control" id="attend_day" name="attend_day" value="<%= rs.getString("attend_day") %>" required>
        </div>
        <div class="mb-3">
            <label for="attend_time" class="form-label">Time</label>
            <input type="text" class="form-control" id="attend_time" name="attend_time" value="<%= rs.getString("attend_time") %>" required>
        </div>
        <input type="hidden" name="doctor_id" value="<%= rs.getInt("doctor_id") %>">
        <button type="submit" class="btn btn-success">Update</button>
        <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("Database Error: " + e.getMessage());
                }
            } else {
                out.println("Doctor ID not found.");
            }
        %>
    </form>
</div>

</body>
</html>
