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
 * Servlet implementation class Updatecategoryservlet
 */
@WebServlet("/Updatecategoryservlet")
public class Updatecategoryservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatecategoryservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int cid=Integer.parseInt(request.getParameter("cid"));
		DatabaseCon db= new DatabaseCon();
		Categoryget result= db.searchcategory(cid);
		System.out.println(cid);
		HttpSession session=request.getSession();
		if(result !=null) {
			session.setAttribute("categoryget23", result);
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/Updatecategory.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("Allcategory.jsp");
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
