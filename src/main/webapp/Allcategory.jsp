<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dto.*" %>
<%@page import="com.dbs.*" %>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Categories</title>
<link rel="stylesheet" href="css/home.css">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>

<style>
.newbtn a {
    border: 2px solid black;
    background-color: blue;
    color: white;
    text-decoration: none;
    padding: 15px;
    border-radius: 20px;
    font-weight: bold;
    margin-left: 2%;
}

.container {
    width: 100%;
    max-width: 1200px;
    background-color: #fff;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    padding: 1.5rem;
    margin-top: 20px;
    box-sizing: border-box;
}

/* 🔹 Improved Table Header */
.header {
    display: grid;
    grid-template-columns: 1fr 2fr 1fr 1fr 2fr;
    gap: 10px;
    padding: 1rem 0;
    font-weight: 600;
    background-color: #001f54; /* Dark blue header */
    color: white;
    border-radius: 10px;
    text-align: center;
    font-size: 1rem;
    letter-spacing: 0.5px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.1);
}

.category-row {
    display: grid;
    grid-template-columns: 1fr 1.5fr 1fr 1fr 2fr;
    gap: 10px;
    align-items: center;
    padding: 1rem 0;
    border-bottom: 1px solid #dcdde1;
    font-size: 1rem;
    color: #555;
    transition: background-color 0.3s ease;
}

.category-row:hover {
    background-color: rgba(0, 0, 0, 0.03);
}

.category-row:last-child {
    border-bottom: none;
}

.cell, .header > div {
    text-align: center;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.button-group {
    display: flex;
    gap: 8px;
    justify-content: center;
}

.button {
    padding: 6px 14px;
    border-radius: 8px;
    font-weight: 500;
    cursor: pointer;
    border: none;
    transition: all 0.3s ease;
    text-decoration: none;
    color: white;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

.update-btn {
    background-color: #3498db;
}
.update-btn:hover {
    background-color: #2980b9;
    transform: translateY(-2px);
}

.delete-btn {
    background-color: #e74c3c;
}
.delete-btn:hover {
    background-color: #c0392b;
    transform: translateY(-2px);
}

.add-sub-btn {
    background-color: #27ae60;
}
.add-sub-btn:hover {
    background-color: #1e8449;
    transform: translateY(-2px);
}
</style>
</head>
<body>
    <div class="sidebar">
        <div class="logo-details">
            <pre><span class="logo_name">      The Ecart</span></pre>
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
                <a href="adminprofileserv?email=<%=newmail %>" >
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
                <a href="Allcategory.jsp" class="active">
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
                <a href="Allorders.jsp" >
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

    <section class="home-section">
        <nav>
            <div class="sidebar-button">
                <i class='bx bx-menu sidebarBtn'></i>
                <span class="dashboard">Categories</span>
            </div>
            <div class="search-box">
                <input type="text" placeholder="Search...">
                <i class='bx bx-search'></i>
            </div>
            <%
                String newmail2 = (String) session.getAttribute("email");
            %>
            <div class="profile-details">
                <img src="https://t4.ftcdn.net/jpg/00/97/00/09/360_F_97000908_wwH2goIihwrMoeV9QF3BW6HtpsVFaNVM.jpg" alt="profile">
                <span class="admin_name"><%=newmail2 %></span>
                <i class='bx bx-chevron-down'></i>
            </div>
        </nav>

        <div class="home-content">
            <div class="newbtn">
                <a href="CategoryAdd.jsp">Add Category</a><br><br><br>
            </div>

            <%
                DatabaseCon db= new DatabaseCon();
                ArrayList alist=db.showAllcategory();
                session.setAttribute("Categoryget",alist);
            %>

            <div class="container">
                <div class="header">
                    <div>Category ID</div>
                    <div>Category Name</div>
                    <div>Update</div>
                    <div>Delete</div>
                    <div>Add Subcategory</div>
                </div>

                <%
                ArrayList al=(ArrayList)session.getAttribute("Categoryget");
                if(al !=null) {
                    for(int i=0; i<al.size(); i++) {
                        Categoryget cat=(Categoryget)al.get(i);
                %>
                <div class="category-row">
                    <div class="cell"><%=cat.getCid()%></div>
                    <div class="cell"><%=cat.getCnm()%></div>
                    <div class="button-group"><a class="button update-btn" href="Updatecategoryservlet?cid=<%=cat.getCid()%>">Update</a></div>
                    <div class="button-group"><a class="button delete-btn" href="DeleteCategory?cid=<%=cat.getCid()%>">Delete</a></div>
                    <div class="button-group"><a class="button add-sub-btn" href="SubcategoryAdd.jsp?cid=<%=cat.getCid()%>&cnm=<%= cat.getCnm()%>">Add Subcategory</a></div>
                </div>
                <%
                    }
                }
                %>
            </div>
        </div>
    </section>
</body>
</html>
