/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.homechrome.registeration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
@WebServlet(name = "totalHomesServlet", urlPatterns = {"/totalHomesServlet"})
public class totalHomesServlet extends HttpServlet {

        private static final long serialVersionUID = 1L;
	private totalHomesDAO homesDAO;
	
	public void init() {
		this.homesDAO = new totalHomesDAO();
	}
        
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}
        
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getServletPath();
            
            //action = "/new";
            System.out.println(action);
            //request.getServletPath();

            try {
                    switch (action) {
                    case "/new":
                            listHomes(request, response);
                            break;
                    //case "/insert":
                            //insertUser(request, response);
                            //break;
                    //case "/delete":
                            //deleteUser(request, response);
                            //break;
                    //case "/edit":
                            //showEditForm(request, response);
                            //break;
                    //case "/update":
                            //updateUser(request, response);
                            //break;
                    case "/list":
                            listHomes(request, response);
                            break;
                    default:
                            listHomes(request, response);
                            break;
                    }
            } catch (SQLException ex) {
                    throw new ServletException(ex);
            }
        }
        private void listHomes(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		List<homes> list_Homes = homesDAO.selectAllHomes();
		request.setAttribute("listHomes", list_Homes);
		RequestDispatcher dispatcher = request.getRequestDispatcher("total-homes-built.jsp");
		dispatcher.forward(request, response);
	}
        
}




