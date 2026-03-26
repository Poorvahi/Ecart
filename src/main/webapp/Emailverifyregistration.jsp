<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Email Verification</title>
<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: url("https://t3.ftcdn.net/jpg/03/86/83/28/360_F_386832865_KzXYSvOLzUhztbeVD5d6pi2MBMqwBGAL.jpg") no-repeat center center/cover;
        position: relative;
    }

    /* Dark overlay */
    body::before {
        content: "";
        position: absolute;
        top: 0; left: 0;
        width: 100%; height: 100%;
        background: rgba(0, 0, 0, 0.65);
        z-index: 0;
    }

    .form-container {
        position: relative;
        z-index: 1;
        background: rgba(255, 255, 255, 0.08);
        backdrop-filter: blur(12px);
        -webkit-backdrop-filter: blur(12px);
        padding: 40px 30px;
        border-radius: 18px;
        box-shadow: 0 8px 32px rgba(0,0,0,0.5);
        width: 460px;
        text-align: center;
        color: white;
        animation: fadeIn 1s ease;
    }

    h2 {
        margin-bottom: 25px;
        font-size: 26px;
        font-weight: 600;
        letter-spacing: 1px;
        color: #00ffcc;
        text-shadow: 0 0 8px #00ffcc;
    }

    label {
        display: block;
        text-align: left;
        margin-bottom: 8px;
        font-weight: 500;
        color: #e0e0e0;
    }

    input[type="email"] {
        width: 100%;
        padding: 12px 15px;
        margin-bottom: 20px;
        border: none;
        border-radius: 10px;
        outline: none;
        background: rgba(255,255,255,0.15);
        color: white;
        font-size: 15px;
        transition: all 0.3s ease;
    }

    input[type="email"]::placeholder {
        color: rgba(255,255,255,0.6);
    }

    input[type="email"]:focus {
        background: rgba(255,255,255,0.25);
        box-shadow: 0 0 8px #00ffcc;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        border: none;
        background: linear-gradient(135deg, #00ffcc, #0099ff);
        color: black;
        font-size: 16px;
        border-radius: 10px;
        cursor: pointer;
        font-weight: 600;
        transition: all 0.3s ease;
        text-transform: uppercase;
    }

    input[type="submit"]:hover {
        transform: scale(1.05);
        background: linear-gradient(135deg, #0099ff, #00ffcc);
        box-shadow: 0 5px 15px rgba(0,255,200,0.4);
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    @media (max-width: 420px) {
        .form-container {
            width: 90%;
            padding: 30px 20px;
        }
    }
</style>
</head>
<body>

<div class="form-container">
    <h2>📧 Email Verification</h2>
    <form action="SendOTPregistration" method="post">
        <label for="email">Enter your Email-ID</label>
        <input type="email" id="email" name="email" placeholder="example@gmail.com" required>
        <input type="submit" value="Send OTP"> 
    </form>
</div>

</body>
</html>
