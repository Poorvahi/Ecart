<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>

<!-- Tailwind CSS -->
<script src="https://cdn.tailwindcss.com"></script>

<!-- Google Font: Poppins -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">

<style>
    body {
        font-family: 'Poppins', sans-serif;
        
    }
</style>

</head>
<body class="bg-gradient-to-r from-blue-100 via-purple-100 to-pink-100 min-h-screen flex flex-col">

   <%@include file="Headerwithoutlogin.jsp" %>

    <!-- 🔹 Login Form Section -->
    <main class="flex-grow flex items-center justify-center px-4 py-20">
        <form action="Login2" method="post"
            class="bg-white/80 backdrop-blur-md shadow-2xl rounded-3xl px-10 py-10 w-full max-w-md border border-gray-200">

            <h1 class="text-3xl font-semibold text-center text-purple-700 mb-8 tracking-wide">
                Welcome Back To Login
            </h1>

            <!-- Username Field -->
            <div class="mb-6">
                <label for="username" class="block text-gray-700 font-medium mb-2">Username</label>
                <input type="text" id="username" name="username" placeholder="Enter your username"
                    class="w-full border-b-2 border-gray-300 focus:border-purple-600 outline-none py-2 px-2 transition-all duration-300 bg-transparent">
            </div>

            <!-- Password Field -->
            <div class="mb-4">
                <label for="password" class="block text-gray-700 font-medium mb-2">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password"
                    class="w-full border-b-2 border-gray-300 focus:border-purple-600 outline-none py-2 px-2 transition-all duration-300 bg-transparent">
            </div>

            <!-- Forgot Password -->
            <div class="text-right mb-6">
                <a href="Forgetpsswd.jsp" class="text-sm text-purple-600 hover:text-purple-800 transition-all duration-300">
                    Forgot password?
                </a>
            </div>

            <!-- Login Button -->
            <button type="submit"
                class="w-full bg-purple-600 text-white font-medium py-3 rounded-xl hover:bg-purple-700 transition-all duration-300 shadow-md">
                Sign In
            </button>

            <!-- Divider -->
            <div class="flex items-center my-6">
                <div class="flex-grow border-t border-gray-300"></div>
                <span class="mx-3 text-gray-500 text-sm">OR</span>
                <div class="flex-grow border-t border-gray-300"></div>
            </div>

            <!-- Sign Up Link -->
            <p class="text-center text-gray-700 text-sm">
                Not a member?
                <a href="Emailverifyregistration.jsp" class="text-purple-600 font-semibold hover:text-purple-800 transition-all duration-300">
                    Sign Up
                </a>
            </p>
        </form>
    </main>
<%@include file="Footer.jsp" %>
</body>
</html>