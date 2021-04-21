<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Add New Customer</title>

    <!-- Access the bootstrap Css like this,
        Spring boot will handle the resource mapping automcatically -->
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

    <!--
    <spring:url value="/css/main.css" var="springCss" />
    <link href="${springCss}" rel="stylesheet" />
     -->
    <c:url value="../css/main.css" var="jstlCss" />
    <link href="${jstlCss}" rel="stylesheet" />
</head>
<body>

<div>
    <nav class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Bank Accounts</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="welcome">Home</a></li>
                    <li><a href="accounts">Open Account</a></li>
                    <li><a href="customers">Add customer</a></li>
                    <li><a href="transfers">Transfer Money</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<h1> Add New Customer  </h1>
<div class="alpha">

    <form name="customerForm" id="customerForm" method="post" action="/customers">
        <label for="firstName">Name:</label><br>
        <input type="text" id="firstName" name="firstName"><br>
        <label for="lastName">Passport:</label><br>
        <input type="text" id="lastName" name="lastName"><br>
        <label for="IBAN">Address:</label><br>
        <input type="text" id="IBAN" name="IBAN"><br>
        <label for="Number">Phone Number:</label><br>
        <input type="text" id="Number" name="Number"><br>
        <label for="username">Email/Username:</label><br>
        <input type="text" id="username" name="Number"><br>
        <label for="pass">Password:</label><br>
        <input type="text" id="pass" name="Number"><br>

        <input type="submit" value="Submit">

    </form>
</div>
<style>
    input[type=text], select {
        width: 30%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type=submit] {
        width: 30%;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: #45a049;
    }

    .alpha {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 50px;
    }
</style>


</body>
</html>
