<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="register.AccountDetails" %>   
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Customer Dashboard</title>
<style>
   
    @keyframes fadeIn {
        100% {
            opacity: 1;
        }
    }


    .error {
        text-align: center;
        color: black;
        animation: blink 1s infinite alternate;
    }

    @keyframes blink {
        0% {
            opacity: 1;
        }
        100% {
            opacity: 0;
        }
    }
    
       body {
    background: linear-gradient(to right, #d8b206a9 30%, #ffffff 60%);
  }

.tiles-container {
    display: flex;
    justify-content: space-around;
    align-items: center;
    flex-wrap: wrap;
    padding:30px;
}
 header {
            background: linear-gradient(to left, #d8b206a9 30%, #ffffff 60%);
            width: 100%;
            color: black;
            display: flex;
            height:60px;
            justify-content: flex-start;
            align-items: center;
            padding-left: 10px;        
    		position: absolute;
    		top: 0;
    		left: 0;
    		z-index: 1000;
        }

        .logo img {
            height: 60px;
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
        h2{
        position:absolute;
        left:35%;
        }
        .balance{
          position:absolute;
        left:43%;
        top:15%;
          background-color: #fff;
            padding: 7px;
            border-radius: 10px;
            
       
            text-align: center;
       }

.tile {
    background: white;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    margin: 20px;
    padding: 20px;
    text-align: center;
    width: 200px;
}

.button{
   background: #6a0dad;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    padding: 10px;
    text-decoration: none;
    width:100px;
    positon:absolute;
    right:1%;
}
.button{
position:absolute;
right:5%;
}


.button a {
    color: white;
    text-decoration: none;
}



.tile img {
    width: 80px;
    height: 80px;
    margin-bottom: 20px;
}

.tile button {
    background: #6a0dad;
    border: none;
    border-radius: 5px;
    color: white;
    cursor: pointer;
    padding: 10px;
    text-decoration: none;
    width: 100%;
}


.button:hover {
    background: #FF0000;
}
.button {
  background-color: green;
  color: white;
  padding: 10px 20px;
  border: none;
  cursor: pointer;
  z-index: 1001;
  transition: background-color 0.3s, color 0.3s;
}

.but:hover {
  background-color: green;
 
}

.tile button a {
    color: white;
    text-decoration: none;
}
 .tiles-container button[type="button"]:hover {
            background-color: #45a049;
        }
    
</style>
 
</head>

    
    <%
        AccountDetails accountDetails = (AccountDetails) request.getAttribute("accountDetails");
        if (accountDetails != null) {
    %>
    <%
    if (request.getSession().getAttribute("loggedIn") != null && (boolean) request.getSession().getAttribute("loggedIn")) {
%>
<body>
    <header>
    		<div class="top-bar">
            	<div class="logo">
                <img src="t.jpg" alt="Logo">
            </div>
            </div>
      <button  type="button" class="button"><a href="<%= request.getContextPath() %>/LogutServlet">Logout</a></button>
    </header>
   <main>
    <h2>Welcome to your Dashboard, <%= accountDetails.getFullName() %>!</h2>
    <p class="balance"><strong>Current Balance:</strong> <%= accountDetails.getBalance() %></p><br><br><br><br><br><br>
    <div class="tiles-container">
        <div class="tile">
            <img src="account.png" alt="Account">
            <button class="but"><a href="<%= request.getContextPath() %>/AccountServlet">Account</a></button>
        </div>
        <div class="tile">
            <img src="transaction.png" alt="Transactions">
            <button class="but"><a href="<%= request.getContextPath() %>/TransactionServlet">Transactions</a></button>
        </div>
        <div class="tile">
            <img src="deposit.png" alt="Deposit">
            <button class="but"><a href="<%= request.getContextPath() %>/DS">Deposit</a></button>
        </div>
        <div class="tile">
            <img src="withdraw.jpg" alt="Withdraw">
            <button class="but"><a href="<%= request.getContextPath() %>/WithdrawServlet">Withdraw</a></button>
        </div>
        <div class="tile">
            <img src="dele.png" alt="Delete">
            <button class="but"><a href="<%= request.getContextPath() %>/DeleteServlet">Delete</a></button>
        </div>
    </div>
<%
    } else {
%>
    <p class="error">You are not logged in. Please log in to access the dashboard.</p>
<%
    }
%>
<%
        } else {
    %>
        <p class="error">Account details not available.</p>
    <%
        }
    %>
</main>
</body>
</html>
