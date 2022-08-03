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
@WebServlet(name = "manageScheme", urlPatterns = {"/manageScheme"})
public class manageScheme extends HttpServlet {

 	private static final long serialVersionUID = 1L;
       
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                //System.out.println("Id is = " );
		
                String id = request.getParameter("schemeID");
                String location = request.getParameter("location");
		String description = request.getParameter("description");
                String price = request.getParameter("prices");
                
                String delete = request.getParameter("delete");
                

                //String description1 = request.getParameter("schemeID");
                
                
                //String id = request.getParameter("id");
                //String id1 = request.getParameter("delete");
                System.out.println("Delete is = " );
                System.out.print(delete);
                
                System.out.println("SchemeID is = " );
                System.out.print(id);
                System.out.println("Location is = " );
                System.out.print(location);
                System.out.println("Description is = " );
                System.out.print(description);
                System.out.println("Price is = " );
                System.out.print(price);

                
        
		Connection con = null;
		RequestDispatcher dispatcher = null;
		
                if (delete != null)
                {
                        Admin admin = new Admin();
                        int result = admin.deleteScheme(delete);
                        
                        if (result == 0){
                            System.out.println("Could Not Update Data");
                        } else{
                            System.out.println("Data Successfully Updated");
                        }
                        
                        
                        dispatcher = request.getRequestDispatcher("manageSchemes.jsp");
                        
                        dispatcher.forward(request, response);

                } else if (id != null)
                {
                    Admin admin = new Admin();
                    int result = admin.addScheme(id, location, description, price);
                    
                    if (result == 0){
                            System.out.println("Could Not Add Data");
                    } else{
                            System.out.println("Data Successfully Added");
                    }


                   
                    dispatcher = request.getRequestDispatcher("manageSchemes.jsp");

                    dispatcher.forward(request, response);
                    
                }
                

                
                
                

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
