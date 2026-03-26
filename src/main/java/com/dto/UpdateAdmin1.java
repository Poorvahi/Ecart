package com.dto;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbs.DatabaseCon;

/**
 * Servlet implementation class UpdateAdmin1
 */
@WebServlet("/UpdateAdmin1")
public class UpdateAdmin1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAdmin1() {
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
		
		String unm=request.getParameter("username");
		String fnm=request.getParameter("firstname");
		String lnm=request.getParameter("lastname");
		String passwd=request.getParameter("password");
		String em=request.getParameter("email");
		long contact=Long.parseLong(request.getParameter("contact"));
		String gen=request.getParameter("gender");
		String dob=request.getParameter("dob");
		String addr=request.getParameter("address");
		String state=request.getParameter("state");
		String city=request.getParameter("city");
		int postal=Integer.parseInt(request.getParameter("postal"));
		String role=request.getParameter("role");
		
		DatabaseCon db=new DatabaseCon();
		boolean result1=db.updateadminregistration(unm,fnm,lnm,passwd,em,contact,gen,dob,addr,state,city,postal,role);
		boolean result2=db.updateadminlogin(unm,passwd,role,em,contact);
		if(result1 && result2) {
			request.getSession().setAttribute("username", unm);
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/Allusers.jsp");
			rd.forward(request, response);
		}else {
			response.sendRedirect("adminhome.jsp");
		}
		
		doGet(request, response);
	}

}
