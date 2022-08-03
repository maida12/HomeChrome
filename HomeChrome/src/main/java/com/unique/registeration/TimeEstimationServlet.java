package com.unique.registeration;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TimeEstimationServlet
 */
@WebServlet("/TimeEstimationServlet")
public class TimeEstimationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s = request.getParameter("radio");
		String floor = request.getParameter("radio1");
		Customer c=new Customer();
		float res=0;
		if("1".equals(s))
		{
			if("1".equals(floor))
			{
				res=c.TimeEstimation(1, 1);
			}
			else
			{
				res=c.TimeEstimation(1, 2);
			}
		}
		else
		{
			if("1".equals(floor))
			{
				res=c.TimeEstimation(2, 1);
			}
			else
			{
				res=c.TimeEstimation(2, 2);
			}
			
				
		} 
		request.setAttribute("result", res );
		RequestDispatcher rd= request.getRequestDispatcher("TimeEstimation.jsp");
		rd.include(request, response);
	}


}
