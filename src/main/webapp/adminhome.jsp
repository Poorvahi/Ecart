<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@ page import="com.dto.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/home.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
</head>

    <body>
        <div class="sidebar">
            <div class="logo-details">
                
                <pre><span class="logo_name">      The Ecart</span></pre>
            </div>
            <ul class="nav-links">
            <%
                		String newmail2 = (String) session.getAttribute("email"); 
             %>
             	<li>
                    <a href="adminhome.jsp" class="active">
                        <i class='bx bx-grid-alt'></i>
                        <span class="links_name">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="adminprofileserv?email=<%=newmail2 %>" >
                        <i class='bx bx-grid-alt'></i>
                        <span class="links_name">Profile</span>
                    </a>
                </li>
                <li>
                    <a href="Allusers.jsp">
                        <i class='bx bx-box'></i>
                        <span class="links_name">Users</span>
                    </a>
                </li>
                <li>
                    <a href="Allcategory.jsp">
                        <i class='bx bx-list-ul'></i>
                        <span class="links_name">All Category</span>
                    </a>
                </li>
                <li>
                    <a href="Allsubcategory.jsp">
                        <i class='bx bx-list-ul'></i>
                        <span class="links_name">All SubCategory</span>
                    </a>
                </li>
                <li>
                    <a href="Productservlet">
                        <i class='bx bx-list-ul'></i>
                        <span class="links_name">All Product</span>
                    </a>
                </li>
                 <li>
                 	<a href="Allorders.jsp">
	                 	<i class='bx bx-list-ul'></i>
	                 	<span class="links_name">All Orders</span>
                 	</a>
                </li>
                <li>
                    <a href="Showfeedback.jsp">
                        <i class='bx bx-heart'></i>
                        <span class="links_name">Feedback</span>
                    </a>
                </li>
                <li>
                    <a href="Queries.jsp">
                        <i class='bx bx-cog'></i>
                        <span class="links_name">Queries</span>
                    </a>
                </li>
                <li class="log_out">
                    <a href="Logout.jsp">
                        <i class='bx bx-log-out'></i>
                        <span class="links_name">Log out</span>
                    </a>
                </li>
            </ul>
        </div>
		<%
    // Database connection parameters
    String url = "jdbc:mysql://localhost:3306/ecommerce";
    String username = "root";
    String password = "Sql@20";

    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;

    int userCount = 0;
    int productCount = 0;
    int adminCount = 0;
    int categoryCount = 0;
    int subcategoryCount = 0;
    int feedbackCount = 0;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(url, username, password);
        stmt = con.createStatement();

        // Count all users
        rs = stmt.executeQuery("SELECT COUNT(username) AS totalUsers FROM registration WHERE role='user'");
        if (rs.next()) {
            userCount = rs.getInt("totalUsers");
        }

        // Count all products
        rs = stmt.executeQuery("SELECT COUNT(productid) AS totalProducts FROM product");
        if (rs.next()) {
            productCount = rs.getInt("totalProducts");
        }

        // Count all admins
        rs = stmt.executeQuery("SELECT COUNT(username) AS totalAdmins FROM registration WHERE role='admin'");
        if (rs.next()) {
            adminCount = rs.getInt("totalAdmins");
        }
		
     // Count all admins
        rs = stmt.executeQuery("SELECT COUNT(cid) AS totalcid FROM category ");
        if (rs.next()) {
            categoryCount = rs.getInt("totalcid");
            
        }
        
     // Count all admins
        rs = stmt.executeQuery("SELECT COUNT(subid) AS totalsubid FROM subcategory ");
        if (rs.next()) {
            subcategoryCount = rs.getInt("totalsubid");
        }
     // Count all admins
        rs = stmt.executeQuery("SELECT COUNT(fid) AS totalfeedback FROM feedback");
        if (rs.next()) {
            feedbackCount = rs.getInt("totalfeedback");
        }
        
    } catch (Exception e) {
        out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
    } 
%>
        <section class="home-section">
            <nav>
                <div class="sidebar-button">
                    <i class='bx bx-menu sidebarBtn'></i>
                    <span class="dashboard">Dashboard</span>
                </div>
                <div class="search-box">
                    <input type="text" placeholder="Search...">
                    <i class='bx bx-search'></i>
                </div>
                <div class="profile-details">
                    <img src="https://t4.ftcdn.net/jpg/00/97/00/09/360_F_97000908_wwH2goIihwrMoeV9QF3BW6HtpsVFaNVM.jpg"
                        alt="profile">
         				 <%
                			String newmail = (String) session.getAttribute("email"); 
                   		 %>
  			
  				<a href="#" class="flex-c-m trans-04 p-lr-25"> <%=newmail %> </a>
  				
  				    	 
					 
                    <span class="admin_name"></span>
                    <i class='bx bx-chevron-down'></i>
                </div>
            </nav>
            <div class="home-content">
        <div class="overview-boxes">
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Users</div>
                    <div class="number">
                        <%=userCount %>
                        </div>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt'></i>
                            <span class="text">Up to date</span>
                        </div>
                    </div>
                    
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Total Products</div>
                        <div class="number">
                        <%=productCount %>
                        
                        </div>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt'></i>
                            <span class="text">Up to date</span>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Total Products</div>
                        <div class="number">
                        <%=categoryCount %>
                        
                        </div>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt'></i>
                            <span class="text">Up to date</span>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Total Products</div>
                        <div class="number">
                        <%= subcategoryCount %>
                        
                        </div>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt'></i>
                            <span class="text">Up to date</span>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Total Products</div>
                        <div class="number">
                        <%=feedbackCount %>
                        
                        </div>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt'></i>
                            <span class="text">Up to date</span>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Total Admin</div>
                        <div class="number">
                        <%=adminCount %>
                        
                        </div>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt'></i>
                            <span class="text">Up to date</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>


