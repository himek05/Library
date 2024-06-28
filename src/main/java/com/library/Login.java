package com.library;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("username/email");
        String pass = req.getParameter("password");
        
        try {
            String url = "jdbc:mysql://localhost:3306/library";
            String username = "root";
            String password = "5381";
            
            res.setContentType("text/html");
            PrintWriter pw = res.getWriter();
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            try (Connection connection = DriverManager.getConnection(url, username, password)) {
                String query = "SELECT * FROM signup_table WHERE `username/email` = ? AND password = ?";
                try (PreparedStatement pStatement = connection.prepareStatement(query)) {
                    pStatement.setString(1, email);
                    pStatement.setString(2, pass);
                    
                    try (ResultSet resultSet = pStatement.executeQuery()) {
                        if (resultSet.next()) {
                            res.sendRedirect("main.jsp");
                        } else {
                            pw.print("Login Not Successful");
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
