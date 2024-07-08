package com.library;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Detail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","5381");

            String sql = "SELECT * FROM books_table";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            out.println("<html><body><center><div>");
            out.println("<h1>Items</h1>");
            out.println("<table border='1'>");
            out.println("<tr><th>Book Id</th><th>Book Name</th><th>Book Price</th><th>Book Author</th></tr>");
            
            while (rs.next()) {
                String id = rs.getString("Bookid");
                String name = rs.getString("Bookname");
                int price = rs.getInt("BookPrice");
                String author = rs.getString("BookAuthor");

                out.println("<tr>");
                out.println("<td>" + id + "</td>");
                out.println("<td>" + name + "</td>");
                out.println("<td>" + price + "</td>");
                out.println("<td>" + author + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
            out.println("</div></center></body></html>");
        } catch (SQLException se) {
            se.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
}