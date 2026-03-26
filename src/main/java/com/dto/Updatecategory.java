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
 * Servlet implementation class Updatecategory
 */
@WebServlet("/Updatecategory")
public class Updatecategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatecategory() {
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
		
		int cid=Integer.parseInt(request.getParameter("cid"));
		String cnm=request.getParameter("cnm");
		DatabaseCon db=new DatabaseCon();
		boolean result=db.updatecategory(cid,cnm);
		
		if(result) {
			request.getSession().setAttribute("categoryname", cnm);
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/Allcategory.jsp");
			rd.forward(request, response);
		}else {
			response.sendRedirect("#");
		}
		
		doGet(request, response);
	}

}
