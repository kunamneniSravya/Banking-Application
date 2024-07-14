<%@ page import="java.util.List" %>
<%@ page import="register.Transaction" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Transaction History</title>
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
 .button{
         background-color: #3322d1;
         padding:10px;
  width:100%
  max-width:50px;
  max-height:50px;
  color:white;
  border-radius:5px;
  align-items:center;
  position:absolute;
  bottom:10%;
  left:45%;
 
  
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

.button[type="submit"]:hover {
  background-color: green;
  
}
        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        }

        .button1[type="submit"] {
            float: right;
            padding: 8px 16px;
            background-color: #3322d1;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button1[type="submit"]:hover {
            background-color: #45a049;
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

        .tile {
            margin: auto; 
            text-align: center; 
        }

        img {
            max-width: 8%;
            height: auto;
        }
   
@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(50px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

@keyframes fadeInLeft {
    from {
        opacity: 0;
        transform: translateX(-50px);
    }
    to {
        opacity: 1;
        transform: translateX(0);
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
<% 
List<Transaction> transactionList = (List<Transaction>) request.getAttribute("transactions");
System.out.println("Transaction list size in JSP: " + (transactionList != null ? transactionList.size() : "null"));
if (transactionList != null && !transactionList.isEmpty()) {
%>
    <table border="1">
        <thead>
            <tr>
                <th>Account Number</th>
                <th>Amount</th>
                <th>Transaction Type</th>
                <th>Transaction Time</th>
            </tr>
        </thead>
        <tbody>
            <% for (Transaction transaction : transactionList) { %>
                <tr>
                    <td><%= transaction.getAccountNumber() %></td>
                    <td><%= transaction.getAmount() %></td>
                    <td><%= transaction.getTransactionType() %></td>
                    <td><%= transaction.getTransactionTime() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
<% } else { %>
    <p>No transactions found.</p>
<% } %>

<br>
<form action="MiniServlet" method="get">
    <button type="submit" class="button" value="Print in PDF">Print in PDF</button>
</form>
</body>
</html>
