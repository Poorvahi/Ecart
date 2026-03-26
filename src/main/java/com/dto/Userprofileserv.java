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
 * Servlet implementation class Userprofileserv
 */
@WebServlet("/Userprofileserv")
public class Userprofileserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userprofileserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email;
		try {
			email=request.getParameter("email");
			
		}catch(NumberFormatException e) {
			response.sendError(HttpServletResponse.SC_BAD_REQUEST, "invalid user");
			return ;
		}
		
		DatabaseCon db=new DatabaseCon();
		Userget obj=db.searchuserprofile(email);
		HttpSession session= request.getSession();
		if(obj!=null) {
			session.setAttribute("userprofile", obj);
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/Profileuser.jsp");
			rd.forward(request, response);
		}
		else {
			response.sendError(HttpServletResponse.SC_NOT_FOUND, "user not found");
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
