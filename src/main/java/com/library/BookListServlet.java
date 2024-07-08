//package com.library;
//
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.List;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//public class BookListServlet extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        List<Book> bookList = new ArrayList<>();
//        Connection connection = null;
//        PreparedStatement preparedStatement = null;
//        ResultSet resultSet = null;
//
//        try {
//            String url = "jdbc:mysql://localhost:3306/library";
//            String username = "root";
//            String password = "5381";
//
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            connection = DriverManager.getConnection(url, username, password);
//
//            String query = "SELECT book_id, book_name, price, author FROM books_table";
//            preparedStatement = connection.prepareStatement(query);
//            resultSet = preparedStatement.executeQuery();
//
//            while (resultSet.next()) {
//                int bookId = resultSet.getInt("book_id");
//                String bookName = resultSet.getString("book_name");
//                double bookPrice = resultSet.getDouble("price");
//                String bookAuthor = resultSet.getString("author");
//                bookList.add(new Book(bookId, bookName, bookPrice, bookAuthor));
//            }
//
//            request.setAttribute("bookList", bookList);
//            request.getRequestDispatcher("books_display.jsp").forward(request, response);
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            try {
//                if (resultSet != null) resultSet.close();
//                if (preparedStatement != null) preparedStatement.close();
//                if (connection != null) connection.close();
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//    }
//}
