<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/free-vector/gradient-technological-background_23-2148884155.jpg?w=1380&t=st=1702465066~exp=1702465666~hmac=6b7dbe822b016c5a352f33c9e4fa14a46b719baae47ae84a432e0bd57a810143') no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #login-container {
            background-color: rgba(255, 255, 255, 0.9);
            width: 350px;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #0e0101;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            background-color: #f0f0f0; /* Light grey background for texts */
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        h5 {
            color: #333;
            margin-top: 10px;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        nav {
            margin-bottom: 20px;
        }

        nav a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
            margin-right: 20px;
        }

        nav a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div id="login-container">
     
        <h2>Admin Login</h2>
        <form action="loginAdmin" method="get">
            <label for="email">Email</label>
            <input type="email" name="email" placeholder="Enter email" />
            <br />
            <label for="password">Password</label>
            <input type="password" name="password" placeholder="Enter password" />
            <br />
            <input type="submit" value="Submit" />
        </form>
        <h5><a href="openAdminRegisterPage">Sign Up</a></h5>
        <nav><a href="/TrainingAdministrationPortalMvc">Home</a></nav>
    </div>
</body>
</html>
