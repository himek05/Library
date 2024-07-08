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
	
	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	        String email = req.getParameter("email");
	        String password = req.getParameter("password");
	        String adminCheck = req.getParameter("checkbox");
	
	        PrintWriter pw = res.getWriter();
	        res.setContentType("text/html");
	
	        try {
	            String url = "jdbc:mysql://localhost:3306/library";
	            String dbUsername = "root";
	            String dbPassword = "5381";
	
	            Class.forName("com.mysql.cj.jdbc.Driver");
	
	            try (Connection connection = DriverManager.getConnection(url, dbUsername, dbPassword)) {
	                String query;
	                if (adminCheck == null) {
	                    query = "SELECT * FROM signup_table WHERE email = ? AND password = ?";
	                } else {
	                    query = "SELECT * FROM signup_table WHERE email = ? AND password = ?";
	                }
	                
	                try (PreparedStatement pStatement = connection.prepareStatement(query)) {
	                    pStatement.setString(1, email);
	                    pStatement.setString(2, password);
	
	                    try (ResultSet resultSet = pStatement.executeQuery()) {
	                        if (resultSet.next()) {
	                            if (adminCheck == null) {
	                                
	                                res.sendRedirect("main.jsp");
	                            } else {
	                            	res.sendRedirect("admin.jsp");
	                            }
	                        } else {
	                            pw.print("Login Not Successful");
	                            System.out.println("Login Not Successful: No matching records found.");
	                        }
	                    }
	                }
	            }
	        } catch (Exception e) {
	            e.printStackTrace(pw);
	        }
	    }
	}
