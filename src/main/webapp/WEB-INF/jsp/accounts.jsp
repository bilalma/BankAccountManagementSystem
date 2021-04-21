<%--
  Created by IntelliJ IDEA.
  User: bilal
  Date: 19/04/2021
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <head>

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
</head>
<body>

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

<h1> Open Account </h1>
    <div class="alpha">

        <form>
            <div>
                <label for="type">Account Type:</label>
            <select name="account type" id="type" form="">
                <option value="Saving">Saving</option>
                <option value="Current">Current</option>
                <option value="ISA">ISA</option>
                <option value="Investment">Investment</option>
                <option value="Child">Child</option><br>
            </select>
        </div>
            <label for="fname">Bank sort code:</label><br>
            <input type="text" id="fname" name="fname"><br>
            <label for="lname">Branch name:</label><br>
            <input type="text" id="lname" name="lname"><br>
            <label for="iban">IBAN:</label><br>
            <input type="text" id="iban" name="iban"><br>
            <label for="number">Account Number:</label><br>
            <input type="text" id="number" name="number"><br>
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
