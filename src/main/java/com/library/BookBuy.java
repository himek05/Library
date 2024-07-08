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

public class BookBuy extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String id = req.getParameter("Bookid");
        String name = req.getParameter("Bookname");
        String price = req.getParameter("Bookprice");
        
        try {
            String url = "jdbc:mysql://localhost:3306/library";
            String username = "root";
            String password = "5381";
            
            res.setContentType("text/html");
            PrintWriter pw = res.getWriter();
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            try (Connection connection = DriverManager.getConnection(url, username, password)) {
                String query = "SELECT * FROM books_table WHERE Bookid = ? AND Bookname = ? AND Bookprice = ?";
                try (PreparedStatement pStatement = connection.prepareStatement(query)) {
                    pStatement.setString(1, id);
                    pStatement.setString(2, name);
                    pStatement.setString(3, price);
                    
                    try (ResultSet resultSet = pStatement.executeQuery()) {
                        if (resultSet.next()) {
//                            pw.print("Buy Successfully");
                        	res.sendRedirect("BookBuy.jsp");
                        } else {
                            pw.print("Not Buy Successful");
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
