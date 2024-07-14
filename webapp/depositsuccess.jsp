<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="register.AccountDetails" %>
<%@ page import="java.math.BigDecimal" %>
<html>
<head>
    <title>Deposit Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            user-select: none;
            text-align: center;
        }
        .modal {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            z-index: 1000;
            text-align: center;
            opacity: 1;
            transition: opacity 2s ease-out;
        }
        .modal.hidden {
            opacity: 0;
        }
        .checkmark {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            display: block;
            stroke-width: 2;
            stroke: #4caf50;
            stroke-miterlimit: 10;
            margin: 0 auto 20px;
            position: relative;
        }
        .checkmark__circle {
            stroke-dasharray: 166;
            stroke-dashoffset: 166;
            stroke-width: 2;
            stroke-miterlimit: 10;
            stroke: #4caf50;
            fill: none;
            animation: stroke 0.6s cubic-bezier(.65,.05,.36,1) forwards, fill 0.4s ease-in-out 0.6s forwards;
        }
        .checkmark__check {
            transform-origin: 50% 50%;
            stroke-dasharray: 48;
            stroke-dashoffset: 48;
            animation: stroke 0.3s cubic-bezier(.65,.05,.36,1) 0.6s forwards;
            stroke-width: 6;
            stroke: #4caf50;
            fill: none;
        }
        .confetti {
            position: fixed;
            width: 6px;
            height: 6px;
            background-color: #4caf50;
            animation: confetti 2s ease-in-out forwards;
            z-index: 999; /* Confetti should be above everything else */
        }
        @keyframes stroke {
            100% {
                stroke-dashoffset: 0;
            }
        }
        @keyframes fill {
            100% {
                box-shadow: inset 0px 0px 0px 30px #4caf50;
            }
        }
        @keyframes confetti {
            0% {
                opacity: 1;
                transform: translateY(0) translateX(0);
            }
            100% {
                opacity: 0;
                transform: translateY(100vh) translateX(calc(50vw - 50%));
            }
        }
    </style>
</head>
<body>
<%
    AccountDetails accountDetails = (AccountDetails) request.getAttribute("accountDetails");
    BigDecimal amount = (BigDecimal) request.getSession().getAttribute("amount1");
    System.out.println("Amount in JSP: " + amount);
    if (accountDetails != null) {
%>
<div class="modal" id="successModal">
    <div class="checkmark">
        <svg class="checkmark__svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52">
            <circle class="checkmark__circle" cx="26" cy="26" r="25"/>
            <path class="checkmark__check" d="M14 27l10 10 18-18"/>
        </svg>
    </div>
    <h2>Deposit Success</h2>
    <p><strong>Current Balance:</strong> <%= accountDetails.getBalance() %></p>
    <p>You have successfully deposited <%= amount %> Rs to your account.</p>
</div>
<audio id="successSound">
    <source src="success-sound.mp3" type="audio/mpeg">
    Your browser does not support the audio element.
</audio>
<!-- Generate confetti elements -->
<script>
    function createConfettiPiece() {
        const confetti = document.createElement('div');
        confetti.className = 'confetti';
        confetti.style.top = `${Math.random() * 100}vh`;
        confetti.style.left = `${Math.random() * 100}vw`;
        document.body.appendChild(confetti);

        // Remove confetti piece after animation
        confetti.addEventListener('animationend', () => {
            confetti.remove();
        });
    }

    // Create multiple confetti pieces
    for (let i = 0; i < 100; i++) {
        createConfettiPiece();
    }

    // Play success sound
    document.getElementById('successSound').play();

    // Hide the modal after 5 seconds and redirect to the dashboard
    setTimeout(() => {
        const modal = document.getElementById('successModal');
        modal.classList.add('hidden');
        // Redirect to the dashboard after fade out
        setTimeout(() => {
            window.location.href = '<%= request.getContextPath() %>/CustomerDashboardServlet';
        }, 2000); // Adjust the redirect delay as needed
    }, 5000); // Adjust the display time of modal as needed
</script>
<%
    } else {
%>
<p class="error">Account details not available.</p>
<%
    }
%>
</body>
</html>
