package com.dto;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbs.DatabaseCon;

/**
 * Servlet implementation class Newpasswordchange
 */
@WebServlet("/Newpasswordchange")
public class Newpasswordchange extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Newpasswordchange() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session= request.getSession();
		 String mobile = (String) session.getAttribute("mobile");
		String newPassword=request.getParameter("password");
		DatabaseCon db= new DatabaseCon();
		boolean result= db.changepsswdregistration(newPassword,mobile);
		boolean result1= db.changepsswdlogin(newPassword,mobile);
		System.out.println("Updating password: " +newPassword);
		System.out.println("Mobile: " +mobile);

		if(result && result1) {
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("changePassword.jsp");
		}	
		doGet(request, response);
	}

}
