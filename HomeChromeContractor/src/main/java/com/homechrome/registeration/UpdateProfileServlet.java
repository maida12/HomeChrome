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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
		HttpSession session = request.getSession();
            String userName = request.getParameter("username");
            String password = request.getParameter("password");
            int lcount = Integer.parseInt(request.getParameter("lcount"));
    		int price = Integer.parseInt(request.getParameter("price"));
    		int hcount = Integer.parseInt(request.getParameter("hcount"));
            
            RequestDispatcher dispatcher = null;
    		Connection con = null;
    		
    		try {
    			
    			con=ConnectionClass.createConnection();
    			PreparedStatement pst = con.prepareStatement("Update Contractors set cname=?,cpass=?,lcount=?,price=?,hcount=? where id=? ");
    			pst.setString(1, userName);
    			pst.setString(2, password);
    			pst.setInt(3,lcount);
    			pst.setInt(4,price);
    			pst.setInt(5,hcount);
    			pst.setInt(6, (Integer)session.getAttribute("ContId"));
    			
    			int rowCount = pst.executeUpdate();
    			dispatcher = request.getRequestDispatcher("ViewProfile.jsp");
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
