<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dto.*" %>
<%@page import="com.dbs.*" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .profile-details img {
            height: 20%;
            width: 20%;
            border-radius: 6px;
            object-fit: cover;
        }
        .profile-details{
            text-align: center;
        }
        .container{
            margin: 5% 25% 5% 25%;
            padding: 5%;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.8);
            border-radius: 20px;
        }
        .data input{
            width: 45%;
            padding: 2%;
            outline: none;
            border: none;
            border-bottom: 1px solid;
            margin: 10px 0;
        }
        #a1{
            margin-left: 40%;
        }
        #a2{
            margin-left: 42%;
        }
        #a3{
            margin-left: 36%;
        }
        #a4{
            margin-left: 45%;
        }
        #a5{
            margin-left: 38%;
        }
        #n1{
            width: 95%;
        }
        #btn{
            text-align: center;
            border: 2px solid;
            margin-left: 35%;
            margin-top: 5%;
            background-color: antiquewhite;
            font-weight: bold;
            width: 30%;
            color: black;
        }
        #btn:hover{
            background-color: blueviolet;
            color: white;
            transition: all 0.8s;
            cursor: pointer;
        }
    </style>
</head>
<body>
<% 
		Userget u= (Userget) session.getAttribute("getuser");
		if(u!=null)
		{
	%>
    <div class="container">
        <div class="profile-details">
        <img src="https://t4.ftcdn.net/jpg/00/97/00/09/360_F_97000908_wwH2goIihwrMoeV9QF3BW6HtpsVFaNVM.jpg"
            alt="profile">
        </div>
        
        <div class="data">
            <form action="UpdateUser" method="post">
                <div>
                    <label for="">Username</label><br>
                    <input type="text" name="username" id="n1" readonly value="<%=u.getUsername()%>"> 
                </div>
                <div>
                    <label for="">FirstName</label>
                    <label for="" id="a1">LastName</label><br>
                    <input type="text" name="firstname" id="" value="<%=u.getFirstname()%>">
                    <input type="text" name="lastname" id="" value="<%=u.getLastname()%>">
                </div>
                <div>
                    <label for="">Password</label>
                    <label for="" id="a1">Email</label><br>
                    <input type="text" name="password" id="" value="<%=u.getPassword()%>">
                    <input type="text" name="email" id="" value="<%=u.getEmail()%>">
                </div>
                <div>
                    <label for="">Mobile</label>
                    <label for="" id="a2">Gender</label><br>
                    <input type="text" name="contact" id="" value="<%=u.getContact()%>">
                    <input type="text" name="gender" id="" value="<%=u.getGender()%>">
                </div>
                <div>
                    <label for="">Date of Birth</label>
                    <label for="" id="a3">Address</label><br>
                    <input type="text" name="dob" id="" value="<%=u.getDob()%>">
                    <input type="text" name="address" id="" value="<%=u.getAddress()%>">
                </div>
                <div>
                    <label for="">State</label>
                    <label for="" id="a4">City</label><br>
                    <input type="text" name="state" id="" value="<%=u.getState()%>">
                    <input type="text" name="city" id="" value="<%=u.getCity()%>">
                </div>
                <div>
                    <label for="">Postal Code</label>
                    <label for="" id="a5">Role</label><br>
                    <input type="text" name="postal" id="" value="<%=u.getPostal()%>">
                    <input type="text" name="role" id="" value="<%=u.getRole()%>">
                </div>
                <input type="submit" name="" value="Update" id="btn">
            </form>
        </div>
    </div>
    <%
		} else{
			out.println("No record found at this username");
		}
    %>
</body>
</html>