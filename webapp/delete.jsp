<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Account</title>
<style>
    body {
           background: linear-gradient(to right, #d8b206a9 30%, #ffffff 60%);
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
        }

        header {
            background: linear-gradient(to left, #d8b206a9 30%, #ffffff 60%);
            width: 100%;
            color: white;
            padding: 0px 0;
            display: flex;
            justify-content: flex-start;
            align-items: center;
            padding-left: 10px;
        }

        .logo img {
            height: 60px;
            padding-right: 20px;
        }

        .logo span {
            color: black;
            font-weight: 200;
            font-size: large;
            margin-left: 10px;
        }

        main {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 50px;
            width: 100%;
        }

        h1 {
            color: #333;
            margin-bottom: 50px;
        }
         .back-button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            margin-left: auto;
        	margin-right: 30px;
            display: inline-block;
            font-size: 12x;
            cursor: pointer;
            border-radius: 5px;
            z-index: 1001;
  			transition: background-color 0.3s, color 0.3s;
        }

        .back-button:hover {
            background-color: red;
        }

        .login-register {
            position: absolute;
            right: 36%;
            top: 30%;
            width: 60%;
            height:30%;
            max-width: 350px;
           
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            background: rgba(255, 255, 255, 0.7);
            text-align: center;
        }

        .login-register h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .login-register label {
            display: block;
            margin-bottom: 5px;
            color: black;
            font-weight: bold;
            text-align: left;
        }

        .login-register input[type="text"],
        .login-register input[type="password"] {
            width: calc(80% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 10px;
            transition: border-color 0.3s ease;
        }

        .login-register input[type="text"]:focus,
        .login-register input[type="password"]:focus {
            border-color: #333;
        }

        .login-register button[type="submit"] {
            float: right;
            padding: 15px 16px;
            background-color: #3322d1;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            position:absolute;
            overflow:hidden;
            z-index:1;
            transform: translateY(2px);
        }

        .login-register button[type="submit"]:hover {
            background-color: red;
        }

        .clearfix::after {
            content: "";
            clear: both;
            display: table;submit
        }
</style>
</head>
<body>
    <header>
    	<div class="top-bar">
        	<div class="logo">
            <img src="t.jpg" alt="Logo">
        </div>
        </div>

        <button class="back-button" onclick="history.back()">Back</button>
    </header>

   <section class="login-register">
            <div class="login-form">
    <h2>Delete Account</h2>

    <form action="<%= request.getContextPath() %>/DeleteServlet" method="post">
        <p>Are you sure you want to close your account?</p>
        <button type="submit">Yes, Close Account</button>
    </form>
</body>
</html>