package com.homechrome.registeration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterationServlet
 */
@WebServlet("/register")
public class RegisterationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upassword = request.getParameter("pass");
		
		int lcount = Integer.parseInt(request.getParameter("lcount"));
		int price = Integer.parseInt(request.getParameter("price"));
		int hcount = Integer.parseInt(request.getParameter("hcount"));
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homechrome?useSSL=false", "root", "maida");
			PreparedStatement pst = con.prepareStatement("insert into Contractors(cname, cpass,cemail, lcount,price,hcount) values(?, ?, ?, ?,?,?) ");
			pst.setString(1, uname);
			pst.setString(2, upassword);
			pst.setString(3, uemail);
			pst.setInt(4, lcount);
			pst.setInt(5, price);
			pst.setInt(6, hcount);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if (rowCount > 0) {
				request.setAttribute("status", "success");
			}else {
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}

}
}