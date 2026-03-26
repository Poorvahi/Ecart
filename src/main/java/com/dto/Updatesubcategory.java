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
 * Servlet implementation class Updatesubcategory
 */
@WebServlet("/Updatesubcategory")
public class Updatesubcategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatesubcategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int subid=Integer.parseInt(request.getParameter("subid"));
		String subnm=request.getParameter("subnm");
		int cid=Integer.parseInt(request.getParameter("cid"));
		DatabaseCon db=new DatabaseCon();
		boolean result1=db.updatesubcategory(subid,subnm,cid);
		
		if(result1) {
			request.getSession().setAttribute("subcategory name:", subnm);
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/Allsubcategory.jsp");
			rd.forward(request, response);
		}else {
			response.sendRedirect("adminhome.jsp");
		}
		
		doGet(request, response);
	}

}
