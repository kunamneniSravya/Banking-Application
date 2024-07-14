<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Customer</title>
    <style>
      
        body {
            background: linear-gradient(to right, #87CEEB 30%, #ffffff 60%);
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
            padding:1px 0;
            display: flex;
            justify-content: flex-start;
            align-items: center;
            padding-left: 5px;
        }

        .logo img {
            height: 50px;
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

        .login-register {
            position: absolute;
            right: 35%;
            top: 50%;
            width: 70%;
            height:20%;
            max-width: 400px;
            max-height:750px;
            padding: 20px;
            height:-1px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            
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
 .login-register input[type="email"],
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
            padding: 6px 8px;
            background-color: #3322d1;
            color: white;
            width:100px;
            height:50px;
            border: none;
            position :absolute;
            bottom:2%;
            right:10%;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-register button[type="submit"]:hover {
            background-color: #45a049;
        }
.but {
  background-color: green;
  color: white;
  width:70px;
  height:30px;
  padding: 5px 10px;
  border: none;
  cursor: pointer;
  border-radius:10px;
  position:absolute;
  right:1%;
  top:1%;
  transition: background-color 0.3s, color 0.3s;
}

.but:hover {
  background-color: red;
 
}
        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }
  
    </style>
</head>
<body>
 <header>
        <div class="top-bar">
            <div class="logo">
                <img src="t.jpg" alt="Logo">
                
                 <button class="but" onclick="redirectToHomePage()">Back</button>
            </div>
        </div>
    </header>
   <div class="login-register">
    <form action="DeleteCustomerServlet" method="post">
        <label for="accountnumber">Account Number:</label>
        <input type="text" id="accountnumber" name="accountnumber" required><br>

        <button type="submit" id="loginButton" class="button">Delete Account</button>
    </form>
<script >

function redirectToHomePage() {
    window.location.href = 'AdminDashboardServlet'; // Redirect to deposit.html or your desired deposit page
  }

</script>
</body>
</html>
