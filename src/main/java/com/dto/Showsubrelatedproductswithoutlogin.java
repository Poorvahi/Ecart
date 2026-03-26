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
 * Servlet implementation class Showsubrelatedproductswithoutlogin
 */
@WebServlet("/Showsubrelatedproductswithoutlogin")
public class Showsubrelatedproductswithoutlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Showsubrelatedproductswithoutlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String subnm=request.getParameter("subnm");
		String cnm=request.getParameter("cnm");
		System.out.println(cnm);
		DatabaseCon db= new DatabaseCon();
		HttpSession session=request.getSession();
		ArrayList<Productget> productget = db.showrelatedproducts(subnm,cnm);
		session.setAttribute("relatedproductget", productget);
		RequestDispatcher rd=getServletContext().getRequestDispatcher("/UserSubcategorywithoutlogin.jsp");
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
