<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dto.*" %>
<%@page import="com.dbs.*" %>
<%@page import="java.util.ArrayList" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category</title>
    <style>
        .contain{
            border: 2px solid black;
            box-shadow: 10px 10px 0px rgba(0,0,0,0.8);
            margin: 5% 35% 10% 35%;
            padding:5%;
            background-color:lightyellow;
        }
        .contain h2{
            text-align: center;
        }
        
        form input{
            width: 100%;
            padding: 2%;
            margin-bottom: 5%;

        }
        #btn{
            width: 50%;
            background-color:maroon;
            color: white;
            display: block;
            align-items: center;
            margin-left: 20%;
            margin-top: 10%;
        }
        #btn:hover{
            background-color: rosybrown;
            color: black;
            transition-duration: 0.8s;
        }

    </style>
</head>
<body>
   <% 
       Categoryget u= (Categoryget) session.getAttribute("categoryget23");
		if(u!=null)
		{
	%>
    <div class="contain">
        <h2>Add Category</h2>
        <form action="Updatecategory" method="post">
            <input type="number" name="cid" placeholder="CategoryID_" value="<%=u.getCid()%>" readonly ><br>
            <input type="text" name="cnm" placeholder="Category_Name" id="" value="<%=u.getCnm()%>"><br>
            <input type="submit" value="UPDATE" name="" id="btn">
        </form> 	
    </div>
    <%
		} else{
			out.println("No record found at this category id!!");
		}
    %>
</body>
</html>