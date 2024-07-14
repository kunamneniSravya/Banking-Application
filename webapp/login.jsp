<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
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

        .login-register {
            position: absolute;
            right: 36%;
            top: 30%;
            width: 60%;
            max-width: 350px;
            max-height:800px;
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
         position:absolute;
         bottom:10%;
         left:70%;
            padding: 9px 16px;
            background-color: #3322d1;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-register button[type="submit"]:hover {
            background-color: #45a049;
        }

        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }

        @keyframes slideInUp {
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

       

        .password-links {
            text-align: left;
        }

        .change-password {
            color: #007bff;
            text-decoration: none;
            
            transition: color 0.3s ease;
        }

        .change-password:hover {
            color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
 
  <section class="login-register">
            <div class="login-form">
                <h2>LOGIN</h2>
<form action="<%= request.getContextPath() %>/register/LoginServlet" method="post">
    <label for="accountNumber">Account Number:</label>
    <input type="text" id="accountNumber" name="accountnumber" required><br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br>
    <button type="submit" id="loginButton">Login</button><br>
    <div class="password-links">
        <a class="change-password" href="ChangePasswordServlet">Change Password</a><br>
    </div>
</form>

</body>
</html>
