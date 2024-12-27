<%@page import="tap.app.entities.AssignDetails"%>
<%@page import="tap.app.entities.TraineeAttendance"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainee Attendance</title>


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

<h2>Trainee Attendance Report</h2>

<table>
    <tr>
        <th>TraineeName</th>
        <th>TraineeEmailId</th>
        <th>BatchName</th>
        <th>Trainee Report</th>
    </tr>
    <% List<AssignDetails> assignDetails = (List<AssignDetails>) request.getAttribute("AssignList"); %>

    <% for (int i = 0; i < assignDetails.size(); i++) { %>
        <tr>
            <td><%= assignDetails.get(i).getAssign().getTraineeFirstName() %></td>
            <td><%= assignDetails.get(i).getAssign().getTraineeEmailId() %></td>
            <td><%= assignDetails.get(i).getCourse().getBatchName() %></td>
            <td>
                <% 
                List<TraineeAttendance> traineeAttendance = (List<TraineeAttendance>) request.getAttribute("TraineeAttendance");
                for (int j = 0; j < traineeAttendance.size(); j++) {
                    TraineeAttendance attendance = traineeAttendance.get(j);
                    if (attendance.getTraineeEmailId().equals(assignDetails.get(i).getAssign().getTraineeEmailId())) {
                %>
                    <a href="openTraineeAttendanceReport?emailId=<%= attendance.getTraineeEmailId() %>">Attendance Report</a>
                <% } %>
                <% } %>
            </td>
        </tr>
        <% } %>
</table>



</body>
</html>