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
 * Servlet implementation class Updatesubcategoryservlet
 */
@WebServlet("/Updatesubcategoryservlet")
public class Updatesubcategoryservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatesubcategoryservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int subid=Integer.parseInt(request.getParameter("subid"));
		DatabaseCon db= new DatabaseCon();
		Categoryget result= db.searchcategory(subid);
		System.out.print(subid);
		HttpSession session=request.getSession();
		if(result !=null) {
			session.setAttribute("subcategoryget", result);
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/Updatesubcategory.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("#");
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