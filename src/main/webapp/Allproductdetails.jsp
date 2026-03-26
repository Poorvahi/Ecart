<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dto.*" %>
<%@page import="com.dbs.*" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Products | The Ecart Admin</title>
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

        .search-box input {
            border: 1px solid #ddd;
            border-radius: 20px;
            padding: 6px 14px;
            outline: none;
        }

        .search-box i {
            color: #001f54;
        }

        .profile-details span {
            font-weight: 600;
            color: #374151;
        }

        /* Table / Product Section */
        .container {
            width: 100%;
            max-width: 1500px;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
            padding: 1.5rem;
            box-sizing: border-box;
            margin-top: 30px;
            margin-left: auto;
            margin-right: auto;
        }

        .header, .product-row {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
            gap: 10px;
            text-align: center;
            font-weight: 600;
        }

        .header {
            padding: 1rem 0;
            background-color: #001f54;
            color: #fff;
            border-radius: 10px;
        }

        .product-row {
            background-color: #fafafa;
            padding: 1rem 0;
            border-radius: 8px;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }

        .product-row:hover {
            background-color: #f0f4ff;
        }

        .cell {
            padding: 8px;
            color: #374151;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .cell img {
            width: 60px;
            height: 60px;
            border-radius: 10px;
            object-fit: cover;
        }

        .action-btn {
            padding: 6px 12px;
            border-radius: 8px;
            font-weight: 500;
            color: #fff;
            text-decoration: none;
            transition: 0.3s;
        }

        .bg-blue-500 { background-color: #3498db; }
        .bg-blue-500:hover { background-color: #2980b9; }

        .bg-red-500 { background-color: #e11d48; }
        .bg-red-500:hover { background-color: #b91c1c; }

        .newbtn {
            margin: 20px 0;
            text-align: right;
        }

        .newbtn a {
            border: none;
            background-color: #001f54;
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
            transition: 0.3s;
        }

        .newbtn a:hover {
            background-color: #0a2a72;
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
            <li><a href="adminprofileserv?email=<%=newmail %>"><i class='bx bx-user'></i><span class="links_name">Profile</span></a></li>
            <li><a href="Allusers.jsp"><i class='bx bx-user-circle'></i><span class="links_name">Users</span></a></li>
            <li><a href="Allcategory.jsp"><i class='bx bx-list-ul'></i><span class="links_name">All Category</span></a></li>
            <li><a href="Allsubcategory.jsp"><i class='bx bx-list-ul'></i><span class="links_name">All SubCategory</span></a></li>
            <li><a href="Productservlet" class="active"><i class='bx bx-package'></i><span class="links_name">All Product</span></a></li>
             <li><a href="Allorders.jsp"><i class='bx bx-list-ul'></i><span class="links_name">All Orders</span></a></li>
            <li><a href="Showfeedback.jsp"><i class='bx bx-heart'></i><span class="links_name">Feedback</span></a></li>
            <li><a href="Queries.jsp"><i class='bx bx-cog'></i><span class="links_name">Queries</span></a></li>
            <li class="log_out"><a href="Logout.jsp"><i class='bx bx-log-out'></i><span class="links_name">Log out</span></a></li>
        </ul>
    </div>

    <!-- Main Section -->
    <section class="home-section">
        <nav>
            <div class="sidebar-button">
                <i class='bx bx-menu sidebarBtn'></i>
                <span class="dashboard">All Products</span>
            </div>

            <div class="search-box">
                <input type="text" placeholder="Search products...">
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
            <div class="container">
                <div class="newbtn">
                    <a href="Addproducts.jsp">Add Product</a>
                </div>

                <!-- Table Header -->
                <div class="header">
                    <div>Image</div>
                    <div>ID</div>
                    <div>Name</div>
                    <div>Price</div>
                    <div>Category</div>
                    <div>Brand</div>
                    <div>Quantity</div>
                    <div>Total</div>
                    <div>Update</div>
                    <div>Delete</div>
                </div>

                <!-- Product Rows -->
                <%
                    DatabaseCon db = new DatabaseCon();
                    ArrayList productget = db.showproducts();
                    session.setAttribute("productget", productget);

                    ArrayList al = (ArrayList) session.getAttribute("productget");
                    if (al != null) {
                        for (int i = 0; i < al.size(); i++) {
                            Productget gt = (Productget) al.get(i);
                %>
                <div class="product-row">
                    <div class="cell"><img src="img/<%=gt.getImage()%>" alt="Product"></div>
                    <div class="cell"><%=gt.getProductid()%></div>
                    <div class="cell"><%=gt.getProductname()%></div>
                    <div class="cell"><%=gt.getPrice()%></div>
                    <div class="cell"><%=gt.getCategory()%></div>
                    <div class="cell"><%=gt.getBrand()%></div>
                    <div class="cell"><%=gt.getQuantity()%></div>
                    <div class="cell"><%=gt.getTotal()%></div>
                    <div class="cell"><a href="Updateproductservlet?pid=<%=gt.getProductid()%>" class="action-btn bg-blue-500">Update</a></div>
                    <div class="cell"><a href="DeleteProduct?productid=<%=gt.getProductid()%>" class="action-btn bg-red-500">Delete</a></div>
                </div>
                <%      }
                    }
                %>
            </div>
        </div>
    </section>
</body>
</html>
