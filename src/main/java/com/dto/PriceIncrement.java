package com.dto;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbs.DatabaseCon;

/**
 * Servlet implementation class PriceIncrement
 */
@WebServlet("/PriceIncrement")
public class PriceIncrement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PriceIncrement() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		double price=Double.parseDouble(request.getParameter("price"));
		int qty=Integer.parseInt(request.getParameter("qty"));
		int cartid=Integer.parseInt(request.getParameter("cartid"));

       int newqty=qty+1;
       double incprice=newqty*price;
       
       System.out.print(qty);
       DatabaseCon db=new DatabaseCon();
		boolean result=db.incrementval(newqty,incprice,cartid);
		HttpSession session =request.getSession();
		
		if(result) {
			session.setAttribute("incprice",incprice);
			response.sendRedirect("ShowCart.jsp");
		}
		else {
			response.sendRedirect("Homeuser.jsp");
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
