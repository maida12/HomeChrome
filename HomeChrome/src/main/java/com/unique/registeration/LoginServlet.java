package com.unique.registeration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uemail=request.getParameter("username");
		String upass=request.getParameter("password");
		HttpSession session= request.getSession();
		RequestDispatcher dispatcher =null; 
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeChrome?useSSL=false" , "root" , "maida");
			PreparedStatement pst=con.prepareStatement("select *from users where Uemail=? and upass=?");
			pst.setString(1,uemail);
			pst.setString(2,upass);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				session.setAttribute("name",rs.getString("uname"));
				dispatcher=request.getRequestDispatcher("index.jsp");
			}
			else
			{
				request.setAttribute("status","failed");
				dispatcher=request.getRequestDispatcher("login.jsp");
				
			}
			dispatcher.forward(request, response);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();			
		}
		
		
	}

}
