<%--
  Created by IntelliJ IDEA.
  User: bilal
  Date: 21/04/2021
  Time: 00:02
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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

    <title>Transfer Amount</title>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="welcome">Bank Accounts</a>
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

    <h1>Transfer Balance from one Account to other</h1>
  <div class="alpha">
      <form name="customerForm" id="customerForm" method="post" action="/transfers">
        <label for="bankAccountTransferFrom">Transfer From</label>
        <input type="text" id="bankAccountTransferFrom" name="bankAccountTransferFrom"><br>
        <label for="bankAccountTransferTo">Transfer to </label><br>
        <input type="text" id="bankAccountTransferTo" name="bankAccountTransferTo"><br>
        <label for="amount">Amount </label><br>
        <input type="text" id="amount" name="amount"><br>

          <input type="submit" value="Submit" onclick="return confirm('Are you sure?')" />

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

</body>
</html>
