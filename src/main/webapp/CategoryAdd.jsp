<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        }
        #btn:hover{
            background-color: rosybrown;
            color: black;
            transition-duration: 0.8s;
        }

    </style>
</head>
<body>
    <div class="contain">
        <h2>Add Category</h2>
        <form action="Category" method="post">
            <input type="text" name="cnm" placeholder="Category_Name" id=""><br>
            <input type="submit" value="Add" name="" id="btn">
        </form>
    </div>
</body>
</html>