package com.unique.registeration;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CostEstimationServlet
 */
@WebServlet("/CostEstimationServlet")
public class CostEstimationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s = request.getParameter("radio");
		String floor = request.getParameter("radio1");
		String quality = request.getParameter("radio2");
		String area =request.getParameter("area");
		int i=Integer.parseInt(area);
		Customer c=new Customer();
		long res=0;
		if("1".equals(s))
		{
			if("1".equals(floor))
			{
			
				if("1".equals(quality))
				{
					res=c.CostEstimation(1, 1, 1, i);	
				}
				else
				{
					res=c.CostEstimation(1, 1, 2, i);	
				}
			}
			else
			{
				if("1".equals(quality))
				{
					res=c.CostEstimation(1, 2, 1, i);	
				}
				else
				{
					res=c.CostEstimation(1, 2, 2, i);
				}
			}
		}
		else
		{
			if("1".equals(floor))
			{
				if("1".equals(quality))
				{
					res=c.CostEstimation(2, 1, 1, i);
				}
				else
				{
					res=c.CostEstimation(2, 1, 2, i);
				}
			}
			else
			{
				if("1".equals(quality))
				{
					res=c.CostEstimation(2, 2, 1, i);
				}
				else
				{
					res=c.CostEstimation(2, 2, 2, i);
					
				}
				
			}
		} 
		request.setAttribute("result", res );
		RequestDispatcher rd= request.getRequestDispatcher("CostEstimation.jsp");
		rd.include(request, response);
	}

}
