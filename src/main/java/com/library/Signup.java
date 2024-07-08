package com.library;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Signup extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("username/email");
        String pass = req.getParameter("password");

        res.setContentType("text/html");
        PrintWriter pw = res.getWriter();

        String url = "jdbc:mysql://localhost:3306/library";
        String username = "root";
        String password = "5381";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection connection = DriverManager.getConnection(url, username, password);
                 PreparedStatement pStatement = connection.prepareStatement("INSERT INTO signup_table (name, email, password) VALUES (?, ?, ?)")) {
                
                pStatement.setString(1, name);
                pStatement.setString(2, email);
                pStatement.setString(3, pass); // Consider hashing the password before storing

                int resultSet = pStatement.executeUpdate();
                
                if (resultSet > 0) {
                    if ("Himek".equals(name) && "Himek@123".equals(email) && "123".equals(pass)) {
                        res.sendRedirect("Books_Buy.jsp");
                    } else {
                        res.sendRedirect("login.jsp");
                    }
                } else {
                    pw.print("Signup not successful, please try again.");
                }
            }
        } catch (Exception e) {
            e.printStackTrace(pw);
        } finally {
            pw.close();
        }
    }
}
