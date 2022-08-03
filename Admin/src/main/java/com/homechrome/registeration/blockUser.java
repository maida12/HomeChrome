/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.homechrome.registeration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell
 */
@WebServlet(name = "blockUser", urlPatterns = {"/blockUser"})
public class blockUser extends HttpServlet {

 	private static final long serialVersionUID = 1L;
       
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String action = request.getServletPath();
                //System.out.println("Id is = " );
		//int id = Integer.parseInt(request.getParameter("delete"));
                String idCustomer = request.getParameter("customer");
                String idContractor = request.getParameter("contractor");
                String idExpert = request.getParameter("expert");
		//userDAO.deleteUser(id);
		//response.sendRedirect("list");
                //System.out.print(id);
               
//Expert exp = new Ex
        
        //exp.gggg(id)
                Connection con = null;
		RequestDispatcher dispatcher = null;
		
                if (idCustomer != null)
                {
                        Admin admin = new Admin();
                        int result = admin.blockCustomer(idCustomer);
                        
                        if (result == 0){
                            System.out.println("Could Not Delete Data");
                        } else{
                            System.out.println("Data Successfully Deleted");
                        }
                } else if (idContractor != null){
                        Admin admin = new Admin();
                        int result = admin.blockContractor(idContractor);
                        
                        if (result == 0){
                            System.out.println("Could Not Delete Data");
                        } else{
                            System.out.println("Data Successfully Deleted");
                        }
                } else if (idExpert != null){
                        Admin admin = new Admin();
                        int result = admin.blockExpert(idExpert);
                        
                        if (result == 0){
                            System.out.println("Could Not Delete Data");
                        } else{
                            System.out.println("Data Successfully Deleted");
                        }
                }
                dispatcher = request.getRequestDispatcher("blockUsers.jsp");
                        
                dispatcher.forward(request, response);
               //String uemail = request.getParameter("username");
		//String upassword = request.getParameter("password");
		//HttpSession session = request.getSession();
	
	}
        
        
        /*
        private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		//userDAO.deleteUser(id);
		//response.sendRedirect("list");
                
                
                
                
               //String uemail = request.getParameter("username");
		//String upassword = request.getParameter("password");
		Connection con = null;
		//HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homechrome?useSSL=false", "root", "root");
			PreparedStatement pst = con.prepareStatement("DELETE FROM customer where id = ?");
			//pst.setString(1, uemail);
			//pst.setString(2, upassword);
                        pst.setInt(1, id);
			
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				//session.setAttribute("name", rs.getString("name"));
				dispatcher = request.getRequestDispatcher("blockUsers.jsp");
			} else {
				//request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("blockUsers.jsp");
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
        */


}
