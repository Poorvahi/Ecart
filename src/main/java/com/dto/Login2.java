package com.dto;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login2
 */
@WebServlet("/Login2")
public class Login2 extends HttpServlet {
	private Connection con;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login2() {
        super();
        // TODO Auto-generated constructor stub
        int userCount;
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce?user=root&password=Sql@20");
			System.out.println("Connection established");
		} catch(Exception e)
		{
			e.printStackTrace();
		}
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
		
		int userCount=0;
		int adminCount=0;
		int productCount=0;
		String unm=request.getParameter("username");
		String passwd=request.getParameter("password");
		String rol=request.getParameter("role");
		System.out.println(unm);
		
		if(unm !=null && passwd !=null)
		{
			HttpSession session=request.getSession();
			String query="Select * from login where username='"+unm+"'";
			try(PreparedStatement ps=con.prepareStatement(query)){
				try(ResultSet rs=ps.executeQuery()){
					if(rs.next()) {
						String username=rs.getString(1);
						String password=rs.getString(2);
						String role=rs.getString(3);
						String email=rs.getString(4);
						System.out.println(unm);
						if(unm.equals(username) && passwd.equals(password)) {
							if(role.equals("user"))
							{
								session.setAttribute("email",email);
								RequestDispatcher rd=getServletContext().getRequestDispatcher("/Homeuser.jsp");
								rd.forward(request, response);
							}
							else if(role.equals("admin")){
								
							session.setAttribute("email",email);
							RequestDispatcher rd=getServletContext().getRequestDispatcher("/adminhome.jsp");
							rd.forward(request, response);	
							}
							else {
								RequestDispatcher rd=getServletContext().getRequestDispatcher("/login.jsp");
								rd.forward(request, response);	
							}
							
						}
						else {
							RequestDispatcher rd=getServletContext().getRequestDispatcher("/Registration.jsp");
							rd.forward(request, response);	
						} 
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}	
		
		doGet(request, response);
	}

}
