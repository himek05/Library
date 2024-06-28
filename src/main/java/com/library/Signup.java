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

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException{
		try {
			String url = "jdbc:mysql://localhost:3306/library";
			String username = "root";
			String password = "5381";
			System.out.println("This is before the Deiver manager");
			res.setContentType("text/html");
			PrintWriter pw = res.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection connection = DriverManager.getConnection(url, username, password);
			System.out.println("This is after ");
			PreparedStatement pStatement = connection
					.prepareStatement("Insert into signup_table values(?,?,?)");
			pStatement.setString(1, req.getParameter("name"));
			pStatement.setString(2, req.getParameter("username/email"));
			pStatement.setString(3, req.getParameter("password"));
			
			int resultSet = pStatement.executeUpdate();
			if (resultSet > 0) {
				
				
				pw.print("Sign up Successfully");
			} else {
				
			
				pw.print("Form Not Submitted Successfully");
			}
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}

	}
}

