<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Success</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f5f5f5; /* Light gray background */
            color: #333;
            margin: 0;
        }

        .container {
            text-align: center;
            max-width: 600px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .alert-box {
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #dff0d8; /* Bootstrap success alert color */
            border: 1px solid #d6e9c6; /* Bootstrap alert border color */
            color: #3c763d; /* Bootstrap success text color */
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .alert-icon {
            font-size: 24px;
            margin-right: 10px;
            color: #3c763d; /* Success text color */
            animation: bounce 0.5s ease;
        }

        @keyframes bounce {
            0% { transform: scale(0); }
            70% { transform: scale(1.2); }
            100% { transform: scale(1); }
        }

        h1 {
            color: #2c3e50; /* Dark blue text color */
            font-size: 36px;
            margin-bottom: 20px;
        }

        p {
            margin-top: 15px;
        }

        p span {
            font-weight: bold;
            color: #2980b9; /* Blue color for account number and password */
        }

        .back-btn {
            padding: 10px 20px;
            background-color: #3498db; /* Blue background color */
            color: #fff; /* White text color */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            margin-top: 30px;
            display: inline-block; /* Ensures button aligns correctly */
        }

        .back-btn:hover {
            background-color: #2980b9; /* Darker blue color on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="alert-box">
            <span class="alert-icon" id="tickIcon">&#10003;</span>
            <p>Registration Successful!</p>
        </div>
        <p>Your account number: <span>${ac}</span></p>
        <p>Your password: <span>${pass}</span></p>
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
    </script>
</body>
</html>
