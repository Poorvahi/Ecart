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
 * Servlet implementation class Updateproductservlet
 */
@WebServlet("/Updateproductservlet")
public class Updateproductservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updateproductservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int pid=Integer.parseInt(request.getParameter("pid"));
		//String category=request.getParameter("category");
		DatabaseCon db= new DatabaseCon();
		Productget result= db.searchproduct(pid);
		HttpSession session=request.getSession();
		if(result !=null) {
			session.setAttribute("productget", result);
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/Updateproducts.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("adminhome.jsp");
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
