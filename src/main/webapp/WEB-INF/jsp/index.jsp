<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<html lang="en">
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

<div class="container">
    <div class="starter-template">
        <h1>Bank Account Management System</h1>
        <h2>Message: ${message}</h2>
        <style>
            table, th, td {
                border: 2px solid black;
            }
            th, td {
                padding: 10px;
            }
        </style>
        <table> <tr>
            <th>#</th>
            <th>Account Name</th>
            <th>Balance</th>
        </tr>
            <c:forEach var="pr" items="${bankAccountList}" >
                <tr>
                    <td><c:out value="${pr.id}"/></td>
                    <td><c:out value="${pr.name}"/></td>
                    <td><c:out value="${pr.balance}"/></td>
                </tr>
            </c:forEach>
        </table>
    </div>

   <%-- <div>
        <h1> Open Account </h1>
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
            <label for="IBAN">IBAN:</label><br>
            <input type="text" id="IBAN" name="IBAN"><br>
            <label for="Number">Account Number:</label><br>
            <input type="text" id="Number" name="Number"><br>
            <input type="submit" value="Submit">
        </form>
    </div>
--%>
</div>

<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>