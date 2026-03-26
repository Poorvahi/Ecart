<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dto.*" %>
<%@ page import="com.dbs.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>All Feedback | The Ecart Admin</title>

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
}

.nav-links {
    margin-top: 10px;
    padding-left: 0;
}

.nav-links li {
    list-style: none;
    height: 55px;
    width: 100%;
}

.nav-links li a {
    text-decoration: none;
    color: #e0e0e0;
    display: flex;
    align-items: center;
    justify-content: flex-start;
    gap: 10px;
    padding: 10px 0 10px 15px;
    font-size: 17px;
    font-weight: 500;
    transition: all 0.3s ease;
    border-radius: 10px;
}

.nav-links li a i {
    font-size: 20px;
    color: #ffffff;
    width: 25px;
    text-align: center;
}

.nav-links li a:hover,
.nav-links li a.active {
    background-color: #0a2a72;
    color: #fff;
}

/* Logout Button */
.nav-links li.log_out {
    position: absolute;
    bottom: 20px;
    width: 100%;
}

/* Navbar */
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

/* Main Container */
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

/* Table Styling */
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 4px 12px rgba(0,0,0,0.08);
}

th, td {
    text-align: center;
    padding: 12px;
    font-size: 0.95rem;
    color: #374151;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: #001f54;
    color: white;
    font-weight: 600;
}

tr:nth-child(even) {
    background-color: #f9fafb;
}

tr:hover {
    background-color: #eef2ff;
    transition: 0.3s;
}

/* Buttons */
.button {
    border: none;
    padding: 6px 12px;
    border-radius: 6px;
    cursor: pointer;
    font-weight: 500;
    transition: 0.3s;
    text-decoration: none;
    color: white;
}

.delete-btn {
    background-color: #e11d48;
}
.delete-btn:hover {
    background-color: #b91c1c;
    transform: translateY(-2px);
}

/* Responsive */
@media (max-width: 768px) {
    table, thead, tbody, th, td, tr {
        display: block;
    }

    th { display: none; }

    tr {
        margin-bottom: 15px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        padding: 10px;
    }

    td {
        display: flex;
        justify-content: space-between;
        border: none;
        padding: 8px 10px;
    }

    td::before {
        content: attr(data-label);
        font-weight: 600;
        color: #001f54;
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
            <li><a href="adminhome.jsp"><i class='bx bx-grid-alt'></i><span class="links_name">Dashboard</span></a></li>
            <li><a href="adminprofileserv?email=<%= newmail %>"><i class='bx bx-user'></i><span class="links_name">Profile</span></a></li>
            <li><a href="Allusers.jsp"><i class='bx bx-user-circle'></i><span class="links_name">Users</span></a></li>
            <li><a href="Allcategory.jsp"><i class='bx bx-list-ul'></i><span class="links_name">All Category</span></a></li>
            <li><a href="Allsubcategory.jsp"><i class='bx bx-list-ul'></i><span class="links_name">All SubCategory</span></a></li>
            <li><a href="Productservlet"><i class='bx bx-package'></i><span class="links_name">All Product</span></a></li>
            <li><a href="Allorders.jsp"><i class='bx bx-list-ul'></i><span class="links_name">All Orders</span></a></li>
            <li><a href="Showfeedback.jsp" class="active"><i class='bx bx-heart'></i><span class="links_name">Feedback</span></a></li>
            <li><a href="Queries.jsp"><i class='bx bx-cog'></i><span class="links_name">Queries</span></a></li>
            <li class="log_out"><a href="Logout.jsp"><i class='bx bx-log-out'></i><span class="links_name">Log out</span></a></li>
        </ul>
    </div>

    <!-- Main Section -->
    <section class="home-section">
        <nav>
            <div class="sidebar-button">
                <i class='bx bx-menu sidebarBtn'></i>
                <span class="dashboard">Customer Feedback</span>
            </div>

            <div class="search-box">
                <input type="text" placeholder="Search feedback...">
                <i class='bx bx-search'></i>
            </div>

            <div class="profile-details">
                <img src="https://t4.ftcdn.net/jpg/00/97/00/09/360_F_97000908_wwH2goIihwrMoeV9QF3BW6HtpsVFaNVM.jpg" alt="profile">
                <span class="admin_name"><%=newmail%></span>
                <i class='bx bx-chevron-down'></i>
            </div>
        </nav>

        <div class="home-content">
            <div class="container">
                <h2 style="color:#001f54; text-align:center;">All Customer Feedback</h2>

                <%
                    DatabaseCon db = new DatabaseCon();
                    ArrayList<Feedbackget> alist = db.showfeedback();
                    session.setAttribute("Feedbackget", alist);
                %>

                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Experience</th>
                            <th>Rating</th>
                            <th>Usability</th>
                            <th>Design</th>
                            <th>Performance</th>
                            <th>Suggestion</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                        ArrayList<Feedbackget> al = (ArrayList<Feedbackget>) session.getAttribute("Feedbackget");
                        if (al != null && !al.isEmpty()) {
                            for (Feedbackget cat : al) {
                    %>
                        <tr>
                            <td data-label="Name"><%=cat.getName()%></td>
                            <td data-label="Email"><%=cat.getEmail()%></td>
                            <td data-label="Experience"><%=cat.getExperience()%></td>
                            <td data-label="Rating"><%=cat.getRating()%></td>
                            <td data-label="Usability"><%=cat.getUsability()%></td>
                            <td data-label="Design"><%=cat.getDesign()%></td>
                            <td data-label="Performance"><%=cat.getPerformance()%></td>
                            <td data-label="Suggestion"><%=cat.getSuggestion()%></td>
                            <td><a class="button delete-btn" href="DeleteFeedback?email=<%=cat.getEmail()%>">Delete</a></td>
                        </tr>
                    <%
                            }
                        } else {
                    %>
                        <tr>
                            <td colspan="9" style="padding:2rem; color:#555;">No feedback found.</td>
                        </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</body>
</html>
