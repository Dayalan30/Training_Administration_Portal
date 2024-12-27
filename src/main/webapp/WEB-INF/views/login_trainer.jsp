<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainer Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://img.freepik.com/free-photo/front-view-laptop-with-stationery-elements_23-2148223257.jpg?w=1380&t=st=1702466211~exp=1702466811~hmac=e922fe3278748f7d5ba9afe5839bd7cc91ba396d7e436bea013f0047e03ee76e') no-repeat center center fixed;
        background-size: cover;
        text-align: center;
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.5); /* Transparency added to the container */
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
    }

    h2 {
        color: #0e0101;
        margin-bottom: 20px;
    }

    form {
        width: 350px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    label {
        display: block;
        margin-bottom: 8px;
        color: #333;
        text-align: left;
    }

    input {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #4caf50;
        color: #fff;
        cursor: pointer;
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
</style>
</head>
<body>
    <div class="container">
        
        <h2>Trainer Login</h2>
        <form action="loginTrainer" method="get">
            <label for="email">Email</label>
            <input type="email" name="email" placeholder="Enter email"/><br/>
            <label for="password">Password</label>
            <input type="password" name="password" placeholder="Enter password"/><br/>
            <input type="submit" value="Submit"/>
        </form>
        <h5><a href="openTrainerRegisterPage">Sign Up</a></h5>
        <nav><a href="/TrainingAdministrationPortalMvc">Home</a></nav>
    </div>
</body>
</html>