package com.smartreco;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {

    private static final String URL =
            "jdbc:mysql://localhost:3306/smartreco";

    private static final String DB_USER = "root";

    // Yahan apna MySQL password laptop par likhna
    private static final String DB_PASSWORD = "Shruti@0712";

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String fullName = request.getParameter("full_name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String sql = "INSERT INTO users " +
                "(full_name, email, password_hash) VALUES (?, ?, ?)";

        try (Connection con = DriverManager.getConnection(
                    URL, DB_USER, DB_PASSWORD);
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, fullName);
            ps.setString(2, email);
            ps.setString(3, password);

            ps.executeUpdate();

            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println(
                "Signup successful! <a href='login.jsp'>Login here</a>");

        } catch (Exception e) {
            e.printStackTrace();

            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println(
                "Signup failed. Please check the VS Code terminal.");
        }
    }
}