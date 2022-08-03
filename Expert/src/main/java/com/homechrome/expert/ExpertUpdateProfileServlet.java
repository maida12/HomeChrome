package com.homechrome.expert;

import static java.lang.System.out;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author IT USER
 */
@WebServlet("/ExpertUpdateProfileServlet")
public class ExpertUpdateProfileServlet extends HttpServlet {

   

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = null;
        
        
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            
            String userName = request.getParameter("Name");
            String password = request.getParameter("password");
            int price = Integer.parseInt(request.getParameter("meetpertime"));
            if(price < 0)
            {
                price = -1 *price;
            }
            String experience = request.getParameter("experience");
          
            
            //out.print(request.getSession().getAttribute("name"));
            
             HttpSession session = request.getSession();
           
           String Email = (String) session.getAttribute("email");
           
           Expert expert = new Expert();
           expert.setName(userName);
           expert.setPassword(password);
           expert.setPricePerMeeting(price);
           expert.setExperience(experience);
           expert.setEmail(Email);
           expert.updateProfile();
             
        dispatcher = request.getRequestDispatcher("expert.jsp");
        dispatcher.forward(request, response);
        }
        out.print("-8");
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
