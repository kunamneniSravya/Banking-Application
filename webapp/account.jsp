<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="register.AccountDetails" %>

<html>
<head>
    <title>Account Details</title>
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
            color: black;
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
        table {
            width: 80%;
            margin: auto;
            position:absolute;
            top:20%;
            margin-bottom: 70px;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Slight shadow effect */
            

        th, td {
            border: 1px solid #ccc; /* Light gray border */
            
            padding: 12px;
            text-align: left;
            transition: background-color 0.3s ease; /* Smooth background color transition */
        }

        th {
            background-color: green; /* Same color as Add Customer page */
            color: white; /* White header text color */
        }

        tr:hover {
            background-color: #f1f1f1; /* Light gray background on hover */
            color: #333; /* Dark gray text color on hover */
            animation: fadeIn 0.5s ease-in-out; /* Fade-in animation on hover */
        }
       
        @keyframes slideInUp {
            100% {
                opacity: 1;
                transform: translateY(0);
            }
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
<table border="1">
        <thead>
            <tr>
                <th>Account Number</th>
                <th>Full Name</th>
                <th>Address</th>
                <th>Email ID</th>
                <th>Date of Birth</th>
                <th>Phone</th>
                <th>Balance</th>
            </tr>
        </thead>
        <tbody>
            <%
            AccountDetails accountDetails = (AccountDetails) request.getAttribute("accountDetails");
            if (accountDetails != null) { %>
           
                <tbody>
                    <tr>
                        <td><%= accountDetails.getAccountNumber() %></td>
                        <td><%= accountDetails.getFullName() %></td>
                        <td><%= accountDetails.getAccount() %></td>
                        <td><%= accountDetails.getAddress() %></td>
                        <td><%= accountDetails.getEmailId() %></td>
                        <td><%= accountDetails.getPhone() %></td>
                        <td><%= accountDetails.getBalance() %></td>
                    </tr>
                </tbody>
            </table>
        <% } else { %>
            <p class="error">Account details not available.</p>
        <% } %>

    </div>
</body>
</html>
