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
 * Servlet implementation class Updateproduct
 */
@WebServlet("/Updateproduct")
public class Updateproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updateproduct() {
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
		int pid=Integer.parseInt(request.getParameter("productid"));
		String pnm=request.getParameter("productname");
		double price=Double.parseDouble(request.getParameter("price"));
		String category=request.getParameter("subcategoryid");
		String desc=request.getParameter("disc");
		String brand=request.getParameter("brand");
		int qty=Integer.parseInt(request.getParameter("quantity"));
		double total=Double.parseDouble(request.getParameter("total"));
		double stotal=Double.parseDouble(request.getParameter("subtotal"));
		String img=request.getParameter("image");
		
		DatabaseCon db=new DatabaseCon();
		boolean result1=db.updateproduct(pid,pnm,price,category,desc,brand,qty,total,stotal,img);
		if(result1) {
			request.getSession().setAttribute("pid", pid);
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/Allproductdetails.jsp");
			rd.forward(request, response);
		}else {
			response.sendRedirect("adminhome.jsp");
		}
		
		doGet(request, response);
	}

}
