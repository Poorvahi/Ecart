package com.dto;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbs.DatabaseCon;

/**
 * Servlet implementation class Addproduct
 */
@WebServlet("/Addproduct")
public class Addproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addproduct() {
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
		
		String pname =request.getParameter("productname");
		double price=Double.parseDouble(request.getParameter("price"));
		String category =request.getParameter("subcategory");
		String desc=request.getParameter("description");
		String brand=request.getParameter("brand");
		int qty=Integer.parseInt(request.getParameter("quantity"));
		double total=Double.parseDouble(request.getParameter("total"));
		double stotal=Double.parseDouble(request.getParameter("subtotal"));
		String img=request.getParameter("image");
		
		DatabaseCon db=new DatabaseCon();
		boolean result=db.Addproduct(pname,price,category,desc,brand,qty,total,stotal,img);
		if(result) {
			request.getSession().setAttribute("productname", pname);
			response.sendRedirect("Allproductdetails.jsp");
		}
		else {
			response.sendRedirect("adminhome.jsp");
		}
		
		
		doGet(request, response);
	}

}
