<%@ page import="java.util.List" %>
<%@ page import="register.Customer" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modify Customer Details</title>
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
            top: 15%;
            width: 70%;
            max-width: 400px;
            max-height:800px;
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
            padding: 8px 16px;
            background-color: #3322d1;
            color: white;
            border: none;
            position :absolute;
            bottom:2%;
            right:10%;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-register button[type="submit"]:hover {
            background-color: #45a049;
        }
.button {
  background-color: green;
  color: white;
  padding: 5px 10px;
  border: none;
  cursor: pointer;
  border-radius:10px;
  position:absolute;
  right:1%;
  transition: background-color 0.3s, color 0.3s;
}
.but{
background-color: green;
width:70px;
height:30px;
  color: white;
  padding: 5px 10px;
  border: none;
  cursor: pointer;
  border-radius:10px;
  position:absolute;
  right:1%;
  transition: background-color 0.3s, color 0.3s;
postion:absolute;
top:2%;
}
.but:hover {
  background-color: red;
 
}
.button:hover {
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
              
                 <button class="but" id="but" onclick="redirectToHomePage()">Back</button>
            </div>
        </div>
    </header>
    
<div class="login-register">
    <form method="post" action="<%= request.getContextPath() %>/ModifyCustomerServlet">
        <label for="accountnumber">Account Number:</label>
        <input type="text" id="accountnumber" name="accountnumber" value=""><br>

        <label for="full_name">Full Name:</label>
        <input type="text" id="full_name" name="full_name" value="" required><br>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" value="" required><br>

        <label for="email_id">Email ID:</label>
        <input type="email" id="email_id" name="email_id" value="" required><br>
        
        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" value="" required><br>

        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" value="" required><br>
        <div id="formError" class="error-message"></div>
          <button type="submit" id="loginButton" class="button">Modify</button>
    </form>

    <div id="formError"></div>

    <script>
        function validateForm() {
            var phoneNumber = document.getElementById("phone").value;
            if (phoneNumber.length !== 10 || isNaN(phoneNumber)) {
                document.getElementById("formError").innerHTML = "Phone number should be 10 digits";
                return false;
            }

            return true;
        }
        
        
        function redirectToHomePage() {
            <a class="back-btn" onclick="redirectToAdminDashboard()">Go to Admin Dashboard</a>
            
            </div>

            <script>
                // Animate the tick icon after the page loads
                window.onload = function() {
                    var tickIcon = document.getElementById('tickIcon');
                    tickIcon.style.animation = 'bounce 0.5s ease';
                };

                // Function to redirect to the admin dashboard
                function redirectToAdminDashboard() {
                	  window.location.href = '<%= request.getContextPath() %>/AdminDashboardServlet';
                }
          }
    </script>
</body>
</html>