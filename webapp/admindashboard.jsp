<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tech Bank</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   
   
    <style>
       body {
    background: linear-gradient(to right, #b0e0e6 30%, #ffffff 60%);
  }

.tiles-container {
    display: flex;
    justify-content: space-around;
    align-items: center;
    flex-wrap: wrap;
    padding: 20px;
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
            color: black;
            font-family:"Garamond";
            font-weight:900;
            margin-bottom: 50px;
        }
        h1.thicker {
  font-weight: 900;
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
    width: 140px;
    height: 140px;
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

.tile button:hover {
    background: #5a0cbf;
}
.button {
  background-color: green;
  color: white;
  padding: 10px 20px;
  border: none;
  cursor: pointer;
  transition: background-color 0.3s, color 0.3s;
}

.button:hover {
  background-color: red;
 
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
<body>
    <header>
   
        <div class="top-bar">
            <div class="logo">
                <img src="t.jpg" alt="Logo">
              
            </div>
        
          
        </div>
       
        <button  type="button" class="button"><a href="<%= request.getContextPath() %>/AdminLogoutServlet">Logout</a></button>
    </header>
    <main>
  <h1>ADMIN DASHBOARD</h1>
    
     <div class="tiles-container">
            <div class="tile">
                <img src="addcustomer.png" alt="addcu" >
               
                 <button type="button"><a href="<%= request.getContextPath() %>/RegisterServlet">Add Customer</a></button>
                
            </div>
            <div class="tile">
                <img src="change.jpg" alt="Modify">
                 <button type="button"><a href="<%= request.getContextPath() %>/ModifyCustomerServlet">Modify Customer</a></button>
            </div>
            <div class="tile">
                <img src="view.png" alt="View Customer Details">
                  <button type="button"><a href="<%= request.getContextPath() %>/ViewCustomerServlet">Customer Details</a></button>
            </div>
        
               <div class="tile">
                <img src="kk.jpg" alt="Delete Customer">
                <button type="button"><a href="<%= request.getContextPath() %>/DeleteCustomerServlet">Delete Customer</a></button>
            </div>
          
        </div>
    
   </main>
</body>
</html>
