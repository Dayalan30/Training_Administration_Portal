
    <%
    AdminReg adminReg = (AdminReg)request.getAttribute("AdminUpdate");
    %><%@page import="tap.app.entities.AdminReg"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Admin Update</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #3498db; /* Background color */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff; /* Text color */
        }

        h2 {
            margin-bottom: 20px;
            text-align: center;
            color: #fff;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            max-width: 500px;
            margin: 0 auto; /* Center the form */
        }

        label {
            font-weight: bold;
            color: #333; /* Label text color */
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="date"],
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

        input[type="radio"] {
            margin-right: 5px;
        }

        button[type="submit"] {
            background-color: #3498db; /* Button color */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        button[type="submit"]:hover {
            background-color: #2980b9; /* Hover color */
        }
    </style>
</head>

<body>
    
    <form action="updateAdmin" method="get">
        <input type="hidden" name="id" value="<%= adminReg.getId()%>" /><br />
        <input type="text" name="fullName" value="<%= adminReg.getFullName() %>" placeholder="Enter Full Name" /><br />

        <input type="email" name="emailId" value="<%= adminReg.getEmailId()%>" placeholder="Enter Email" /><br />
        <input type="password" name="password" placeholder="Enter Password" /> <br />
        <input type="date" name="dateOfBirth" value="<%= adminReg.getDateOfBirth()%>" placeholder="Enter Date of Birth" /><br />

        <fieldset>
            <legend>Gender</legend>
            <input type="radio" name="gender" value="male" <%= adminReg.getGender().equals("male") ? "checked" : "" %>> Male
            <input type="radio" name="gender" value="female" <%= adminReg.getGender().equals("female") ? "checked" : "" %>> Female
            <input type="radio" name="gender" value="others" <%= adminReg.getGender().equals("others") ? "checked" : "" %> disabled> Others
        </fieldset>

        <input type="text" name="mobileNo" value="<%= adminReg.getMobileNo() %>" placeholder="Enter Mobile No" /><br />

        <button type="submit">Update</button>
    </form>

</body>

</html>
