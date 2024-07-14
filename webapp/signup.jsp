<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
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
            margin-top: 10px;
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
            max-height:700px;
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
        .login-register input[type="password"] 
         .login-register input[type="account"]{
        
            width: calc(80% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 10px;
            transition: border-color 0.3s ease;
        }
 .login-register input[type="email"],
        .login-register input[type="password"]
    .login-register input[type="account"]
         {
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
    

        .login-register butt[type="submit"] {
            float: right;
            padding: 8px 16px;
            width:100px;
            background-color: #3322d1;
            color: white;
            border: none;
            position :absolute;
            bottom:2%;
            right:40%;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-register butt[type="submit"]:hover {
            background-color: #45a049;
        }
.button {
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
  top:1%;
  transition: background-color 0.3s, color 0.3s;
}

.button:hover {
  background-color: red;
 
}
.butt {
  background-color: #3322d1;
  width:70px;
height:30px;
  color: white;
  padding: 5px 10px;
  border: none;
  cursor: pointer;
  border-radius:10px;
 
  transition: background-color 0.3s, color 0.3s;
}

.butt:hover {
  background-color: green;
 
}
        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }
         label {
            font-family: Arial, sans-serif;
            font-size: 14px;
        }
        select {
            
            width: calc(85% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 10px;
            transition: border-color 0.3s ease;
        }
    </style>
</head>
<body>
    <header>
        <div class="top-bar">
            <div class="logo">
                <img src="t.jpg" alt="Logo">
              
                 <button class="button" onclick="redirectToHomePage()">Back</button>
            </div>
        </div>
    </header>
</head>
<body>

<form method="post" action="<%= request.getContextPath() %>/RegisterServlet" onsubmit="return validateForm()" enctype="multipart/form-data">
    <div class="login-register">
    <label for="full_name">Full Name:</label>
    <input type="text" id="full_name" name="full_name" required><br>
   
  
    <label for="address">Address:</label>
    <input type="text" id="address" name="address" required><br>
 
 
    <label for="email_id">Email ID:</label>
    <input type="email" id="email_id" name="email_id" required><br>

    <label for="phone">Phone Number:</label>
    <input type="text" id="phone" name="phone" required><br>
  
 <label for="account">Account Type:</label>
 
<select id="account" name="account"  required>
    <option value="" disabled selected>Select Account Type</option>
    <option value="savings">Savings Account</option>
    <option value="current">Current Account</option>
</select><br>
 
   
    <label for="balance">Balance:</label>
    <input type="text" id="balance" name="balance" required><br>
 
   
    <label for="dob">Date of Birth:</label>
    <input type="text" id="dob" name="dob" placeholder="YYYY-MM-DD" required><br>
    
  
    <label for="id_proof">ID Proof:</label>
    <input type="file" id="id_proof" name="id_proof" accept="image/*"><br>
  
    <div id="formError" class="error-message"></div>
    <p><strong>Note:</strong> Id proof should be in PNG format only</p>
    <br>
      <button type="submit" id="loginButton" class="butt">Register</button>
    </div>
</form>
<script>

    function validateForm() {
        var balance = document.getElementById("balance").value;
        var fileInput = document.getElementById("id_proof");
        var filePath = fileInput.value;
        var accountType = document.getElementById("account").value.toLowerCase();
        var allowedExtensions = /(\.png)$/i;
        var formError = document.getElementById("formError");
        formError.innerHTML = "";

        if (isNaN(balance) || parseFloat(balance) < 1000) {
            formError.innerHTML = "Balance should be a numeric value and equal or above 1000";
            return false;
        }

        var email = document.getElementById("email_id").value;
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            formError.innerHTML = "Invalid email address";
            return false;
        }

        if (!allowedExtensions.exec(filePath)) {
            formError.innerHTML = "Please upload file in PNG format only.";
            fileInput.value = '';
            return false;
        }

        if (accountType !== "savings" && accountType !== "current") {
            formError.innerHTML = "Account should be either in Saving account or Current account";
            return false;
        }

        var phoneNumber = document.getElementById("phone").value;
        if (phoneNumber.length !== 10 || isNaN(phoneNumber)) {
            formError.innerHTML = "Phone number should be 10 digits";
            return false;
        }

        return true;
    }
    
    function redirectToHomePage() {
        window.location.href = 'AdminDashboardServlet'; // Redirect to deposit.html or your desired deposit page
      }
</script>

</body>
</html>
