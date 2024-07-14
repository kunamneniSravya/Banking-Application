<%@ page import="java.util.List" %>
<%@ page import="register.Customer" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Customer Details</title>
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
  top:2%;
  transition: background-color 0.3s, color 0.3s;
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
.but:hover {
  background-color: red;
 
}
}
.button:hover {
  background-color: red;
 
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
    

    <table border="1">
        <thead>
            <tr>
                <th>Account Number</th>
                <th>Full Name</th>
                <th>Address</th>
                <th>Email ID</th>
                <th>Date of Birth</th>
                <th>Phone</th>
            </tr>
        </thead>
        <tbody>
            <% List<Customer> customerList = (List<Customer>) request.getAttribute("customers");
               for (Customer customer : customerList) { %>
                <tr>
                    <td><%= customer.getAccountNumber() %></td>
                    <td><%= customer.getFullName() %></td>
                    <td><%= customer.getAddress() %></td>
                    <td><%= customer.getEmailId() %></td>
                    <td><%= customer.getDob() %></td>
                    <td><%= customer.getphone() %></td>
                </tr>
            <% } %>
        </tbody>
        <script>
        function redirectToHomePage() {
            window.location.href = 'AdminDashboardServlet'; // Redirect to deposit.html or your desired deposit page
          }
        </script>
    </table>
</body>
</html>
