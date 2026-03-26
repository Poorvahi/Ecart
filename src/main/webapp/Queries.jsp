<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dto.*" %>
<%@page import="com.dbs.*" %>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>All Queries | The Ecart Admin</title>

<!-- Boxicons and CSS -->
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="css/home.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">

<style>
body {
    font-family: 'Poppins', sans-serif;
    background-color: #f5f7fa;
    margin: 0;
}

/* Sidebar Styling */
.sidebar {
    position: fixed;
    height: 100%;
    width: 250px;
    background: #001f54;
    transition: all 0.5s ease;
}

.logo-details {
    height: 80px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.logo-details .logo_name {
    color: #fff;
    font-size: 22px;
    font-weight: 600;
    letter-spacing: 0.5px;
}

.nav-links {
    margin-top: 10px;
}

.nav-links li {
    list-style: none;
    height: 60px;
    width: 100%;
    line-height: 60px;
    border-radius: 12px;
}

.nav-links li a {
    text-decoration: none;
    color: #e0e0e0;
    display: flex;
    align-items: center;
    justify-content: flex-start; /* Align everything left */
    gap: 10px; /* Reduce gap between icon and text */
    padding: 10px 0 10px 15px; /* Move closer to sidebar edge */
    font-size: 17px;
    font-weight: 500;
    transition: all 0.3s ease;
    text-align: left; /* Ensures text hugs the left edge */
}


.nav-links li a i {
    font-size: 20px;
    color: #ffffff;
    width: 25px; /* fixed width keeps text aligned nicely */
    text-align: center;
}


.nav-links li a:hover,
.nav-links li a.active {
	margin-right:50px;
    background-color: #0a2a72;
    color: #fff;
    border-radius: 12px;
}

/* Logout Button */
.nav-links li.log_out {
    position: absolute;
    bottom: 20px;
    width: 100%;
}

.nav-links li.log_out a {
    background-color: transparent;
}

/* Top Navigation Bar */
nav {
    background-color: #fff;
    box-shadow: 0 2px 6px rgba(0,0,0,0.1);
}

.dashboard {
    color: #001f54;
    font-weight: 600;
    font-size: 1.2rem;
}

/* Search box */
.search-box input {
    border: 1px solid #ddd;
    border-radius: 20px;
    padding: 6px 14px;
    outline: none;
}
.search-box i {
    color: #001f54;
}

/* Profile */
.profile-details span {
    font-weight: 600;
    color: #374151;
}

/* Main Content */
.container {
    background-color: #fff;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.08);
    padding: 1.5rem;
    margin-top: 30px;
    max-width: 1200px;
    width: 95%;
    margin-left: auto;
    margin-right: auto;
}

.header {
    display: grid;
    grid-template-columns: 1.5fr 3fr 1fr;
    padding: 1rem;
    background-color: #001f54;
    color: white;
    border-radius: 10px;
    font-weight: 600;
}

.category-row {
    display: grid;
    grid-template-columns: 1.5fr 3fr 1fr;
    align-items: center;
    padding: 1rem;
    margin-top: 10px;
    background-color: #fafafa;
    border-radius: 8px;
    transition: 0.3s ease;
    border: 1px solid #eee;
}

.category-row:hover {
    background-color: #f0f4ff;
    transform: scale(1.01);
}

.cell {
    font-size: 0.95rem;
    color: #374151;
    word-wrap: break-word;
}

/* Buttons */
.button-group {
    display: flex;
    justify-content: center;
}

.button {
    border: none;
    padding: 8px 16px;
    border-radius: 6px;
    cursor: pointer;
    font-weight: 500;
    transition: 0.3s;
    text-decoration: none;
    color: white;
    display: inline-block;
}

.delete-btn {
    background-color: #e11d48;
}
.delete-btn:hover {
    background-color: #b91c1c;
    transform: translateY(-2px);
}

/* Responsive Design */
@media (max-width: 768px) {
    .header, .category-row {
        grid-template-columns: 1fr;
        text-align: center;
    }
}
</style>
</head>

<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <div class="logo-details">
            <span class="logo_name">The Ecart</span>
        </div>
        <ul class="nav-links">
            <%
                String newmail = (String) session.getAttribute("email");
            %>
            <li>
                <a href="adminhome.jsp">
                    <i class='bx bx-grid-alt'></i>
                    <span class="links_name">Dashboard</span>
                </a>
            </li>
            <li>
                <a href="adminprofileserv?email=<%=newmail %>">
                    <i class='bx bx-user'></i>
                    <span class="links_name">Profile</span>
                </a>
            </li>
            <li>
                <a href="Allusers.jsp">
                    <i class='bx bx-user-circle'></i>
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
                    <i class='bx bx-package'></i>
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
                <a href="Queries.jsp" class="active">
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

    <!-- Main Section -->
    <section class="home-section">
        <nav>
            <div class="sidebar-button">
                <i class='bx bx-menu sidebarBtn'></i>
                <span class="dashboard">Customer Queries</span>
            </div>

            <div class="search-box">
                <input type="text" placeholder="Search queries...">
                <i class='bx bx-search'></i>
            </div>

            <div class="profile-details">
                <img src="https://t4.ftcdn.net/jpg/00/97/00/09/360_F_97000908_wwH2goIihwrMoeV9QF3BW6HtpsVFaNVM.jpg" alt="profile">
                <span class="admin_name"><%=newmail%></span>
                <i class='bx bx-chevron-down'></i>
            </div>
        </nav>

        <div class="home-content">
            <%
                DatabaseCon db = new DatabaseCon();
                ArrayList alist = db.showquery();
                session.setAttribute("Contactget", alist);
            %>

            <div class="container">
                <div class="header">
                    <div>Email</div>
                    <div>Message</div>
                    <div>Action</div>
                </div>

                <%
                    ArrayList al = (ArrayList) session.getAttribute("Contactget");
                    if (al != null) {
                        for (int i = 0; i < al.size(); i++) {
                            Contactget cat = (Contactget) al.get(i);
                %>
                <div class="category-row">
                    <div class="cell"><%=cat.getEmail()%></div>
                    <div class="cell"><%=cat.getMsg()%></div>
                    <div class="button-group">
                        <a class="button delete-btn" href="Deletequery?email=<%=cat.getEmail()%>">Delete</a>
                    </div>
                </div>
                <%
                        }
                    } else {
                %>
                <div style="text-align:center; padding: 2rem; color: #555;">
                    No queries found.
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </section>
</body>
</html>
