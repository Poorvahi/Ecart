<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.dto.*" %>
<%@page import="com.dbs.*" %>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Orders</title>
<link rel="stylesheet" href="css/home.css">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>

<style>
body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f4f6f9;
}

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
    margin: 20px auto;
    box-sizing: border-box;
    overflow-x: auto;
}

/* ---------- Header and Table Layout ---------- */
.header,
.category-row {
    display: grid;
    grid-template-columns: 1fr 1.5fr 1fr 2fr 1fr 2fr 2fr 1.5fr;
    gap: 10px;
    align-items: center;
    text-align: center;
    font-size: 1rem;
}

.header {
    font-weight: 600;
    background-color: #001f54; /* Dark blue header */
    color: white;
    border-radius: 10px;
    letter-spacing: 0.5px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.1);
    padding: 1rem 0;
}

.category-row {
    border-bottom: 1px solid #dcdde1;
    color: #555;
    padding: 1rem 0;
    transition: background-color 0.3s ease;
}

.category-row:hover {
    background-color: rgba(0, 0, 0, 0.03);
}

.category-row:last-child {
    border-bottom: none;
}

.cell, .header > div {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

/* ---------- Buttons ---------- */
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


 
img.order-img {
    width: 70px;
    height: 70px;
    border-radius: 6px;
    object-fit: cover;
    box-shadow: 0 3px 4px rgba(0,0,0,0.15);
    transition: transform 0.3s ease; /* optional: smooth hover effect */
}

img.order-img:hover {
    transform: scale(1.1); /* optional: slightly enlarge on hover */
}

 	
</style>
</head>

<body>
    <!-- ---------- Sidebar ---------- -->
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
                    <i class='bx bx-category'></i>
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
                <a href="Allorders.jsp" class="active">
                    <i class='bx bx-cart'></i>
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
                    <i class='bx bx-help-circle'></i>
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

    <!-- ---------- Main Section ---------- -->
    <section class="home-section">
        <nav>
            <div class="sidebar-button">
                <i class='bx bx-menu sidebarBtn'></i>
                <span class="dashboard">Orders</span>
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
            <%
                DatabaseCon db = new DatabaseCon();
                ArrayList alist = db.showallorders();
                session.setAttribute("Orderget", alist);
            %>

            <div class="container">
                <div class="header">
                    <div>Order ID</div>
                    <div>Payment ID</div>
                    <div>Price</div>
                    <div>Email</div>
                    <div>Product ID</div>
                    <div>Product Name</div>
                    <div>Created Date & Time</div>
                    <div>Image</div>
                </div>

                <%
                ArrayList al = (ArrayList)session.getAttribute("Orderget");
                if (al != null && !al.isEmpty()) {
                    for (int i = 0; i < al.size(); i++) {
                        Orderget cat = (Orderget) al.get(i);
                %>
                <div class="category-row">
                    <div class="cell"><%=cat.getOrder_id()%></div>
                    <div class="cell"><%=cat.getPayment_id()%></div>
                    <div class="cell"><%=cat.getPrice()%></div>
                    <div class="cell"><%=cat.getEmail()%></div>
                    <div class="cell"><%=cat.getProduct_id()%></div>
                    <div class="cell"><%=cat.getProduct_name()%></div>
                    <div class="cell"><%=cat.getCreateddate()%></div>
                    <div class="cell">
                        <img class="order-img" src="img/<%=cat.getImage()%>" alt="Product">
                    </div>
                </div>
                <%
                    }
                } else {
                %>
                <p style="text-align:center; color:red; padding:1rem;">No orders found.</p>
                <%
                }
                %>
            </div>
        </div>
    </section>
</body>
</html>
