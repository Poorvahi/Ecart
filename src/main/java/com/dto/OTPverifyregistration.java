package com.dto;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class OTPverifyregistration
 */
@WebServlet("/OTPverifyregistration")
public class OTPverifyregistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OTPverifyregistration() {
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
		HttpSession session= request.getSession();
		String n1 = request.getParameter("otp1");
		String n2 = request.getParameter("otp2");
		String n3 = request.getParameter("otp3");
		String n4 = request.getParameter("otp4");
		String n5 = request.getParameter("otp5");
		String n6 = request.getParameter("otp6");
		
		String notp=n1+n2+n3+n4+n5+n6;
		int newotp=Integer.parseInt(notp);
		int oldotp = (int) session.getAttribute("otp");
		
		if(oldotp == newotp){
		    response.sendRedirect("Registration.jsp");
		} else {
		    System.out.println("Invalid OTP, try again.");
		}

		doGet(request, response);
	}

}
