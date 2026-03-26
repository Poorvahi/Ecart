<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
       *{
            margin: 0%;
            padding: 0%;
            font-size: 15px;
            font-family:serif;
        }
        h2{
            text-align: center;
            font-size: 30px;
            font-family:'Times New Roman', Times, serif ;
            margin-bottom: 4%;

        }
        form{
            border: none;
            text-align: left;
            margin: 3% 25% 5% 25%;
            padding: 3%;
            border-radius: 3%;
            box-shadow: 0px 0px 10px rgb(28,29,29);
            
        }
        .all{
            margin-left: 8%;
        }
        .ip1 input{
            width: 45%;
            padding: 2%;
            border: none;
            border-bottom: 1px solid;
            outline: none;

        }
        .ip2 input{
            width: 45%;
            padding: 2%;
            border: none;
            border-bottom: 1px solid;
            outline: none;


        }
        .ip2 textarea{
            width: 90%;
            padding: 2%;
        }
        #add2{
            border: none;
            border-bottom: 1px solid;
            outline: none;
        }
        .choice select{
            width: 45%;
            padding: 2%;
            border: none;
            border-bottom: 1px solid;
            outline: none;
        }
        .ip3 input{
            width: 45%;
            padding: 2%;
            border: none;
            border-bottom: 1px solid;
            outline: none;
        }
        .ip3 select{
            
            display:none;

        }
        
        #p3{
            margin-left: 40%;
        }
        #p4{
            width: 45%;
            border: none;
            border-bottom: 1px solid;
            outline: none;
        }
        #p5{
            margin-left: 32%;
        }

        #btn{
        	margin-top: 5%;
            background-color: purple;
            color: white;
            margin-left: 25%;
            font-size: 20px;
            padding: 1% 15%;
            cursor: pointer;
            display: block;
        }
        #btn:hover{
            background-color:darkorchid;
            transition: all 1.89s;
        }

    </style>
</head>
<body>
    <form action="Registration" method="post">
          <%
                		String email = (String) session.getAttribute("email"); 
             %>
    <div class="all">
        <h2>Registration</h2>
        <div class="ip1">
            <input type="text" name="username" placeholder="Username" ><br><br>
            <input type="text" name="firstname" placeholder="Firstname" id="">
            <input type="text" name="lastname" placeholder="Lastname" id=""><br><br>
            <input type="password" name="password" placeholder="Password">
            <input type="password" name="cpassword" placeholder="Confirm Password" id=""><br><br>
		    <input type="email" name="email" placeholder="Email" value=<%=email %> readonly>
			<input type="number" name="otp2" placeholder="OTP">
	
            <input type="number" name="contact"  placeholder="Contact Number" id="" pattern="[6-9][0-9]{9}" maxlength="10" minlength="10" required
             title="Enter a valid 10-digit mobile number"><br><br>
        </div>
        <div class="gender">
            <Label>Gender</Label>
            <input type="radio" name="gender" placeholder="" id="gen" value="male">
            <label for="">Male</label>
            <input type="radio" name="gender" placeholder="" id="gen" value="female">
            <label for="">Female</label>
            <input type="radio" name="gender" placeholder="" id="gen" value="other">
            <label for="">Other</label><br><br>
        </div>
        
        <div class="ip2">
            <Label>DoB</Label>
            <input type="date" name="dob" id=""><br><br>
            <textarea name="address" placeholder="Address" id="add2"></textarea><br><br>
        </div>

        <div class="choice">
            <Label>State</Label>
            <Label id="p3">City</Label><br>
            <select name="state" id="">
                <option value="">Select</option>
                <option value="Gujarat">Gujarat</option>
                <option value="Madhya Pradesh">Madhya Pradesh</option>
                <option value="Maharashtra">Maharashtra</option>
                <option value="Rajasthan">Rajasthan</option>
            </select>

            <select name="city" id="">
            	<option value="">Select</option>
                <option value="Bhopal">Bhopal</option>
                <option value="Surat">Surat</option>
                <option value="Dewas">Dewas</option>
                <option value="Gwalior">Gwalior</option>
                <option value="Indore">Indore</option>
                <option value="Jabalpur">Jabalpur</option>
                <option value="Katni">Katni</option>
                <option value="Morena">Morena</option>
                <option value="Ratlam">Ratlam</option>
                <option value="Rewa">Rewa</option>
                <option value="Sagar">Sagar</option>
                <option value="Satna">Satna</option>
                <option value="Shivpuri">Shivpuri</option>
                <option value="Ujjain">Ujjain</option>
            </select><br><br>
        </div>
        <div class="ip3">
                <Label >Postal Code</Label>
                <input type="number"  name="postal" placeholder="Postal" id="">
                <select name="role" id="p4">
                    <option value="user">User</option>
                </select><br><br>
        </div>
        <button id="btn"> Submit </button>
        </div>
    </form>
 
    <script>
    document.querySelector("form").addEventListener("submit", function(event) {
        let email = document.querySelector("input[name='email']").value;
        let contact = document.querySelector("input[name='contact']").value;
        let password = document.querySelector("input[name='password']").value;
        let cpassword = document.querySelector("input[name='cpassword']").value;

        // Email 
        let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        // Contact 
        let contactPattern = /^[6-9]\d{9}$/;

        //Email validation
        if (!emailPattern.test(email)) {
            alert("Enter a valid email address.");
            event.preventDefault();
            return false;
        }

        // Contact validation
        if (!contactPattern.test(contact)) {
            alert("Enter a valid 10-digit mobile number starting with 6-9.");
            event.preventDefault();
            return false;
        }

        // Password match validation
        if (password !== cpassword) {
            alert(" Password do not match.");
            event.preventDefault();
            return false;
        }
    
    });
</script>
    
</body>
</html>