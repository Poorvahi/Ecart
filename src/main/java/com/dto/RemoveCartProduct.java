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
 * Servlet implementation class RemoveCartProduct
 */
@WebServlet("/RemoveCartProduct")
public class RemoveCartProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveCartProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int cartid= Integer.parseInt(request.getParameter("cartid"));
		DatabaseCon db= new DatabaseCon();
		boolean result= db.removeproduct(cartid);
		System.out.println("Deleting Product with pid: " +cartid);

		if(result) {
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/ShowCart.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("Homeuser.jsp");
		}

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
	}

}
