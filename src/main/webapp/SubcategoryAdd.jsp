<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Subcategory</title>
    <style>
        .contain{
            border: 2px solid black;
            box-shadow: 10px 10px 0px rgba(0,0,0,0);
            padding:2%;
            margin: 10% 30% 5% 30%;
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
	int cid=Integer.parseInt(request.getParameter("cid"));
	String cnm=request.getParameter("cnm");
%>
    <div class="contain">
        <h2>Add SubCategory</h2>
        <form action="SubCategory" method="post">
            <input type="text" name="subnm" placeholder="Subcategory_Name" id=""><br>
            <input type="number" name="cid" placeholder="Category_ID" id="" value="<%=cid%>" readonly><br>
            <input type="text" name="cnm" placeholder="Category_Name" id="" value="<%=cnm%>" readonly><br>
            <label for="">Product Image</label>
            <input type="file" name="" id=""><br>
            <input type="submit" value="Add" name="" id="b1">
        </form>

    </div>
</body>
</html>