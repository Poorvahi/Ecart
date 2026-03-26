package com.dto;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbs.DatabaseCon;

/**
 * Servlet implementation class SubCategory
 */
@WebServlet("/SubCategory")
public class SubCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubCategory() {
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
		String sname=request.getParameter("subnm");
		int cid=Integer.parseInt(request.getParameter("cid"));
		String cnm=request.getParameter("cnm");
		
		DatabaseCon db=new DatabaseCon();
		boolean result=db.Addsubcategory(sname,cid,cnm);
		
		if(result){
		
			request.getSession().setAttribute("subcatname:", sname);
			response.sendRedirect("Allsubcategory.jsp");
		}
		else {
			response.sendRedirect("Homeuser.jsp");
		}
		
		doGet(request, response);
	}

}
