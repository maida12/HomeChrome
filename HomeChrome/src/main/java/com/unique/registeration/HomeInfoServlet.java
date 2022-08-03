package com.unique.registeration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class HomeInfoServlet
 */
@WebServlet("/HomeInfoServlet")
public class HomeInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
		System.out.println((String)session.getAttribute("CustomerId"));
		String area = request.getParameter("area");
		String loc = request.getParameter("location");
		String floor = request.getParameter("radio1");
		int fl=0;
		if("1".equals(floor))
		{
			fl=1;
		}
		else
			fl=2;
			
		RequestDispatcher rd = null;
		Connection con = null;
		PreparedStatement pst=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeChrome?useSSL=false", "root", "maida");
			 pst = con.prepareStatement("insert into Home(LandSize, location, floors) values(?, ?, ?) ");
			pst.setString(1, area);
			pst.setString(2, loc);
			pst.setInt(3, fl);
			int rowCount = pst.executeUpdate();
			
			//Query2
			
			pst = con.prepareStatement("SELECT * \r\n"
					+ "FROM home \r\n"
					+ "WHERE id=(\r\n"
					+ "    SELECT max(id) FROM Home\r\n"
					+ "    ) ");
			ResultSet rs = pst.executeQuery();
			rs.next();
			int Hid=rs.getInt("id");
			
			//Query3
			pst = con.prepareStatement("Update Customers Set HomeId=? where Uname= ?");
			pst.setInt(1, Hid);
			String myName=(String)session.getAttribute("name");
			pst.setString(2, myName);
			pst.executeUpdate();
			
			//Query4
			
			pst = con.prepareStatement("select * from Customers where HomeId=?");
			pst.setInt(1,Hid);
			rs = pst.executeQuery();
			rs.next();
			
			if (rowCount > 0) {
				session.setAttribute("HomeId", rs.getInt("HomeId"));
				request.setAttribute("result", "success");
			}else {
				request.setAttribute("result", "failed");
			}
			rd= request.getRequestDispatcher("HomeInfo.jsp");
			rd.include(request, response);
		}
		catch (Exception e) {
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
