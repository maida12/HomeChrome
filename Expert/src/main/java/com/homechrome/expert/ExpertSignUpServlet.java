package com.homechrome.expert;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ExpertSignUpServlet")
public class ExpertSignUpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    
    
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //response.setContentType("text/html;charset=UTF-8");
            
            try ( PrintWriter out = response.getWriter()) {
            String uname = request.getParameter("name");
            String uemail = request.getParameter("email");
            String upassword = request.getParameter("pass");
            int uprice = Integer.parseInt(request.getParameter("price_meet"));
            String uexperience = request.getParameter("Experience");
            
            
            Expert expert = new Expert();
            
            
            expert.setName(uname);
            expert.setEmail(uemail);
            expert.setPassword(upassword);
            expert.setPricePerMeeting(uprice);
            expert.setExperience(uexperience);
           
            boolean b = expert.SignUp();
           
            if(b == true)
            {
                RequestDispatcher dispatcher = null;
                dispatcher = request.getRequestDispatcher("login.jsp");
                dispatcher.forward(request, response);
            }
            if(b == false)
            {
                request.setAttribute("Error","This email already exists.. Try New Email");
                RequestDispatcher rd = request.getRequestDispatcher("ExpertSignUp.jsp");
                rd.include(request, response);
            }
            	
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
 
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
    }

}
