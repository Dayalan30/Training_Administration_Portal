<%@page import="tap.app.entities.Trainee"%>
<%@page import="tap.app.entities.AssignDetails"%>
<%@page import="java.util.List"%>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Training Survey</title>
    <style>
    
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
        text-align: center;
    }

    /* Style for the form container */
    form {
        max-width: 400px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    /* Style for form labels */
    label {
        display: block;
        margin-bottom: 8px;
    }

    /* Style for form input and textarea */
    input[type="email"],
    input[type="number"],
    textarea {
        width: 100%;
        padding: 8px;
        margin-bottom: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    /* Style for the submit button */
    input[type="submit"] {
        background-color: #4caf50;
        color: #fff;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    /* Style for the non-editable date field */
    .readonly-date {
        width: 100%;
        padding: 8px;
        margin-bottom: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
        background-color: #f9f9f9;
    }

    </style>
    <script>
    function setCurrentDate() {
        var currentDate = new Date().toLocaleDateString('en-CA');
        document.getElementById('feedbackDate').value = currentDate;
    }

    window.onload = setCurrentDate;
    </script>
</head>
<body>
    <h2>Feedback Form</h2>
    
    <%
    String trainerEmailId=(String)request.getAttribute("trainerEmailId");
    String traineeEmail=(String)request.getAttribute("traineeEmail");
    String trainerName=(String)request.getAttribute("trainerName");
    %>
    
    <form action="submitFeedback" method="get">
        <label for="traineeEmail">Trainee Email:</label>
        <input type="email" id="traineeEmail" name="traineeEmail" value="<%=traineeEmail %>" required readonly><br>

        <input type="hidden" id="trainerEmail" name="trainerEmailId" value="<%=trainerEmailId %>" required><br>

        <label for="trainerName">Trainer Name:</label>
        <input type="text" id="trainerName" name="trainerName" value="<%=trainerName %>" required readonly><br>

        <label for="feedbackText">Feedback Text:</label>
        <textarea id="feedbackText" name="feedbackText" rows="4" cols="50" required></textarea><br>

        <label for="rating">Rating (1 to 5):</label>
        <input type="number" id="rating" name="rating" min="1" max="5" required><br>

        <label for="feedbackDate">Feedback Date:</label>
        <input type="text" name="feedbackDate" id="feedbackDate" class="readonly-date" readonly><br>

        <input type="submit" value="Submit Feedback">
    </form>

    </body>
</html>
