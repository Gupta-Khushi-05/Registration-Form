package com.signUp.register;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class LogIn
 */
@WebServlet("/login")
public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter print = response.getWriter();
		
		
		String uname = request.getParameter("uName");
		String upass = request.getParameter("uPass");
		Connection con = null;
		RequestDispatcher dispatcher = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/users" , "root" , "Skyan@1#0520");
			PreparedStatement st = con.prepareStatement("select * from students where userName = ? and userPass = ?");
			st.setString(1, uname);
			st.setString(2, upass);
			
			ResultSet rst = st.executeQuery();
			
			//dispatcher = request.getRequestDispatcher("login.jsp");

			if(rst.next()) {
				request.setAttribute("status", "success");
				dispatcher = request.getRequestDispatcher("index.jsp");
			//	print.print("Data entered successfully");
			}else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			
			dispatcher.forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
			
		
		
		
		
	}

}
