<%@page import="tap.app.entities.AssignDetails"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Assigned List</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            
            height: 100vh;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        table {
            border-collapse: collapse;
            width: 80%;
           
             margin-top: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            border-radius: 10px;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 12px;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>

<h2>Trainee Assigned List</h2>

<table>
    <tr>
        <th>Trainee Firstname</th>
        <th>Trainee Email</th>
        <th>Starting Date</th>
        <th>Ending Date</th>
        <th>Company</th>
        <th>Course Name</th>
        <th>Location</th>
    </tr>

    <% List<AssignDetails> assignList = (List<AssignDetails>) request.getAttribute("AssignList");
       for (int i = 0; i < assignList.size(); i++) {
           AssignDetails assignDetails = assignList.get(i);
    %>
    <tr>
        <td><%= assignDetails.getAssign().getTraineeFirstName() %></td>
        <td><%= assignDetails.getAssign().getTraineeEmailId() %></td>
        <td><%= assignDetails.getCourse().getStartingDate() %></td>
        <td><%= assignDetails.getCourse().getEndingDate() %></td>
        <td><%= assignDetails.getCourse().getCompany() %></td>
        <td><%= assignDetails.getCourse().getCourseName() %></td>
        <td><%= assignDetails.getCourse().getLocation() %></td>
    </tr>
    <% } %>

</table>

</body>
</html>
