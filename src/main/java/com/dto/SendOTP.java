package com.dto;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SendOTP
 */
@WebServlet("/SendOTP")
public class SendOTP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendOTP() {
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
		String email = request.getParameter("email");
		HttpSession session= request.getSession();
		int otp = (int)(Math.random() * 900000) + 100000;
		session.setAttribute("otp", otp);
		session.setAttribute("email", email);

		// Send Email with JavaMail API
		String subject = "Your OTP Code";
        String body = "Dear User,\n\nYour OTP is: " + otp + "\n\nUse this to reset your password.";
        
		EmailUtil.sendEmail(email, "Your OTP Code", "Your OTP is: " + otp);
		response.sendRedirect("Verifyotp.jsp");
		


		doGet(request, response);
	}

}
