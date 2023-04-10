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
import java.sql.SQLException;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("uName");
		String upass = request.getParameter("uPass");
		Connection con = null;
		RequestDispatcher dispatcher = null;
//		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/users" , "root" , "Skyan@1#0520");
			PreparedStatement st = con.prepareStatement("insert into students(userName,userPass) values(?,?)");
			st.setString(1, uname);
			st.setString(2, upass);
			
			int rowCount = st.executeUpdate();
			//dispatcher = request.getRequestDispatcher("registration.jsp");

			if(rowCount > 0) {
				request.setAttribute("status", "success");
				dispatcher = request.getRequestDispatcher("index.jsp");
//				print.print("Data entered successfully");
			}else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("registration.jsp");
			}
			
			dispatcher.forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
//		PrintWriter print = response.getWriter();
//		print.print(uname);
//		print.print("  ");
//		print.print(upass);
	}

}
