<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modification Error</title>
<style>
    body {
    
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        user-select: none;
    }
    body::after {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-image: url('ee.gif');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        opacity: 1;
        z-index: -1;
    }
    .modal {
        display: none; /* Hidden by default */
        position: fixed;
        z-index: 1000; /* Sit on top */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }
    .modal-content {
        background-color: #fefefe;
        margin: 15% auto; /* 15% from the top and centered */
        padding: 20px;
        border: 1px solid #888;
        width: 80%; /* Could be more or less, depending on screen size */
        max-width: 400px; /* Maximum width */
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }
    .close:hover,
    .close:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
    }
    .modal-header, .modal-body, .modal-footer {
        padding: 10px 20px;
    }
    .modal-header {
        border-bottom: 1px solid #ddd;
    }
    .modal-footer {
        border-top: 1px solid #ddd;
    }
</style>
<script>
    window.onload = function() {
        var errorMessage = '<%= request.getAttribute("errorMessage1") %>';
        if (errorMessage) {
            var modal = document.getElementById("myModal");
            var modalMessage = document.getElementById("modalMessage");
            modalMessage.innerText = 'Your Given Account Number Is Invalid: ' + errorMessage;
            modal.style.display = "block";
        }
    };

    function closeModal() {
        var modal = document.getElementById("myModal");
        modal.style.display = "none";
    }
</script>
</head>
<body>
<div id="myModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2>Alert</h2>
        </div>
        <div class="modal-body">
            <p id="modalMessage"></p>
        </div>
        <div class="modal-footer">
            <p id="hed"><a href="<%= request.getContextPath() %>/ModifyCustomerServlet">Go back</a></p>
        </div>
    </div>
</div>
</body>
</html>
