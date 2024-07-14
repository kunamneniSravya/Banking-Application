<!DOCTYPE html>
<html>
<head>
    <title>Change Password</title>
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
             background: linear-gradient(to left, #87CEEB 30%, #ffffff 60%);
            width: 100%;
            color: white;
            padding: 10px 0;
            display: flex;
            justify-content: flex-start;
            align-items: center;
            padding-left: 10px;
        }

        .logo img {
            height: 30px;
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
            right: 36%;
            top: 30%;
            width: 60%;
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
            padding: 8px 12px;
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
        @keyframes slideIn {
            100% {
                opacity: 1;
            }
        }

       
        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 5px;
            opacity: 0;
            animation: fadeIn 1s forwards;
        }

        @keyframes fadeIn {
            100% {
                opacity: 1;
            }
        }

        p {
            text-align: center;
            color: Black;
            font-size: 13px;
            opacity: 0;
            animation: fadeIn 1s forwards;
            margin-top: 10px;
        }

        @keyframes fadeIn {
            100% {
                opacity: 1;
            }
        }
    </style>
</head>
<body>
<header>
        <div class="top-bar">
            <div class="logo">
                <img src="path_to_your_logo_image" alt="Logo">
                <span>ONLINE</span>
            </div>
        </div>
    </header>
<section class="login-register">
            <div class="login-form">
<form action="<%= request.getContextPath() %>/ChangePasswordServlet" method="post" onsubmit="return validatePassword()">
    <label for="accountnumber">Account Number:</label>
    <input type="text" id="accountnumber" name="accountnumber" required>
    <label for="oldPassword">Old Password:</label>
    <input type="password" id="oldPassword" name="oldPassword" required>
    <label for="newPassword">New Password:</label>
    <input type="password" id="newPassword" name="newPassword" required>
      <button type="submit" id="loginButton">Change Password</button><br><br><br><br><br>
    <div id="passwordError" class="error-message"></div>
 

</form>
<p><strong>NOTE:</strong> Password Should Contain more than 7 Characters and one Special Character</p>
<script>
    function validatePassword() {
        var newPassword = document.getElementById("newPassword").value;
        var passwordError = document.getElementById("passwordError");
        passwordError.innerHTML = "";

        if (newPassword.length < 8 || newPassword.length > 21) {
            passwordError.innerHTML = "Password should contain 8-21 characters.";
            return false;
        }

        var specialCharacterRegex = /[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-]/;
        if (!specialCharacterRegex.test(newPassword)) {
            passwordError.innerHTML = "Password should contain at least one special character.";
            return false;
        }

        return true;
    }
</script>
</body>
</html>
