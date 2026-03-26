package com.dto;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbs.DatabaseCon;

/**
 * Servlet implementation class Feedbackservlet
 */
@WebServlet("/Feedbackservlet")
public class Feedbackservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Feedbackservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name =request.getParameter("name");
		String email =request.getParameter("email");
		String experience =request.getParameter("experience");
		int rating=Integer.parseInt(request.getParameter("rating"));
		String usability=request.getParameter("usability");
		String design=request.getParameter("design");
		String performance=request.getParameter("performance");
		String suggestion=request.getParameter("suggestion");
		
		DatabaseCon db=new DatabaseCon();
		boolean result=db.Addfeedback(name,email,experience,rating,usability,design,performance,suggestion);
		if(result) {
			request.getSession().setAttribute("name", name);
			response.sendRedirect("Homeuser.jsp");
		}
		else {
			response.sendRedirect("FeedbackForm.jsp");
		}
		doGet(request, response);
	}

}
