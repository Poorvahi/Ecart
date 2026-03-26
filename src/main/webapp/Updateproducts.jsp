<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dto.*" %>
<%@page import="com.dbs.*" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Products</title>
<style>
        .main{
            box-shadow: 0 0  10px rgba(0,0,0, 0.8);
            margin: 5% 28% 10% 28%;
            padding: 2% 2% 2% 4%;
            align-items: center;
            
        }
        .main h2{
        
            align-items: center;
            margin-left: 35%;
        }
        .fields input{
            width: 43%;
            padding: 2%;
         
        }
        .fields label{
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
            
        }
        #b1{
            margin-left: 43%;
        }
        #b5{
            margin-left: 36%;
        }
        #ip1{
			 margin-bottom: 3%;
        }
        #desc{
            width: 92%;
            margin-bottom: 3%;
            padding: 2%;
            font-family: Arial, Helvetica, sans-serif;

        }
        #btn{
            color:white ;
            background-color: navy;
            margin-left: 25%;
        }
    </style>
</head>
<body>
<% 
		Productget u= (Productget) session.getAttribute("productget");
		if(u!=null)
		{
	%>
    <div class="main">
        <h2>Update Product</h2>
        <form action="Updateproduct" method="post">
            <div class="fields">
                <label for="">Product ID</label>
                <label for="" id="b5">Product Name</label><br>
                <input type="number" name="productid" placeholder="Product_ID" id=""  value="<%=u.getProductid()%>">
                <input type="text" name="productname" placeholder="Product_Name" id="" value="<%=u.getProductname()%>"><br><br>
                <div id="ip1">
                    <label for="">Price</label>
                    <label for="" id="b1">Category</label><br>
                     <input type="text" name="price" placeholder="Price" id="" value="<%=u.getPrice()%>">
                     <input type="text" name="subcategoryid" placeholder="Sub_Category" id="" value="<%=u.getCategory()%>"><br>
                </div>
                <textarea name="disc" placeholder="Description" id="desc" ><%=u.getDescription()%></textarea><br>
               <div id="ip2">
                    <label for="">Brand</label>
                    <label for="" id="b1">Quantity</label><br>
                    <input type="text" name="brand" placeholder="Brand" id="" value="<%=u.getBrand()%>">
                    <input type="number" name="quantity" placeholder="Quantity" id="" value="<%=u.getQuantity()%>"><br><br>
               </div>
               
                <div id="ip3">
                     <label for="">Total</label>
                     <label for="" id="b1">Subtotal</label><br>
                     <input type="number" name="total" placeholder="Total" id=""  value="<%=u.getTotal()%>">
                     <input type="number" name="subtotal" placeholder="Subtotal" id="" value="<%=u.getSubtotal()%>"><br><br>
                </div>
               <label for="">Images</label>
               <input type="file" name="image" id="" value="<%=u.getImage()%>">
                <input type="submit" value="Update" id="btn">
            </div>
        </form>
    </div>
      <%
		} else{
			out.println("No product found");
		}
    %>
</body>
</html>