<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dto.*" %>
<%@page import="com.dbs.*" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Overview</title>
<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        font-family: 'Segoe UI', sans-serif;
        background: #f4f6f8;
    }

    /* Top Bar */
    .search-bar-container {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        background: #ffffff;
        padding: 15px 20px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        z-index: 1000;
    }

    .search-input {
        width: 100%;
        max-width: 600px;
        padding: 12px 40px 12px 20px;
        font-size: 16px;
        border: 2px solid #ddd;
        border-radius: 25px;
        outline: none;
        transition: 0.3s ease;
    }

    .search-input:focus {
        border-color: #007BFF;
        box-shadow: 0 0 6px rgba(0, 123, 255, 0.2);
    }

    /* Suggestions box */
    .suggestions-box {
        position: absolute;
        top: 60px;
        left: 20px;
        width: 100%;
        max-width: 600px;
        background: white;
        border: 1px solid #ddd;
        border-top: none;
        box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        max-height: 200px;
        overflow-y: auto;
        z-index: 1000;
        padding: 1%;
    }

    .suggestions-box a {
        text-decoration: none;
        color: black;
    }

    .suggestion-item {
        padding: 12px 20px;
        cursor: pointer;
    }

    .suggestion-item:hover {
        background-color: #f0f0f0;
    }

    /* Body padding to avoid overlap */
    .page-content {
        padding-top: 100px;
        text-align: center;
    }

    /* Products container */
    .con2 {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: space-between;
    }

    /* Product card */
    .product-card {
        flex: 0 1 calc(25% - 20px); /* 4 per row */
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        border-radius: 8px;
        background: #fff;
        padding: 10px;
        transition: transform 0.3s ease;
        text-align: center;
    }

    .product-card:hover {
        transform: translateY(-5px);
    }

    .product-card img {
        width: 100%;
        height: auto;
        border-radius: 5px;
    }

    .product-name {
        display: block;
        margin: 10px 0 5px;
        font-weight: bold;
        color: #333;
        text-decoration: none;
    }

    .product-price {
        color: #27ae60;
        font-size: 16px;
        font-weight: 600;
    }

    /* Responsive: 2 per row on tablets */
    @media (max-width: 992px) {
        .product-card {
            flex: 0 1 calc(50% - 20px);
        }
    }

    /* Responsive: 1 per row on mobile */
    @media (max-width: 600px) {
        .product-card {
            flex: 0 1 100%;
        }

        .search-input {
            font-size: 14px;
        }

        .suggestions-box {
            left: 10px;
            right: 10px;
            width: auto;
        }
    }
</style>

<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>

<script>
function showHint(str) {
    if (str.length == 0) {
        document.getElementById("suggestions").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("suggestions").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET", "searchbarservlet?sug=" + encodeURIComponent(str), true);
        xmlhttp.send();
    }
}
</script>

<body>
	
	
            <%
                DatabaseCon db1 = new DatabaseCon();
                ArrayList productget = db1.showproducts();
                session.setAttribute("productget", productget);
            %>
            
               
	<%
                ArrayList al1 = (ArrayList) session.getAttribute("productget");
                if (al1 != null) {
                    for (int i = 0; i < al1.size(); i++) {
                        Productget gt = (Productget) al1.get(i);
            %>
    <!-- Search Bar -->
    <div class="search-bar-container">
        <input type="text" id="searchInput" class="search-input" placeholder="Search names..." onkeyup="showHint(this.value)">
        <div class="suggestions-box"><a href="Productusersearch2?pid=<%=gt.getProductid()%>" id="suggestions"></a></div>
    </div>
<%
                    }
                }
            %>
    <!-- Product Overview -->
    <section class="bg0 p-t-23 p-b-140">
        <div class="container">
            <div class="p-b-10">
                <h3 class="ltext-103 cl5">Product Overview</h3>
            </div>
<%
                ArrayList al2 = (ArrayList) session.getAttribute("productget");
                if (al2 != null) {
                    for (int i = 0; i < al2.size(); i++) {
                        Productget gt = (Productget) al2.get(i);
            %>
            <!-- Products container -->
            <div class="con2">
             <div class="product-card">
                    <div class="block2">
                        <div class="block2-pic hov-img0">
                            <a href="Productusersearch2?pid=<%= gt.getProductid() %>">
                                <img src="img/<%= gt.getImage() %>" alt="<%= gt.getProductname() %>">
                            </a>
                        </div>
                        <a href="Productusersearch2?pid=<%= gt.getProductid() %>" class="product-name"><%= gt.getProductname() %></a>
                        <div class="product-price">Price: <%= gt.getPrice() %></div>
                    </div>
                </div>
            <%
                    }
                }
            %>
            </div>

            <!-- Load more -->
            <div class="flex-c-m flex-w w-full p-t-45">
                <a href="#" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">Load More</a>
            </div>
        </div>
    </section>

</body>
</html>