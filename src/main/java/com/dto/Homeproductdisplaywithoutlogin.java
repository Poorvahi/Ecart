package com.dto;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbs.DatabaseCon;

/**
 * Servlet implementation class Homeproductdisplaywithoutlogin
 */
@WebServlet("/Homeproductdisplaywithoutlogin")
public class Homeproductdisplaywithoutlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Homeproductdisplaywithoutlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DatabaseCon db= new DatabaseCon();
		String cnm=request.getParameter("cnm");
		HttpSession session=request.getSession();
		ArrayList<Productget> productget = db.showrelatedproducts2(cnm);
		session.setAttribute("productget2", productget);
		RequestDispatcher rd=getServletContext().getRequestDispatcher("/Homeproductdisplaywithoutlogin.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
