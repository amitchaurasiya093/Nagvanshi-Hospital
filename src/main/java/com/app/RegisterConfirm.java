package com.app;

import java.io.File;
import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/RegisterConfirm")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 1,  // 1MB
    maxFileSize = 1024 * 1024 * 10,       // 10MB
    maxRequestSize = 1024 * 1024 * 15     // 15MB
)
public class RegisterConfirm extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        Connection cn = null;
        CallableStatement stmt = null;

        try {
            // ✅ DB Connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            cn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/nagvanshi_hospital",
                    "root",
                    "boot"
            );

            // ✅ Form Data
            String name = request.getParameter("txt_name");
            String age = request.getParameter("txt_age");
            String gender = request.getParameter("Gender");
            String email = request.getParameter("email");
            String mobile = request.getParameter("txt_mobile");
            String address = request.getParameter("ta_address");
            String aadhar = request.getParameter("txt_aadhar");
            String patient_id = request.getParameter("txt_pid");

            String user_type = "Normal";
            int role_id = 2;
            String image_url = "";

            // ✅ File Upload Handling
            Part filePart = request.getPart("photo");

            if (filePart != null && filePart.getSize() > 0) {

                String fileName = getFileName(filePart);

                // Folder path
                String uploadPath = getServletContext().getRealPath("") + File.separator + "images";

                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) {
                    uploadDir.mkdirs();
                }

                // Save file
                String filePath = uploadPath + File.separator + fileName;
                filePart.write(filePath);

                image_url = "images/" + fileName;
            }

            // ✅ Stored Procedure Call
            stmt = cn.prepareCall("{call Register(?,?,?,?,?,?,?,?,?,?,?)}");

            stmt.setString(1, name);
            stmt.setString(2, age);
            stmt.setString(3, gender);
            stmt.setString(4, email);
            stmt.setString(5, mobile);
            stmt.setString(6, address);
            stmt.setString(7, aadhar);
            stmt.setString(8, patient_id);
            stmt.setString(9, image_url);
            stmt.setString(10, user_type);
            stmt.setInt(11, role_id);

            stmt.executeUpdate();

            // ✅ Success
            response.getWriter().println(
                "<script>alert('✅ Registration Successful!'); window.location='Login.jsp';</script>"
            );

        } catch (Exception e) {

            response.getWriter().println(
                "<h3 style='color:red'>❌ Error: " + e.getMessage() + "</h3>"
            );
            e.printStackTrace(response.getWriter());

        } finally {
            try {
                if (stmt != null) stmt.close();
                if (cn != null) cn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    // ✅ Helper Method
    private String getFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");

        if (contentDisp != null) {
            String[] tokens = contentDisp.split(";");
            for (String token : tokens) {
                if (token.trim().startsWith("filename")) {
                    return token.substring(token.indexOf("=") + 2, token.length() - 1);
                }
            }
        }
        return "";
    }
}