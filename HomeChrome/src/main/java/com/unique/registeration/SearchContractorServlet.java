package com.unique.registeration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class SearchContractorServlet
 */
@WebServlet("/SearchContractorServlet")
public class SearchContractorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchContractorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
		String price= request.getParameter("price");
		String rating= request.getParameter("Rating");
		String type=request.getParameter("type");
		
		out.print("<table  class=\"table table-bordered\"  align=\"center\" cellpadding=\"5\" cellspacing=\"5\" border=\"1\"><thead><tr><th>ID</th><th>Name</th><th>Password</th><th>Email</th><th>Labour-Count</th><th>Price-Rate</th><th>Home-Count</th><th>Status</th><th>Rating</th><th>Actions</th></tr>");
		try
		{
			PreparedStatement pst=null;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homechrome?useSSL=false", "root", "maida");
			System.out.println(type);
			if("price".equals(type))
			{
			
			 pst = con.prepareStatement("select * from Contractors where price=?");
			
				pst.setString(1, price);
			}
			else
			{
				 pst = con.prepareStatement("select * from Contractors where rating =?");
				pst.setString(1, rating);
			}
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				out.print("<tr style=\"color: #fff\" bgcolor=\"#37517e\"><td>");
				out.print(rs.getInt(1));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString(2));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString(3));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString(4));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getInt(5));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getInt(6));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getInt(7));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getInt(8));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getInt(9));
				out.print("</td>");
				out.print("</tr>");
			}
				
		
			
			
		}
		catch(Exception e)
		{
			System.out.print(e);
		}
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
