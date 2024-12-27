<%@page import="tap.app.entities.Trainer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="ISO-8859-1">
<title>Trainer Update</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 20px;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    h2 {
        margin-bottom: 20px;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        width: 50%;
    }

    label {
        font-weight: bold;
    }

    input[type="text"],
    input[type="number"],
    textarea,
    select {
        width: 100%;
        padding: 8px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="checkbox"] {
        margin-right: 5px;
    }

    button[type="submit"] {
        background-color: #007bff;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        width: 100%;
    }

    button[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<%
Trainer trainer = (Trainer)request.getAttribute("TrainerUpdate");
%>
<form action="updateTrainer" method="get">
		<input type="hidden" name="id" value="<%= trainer.getId()%>"/><br/>
        <input type="text" name="firstName" value="<%= trainer.getFirstName() %>" placeholder="Enter FirstName"/><br/>
        <input type="text" name="lastName" value="<%= trainer.getLastName() %>" placeholder="Enter LastName"/><br/>
        <input type="email" name="emailId" value="<%= trainer.getEmailId()%>" placeholder="Enter the email"/><br/>
       <input type="text" name="mobileNo" value="<%= trainer.getMobileNo()%>" placeholder="Enter the MobileNo"/><br/>
       <input type="date" name="dateOfBirth" value="<%= trainer.getDateOfBirth()%>" placeholder="Enter the DateOfBirth"/><br/>
         <input type="text" name="languages" value="<%= trainer.getLanguages()%>" placeholder="Enter the Languages"/><br/>
        <input type="submit" value="Update"/>
    </form>

</body>
</html>