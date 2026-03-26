<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dto.*" %>
<%@page import="com.dbs.*" %>
<%@page import="java.util.ArrayList" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SubCategory</title>
    <style>
        .contain{
            border: 2px solid black;
            box-shadow: 10px 10px 0px rgba(0,0,0,0.7);
            padding:2%;
            margin: 10% 30% 5% 30%;
            background-color:lightyellow;
        } 
        .contain h2{
            text-align: center;
        }
        form label{
            margin-left: 15%;
            text-decoration: underline;
        }
        form input{
            width: 70%;
            padding: 1%;
            margin-bottom: 2%;
            display: flex;
            align-items: center;
            margin-left: 15%;
        }
        #b1{
            width: 50%;
            background-color:maroon;
            color: white;
            display: block;
            align-items: center;
            margin-left: 20%;
            padding: 2%;
        }
        #b1:hover{
            background-color: rosybrown;
            color: black;
            transition-duration: 0.8s;
        }
        

    </style>
</head>
<body>
   <% 
	 Subcategoryget u= (Subcategoryget) session.getAttribute("subcategoryget");
		if(u!=null)
		{
	%>
    <div class="contain">
        <h2>Add SubCategory</h2>
        <form action="Updatesubcategory" method="post">
            <input type="number" name="" placeholder="Subcategory_ID" id="" readonly><br>
            <input type="text" name="" placeholder="Subcategory_Name" id=""><br>
            <input type="number" name="" placeholder="Category_ID" id="" readonly><br>
            <label for="">Product Image</label>
            <input type="file" name="" id=""><br>
            <input type="submit" value="Update" name="" id="b1">
        </form>
    </div>
    <%
		} else{
			out.println("No record found at this subcategory id!!");
		}
    %>
</body>
</html>