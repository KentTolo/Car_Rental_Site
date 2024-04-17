<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background: linear-gradient(to right, #3498db, #2ecc71);
            color: #fff; /* Text color on gradient background */
        }

        .payment-form {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background for the form */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 8px;
            text-align: left;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .card-type {
            display: inline-block;
            margin-bottom: 16px;
        }

        button {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .error-message {
            color: red;
            margin-top: 8px;
        }

        /* Styles for the invoice page */
        .invoice {
            display: none;
            width: 80%;
            margin: auto;
            border: 1px solid #ccc;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .invoice-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .invoice-details {
            margin-bottom: 20px;
        }

        .invoice-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .invoice-table, .invoice-table th, .invoice-table td {
            border: 1px solid #ddd;
        }

        .invoice-table th, .invoice-table td {
            padding: 15px;
            text-align: left;
        }

        .invoice-total {
            margin-top: 20px;
            text-align: right;
        }
    </style>
</head>
<body>

<!-- Payment Page -->
<div class="payment-form">
    <h2>Welcome To Tranzify Payment Portal</h2>
    <form id="paymentForm" action="process_payment.php" method="post">
        <label for="cardNumber">Card Number:</label>
        <input type="text" id="cardNumber" name="cardNumber" placeholder="Enter card number" required>
        <div id="cardType" class="card-type"></div>

        <label for="expiryDate">Expiry Date:</label>
        <input type="date" id="expiryDate" name="expiryDate" placeholder="MM/YY" required>

        <label for="cvv">CVV:</label>
        <input type="text" id="cvv" name="cvv" placeholder="CVV" required>

        <label for="Amount">Amount:</label>
        <input type="number" id="amount" name="amount" min="1" value="100" step="any"/>

        <button type="button" onclick="validatePayment()">Pay Now</button>

        <div id="error-message" class="error-message"></div>
    </form>
</div>

<!-- Invoice Page (Initially hidden) -->
<div id="invoicePage" class="invoice">
    <div class="invoice-header">
        <h1>Transaction Successful</h1>
    </div>

    <div class="invoice-details">
        <p>Date: <span id="invoiceDate"></span></p>
        <p>Amount Paid: M<span id="amountPaid"></span></p>
        <p>Account Number: <span id="accountNumber"></span></p>
        <p>Company Name: <span id="companyName"></span></p>
        <p><button><a href = "index.php">Home</a></button></p>
    </div>

</div>

<script>
    function validatePayment() {
        // Get values from the form
        var cardNumber = document.getElementById('cardNumber').value;
        var expiryDate = document.getElementById('expiryDate').value;
        var cvv = document.getElementById('cvv').value;
        var amount = document.getElementById('amount').value;

        if (cardNumber.trim() === '') {
            displayErrorMessage('Please enter a valid card number.');
            return;
        }
        document.getElementById('invoiceDate').innerText = new Date().toLocaleDateString();
        document.getElementById('amountPaid').innerText = amount;
        document.getElementById('accountNumber').innerText = cardNumber;
        document.getElementById('companyName').innerText = "Tranzify Car Rentals Pty Ltd"; 

        // Open the invoice page
        document.getElementById('invoicePage').style.display = 'block';
    }

    function displayErrorMessage(message) {
        document.getElementById('error-message').innerHTML = message;
    }
</script>

</body>
</html>
