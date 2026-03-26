package com.dto;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbs.DatabaseCon;

/**
 * Servlet implementation class AddtoCart
 */
@WebServlet("/AddtoCart")
public class AddtoCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddtoCart() {
        super();        // TODO Auto-generated constructor stub
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
		int productid=Integer.parseInt(request.getParameter("productid"));
		String name=request.getParameter("name");
		double price=Double.parseDouble(request.getParameter("price"));
		String img=request.getParameter("img");
		int quantity = 1;
		String email=request.getParameter("email");
		double price2=Double.parseDouble(request.getParameter("price"));
		System.out.print(productid); 
		HttpSession session= request.getSession();

		DatabaseCon db=new DatabaseCon();
		boolean result1=db.Addtocart(productid, name, price,img,quantity,price2,email);
		if(result1 ) {
			request.getSession().setAttribute("email", email);
			response.sendRedirect("ShowCart.jsp");
		}
		else {
			response.sendRedirect("Homeuser.jsp");
		}
		doGet(request, response);
	}

}
