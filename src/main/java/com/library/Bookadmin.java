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

public class Bookadmin extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String action = req.getParameter("Bookadmin");
        switch(action) {
            case "add":
                addBook(req, res);
                break;
            case "update":
                updateBook(req, res);
                break;
            case "delete":
                deleteBook(req, res);
                break;
            default:
                PrintWriter pw = res.getWriter();
                pw.print("Invalid action");
                break;
        }
    }

    private void addBook(HttpServletRequest req, HttpServletResponse res) throws IOException {
        try {
            String url = "jdbc:mysql://localhost:3306/library";
            String username = "root";
            String password = "5381";
            res.setContentType("text/html");
            PrintWriter pw = res.getWriter();
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, username, password);
            PreparedStatement pStatement = connection.prepareStatement("INSERT INTO books_table (Bookid, Bookname, BookPrice, BookAuthor) VALUES (?, ?, ?, ?)");
            pStatement.setString(1, req.getParameter("Bookid"));
            pStatement.setString(2, req.getParameter("Bookname"));
            pStatement.setString(3, req.getParameter("BookPrice"));
            pStatement.setString(4, req.getParameter("BookAuthor"));
            int resultSet = pStatement.executeUpdate();
            if (resultSet > 0) {
                pw.print("Book added successfully");
            } else {
                pw.print("Failed to add book");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void updateBook(HttpServletRequest req, HttpServletResponse res) throws IOException {
        try {
            String url = "jdbc:mysql://localhost:3306/library";
            String username = "root";
            String password = "5381";
            res.setContentType("text/html");
            PrintWriter pw = res.getWriter();
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, username, password);
            PreparedStatement pStatement = connection.prepareStatement("UPDATE books_table SET Bookname = ?, BookPrice = ?, BookAuthor = ? WHERE Bookid = ?");
            pStatement.setString(1, req.getParameter("Bookname"));
            pStatement.setString(2, req.getParameter("BookPrice"));
            pStatement.setString(3, req.getParameter("BookAuthor"));
            pStatement.setString(4, req.getParameter("Bookid"));
            int resultSet = pStatement.executeUpdate();
            if (resultSet > 0) {
                pw.print("Book updated successfully");
            } else {
                pw.print("Failed to update book");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void deleteBook(HttpServletRequest req, HttpServletResponse res) throws IOException {
        try {
            String url = "jdbc:mysql://localhost:3306/library";
            String username = "root";
            String password = "5381";
            res.setContentType("text/html");
            PrintWriter pw = res.getWriter();
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, username, password);
            PreparedStatement pStatement = connection.prepareStatement("DELETE FROM books_table WHERE Bookid = ?");
            pStatement.setString(1, req.getParameter("Bookid"));
            int resultSet = pStatement.executeUpdate();
            if (resultSet > 0) {
                pw.print("Book deleted successfully");
            } else {
                pw.print("Failed to delete book");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
