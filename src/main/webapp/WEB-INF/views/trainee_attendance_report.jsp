<%@page import="tap.app.entities.TraineeAttendance"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendance Report</title>
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
        <th>AttendanceStatus</th>
        <th>Attendance Date</th>
    </tr>

    <%
    List<TraineeAttendance> traineeAttendance = (List<TraineeAttendance>) request.getAttribute("TraineeAttendance");
    for (int i = 0; i < traineeAttendance.size(); i++) {
        TraineeAttendance attendance = traineeAttendance.get(i);
    %>
    <tr>
        <td><%= attendance.getTraineeName() %></td>
        <td><%= attendance.getTraineeEmailId() %></td>
        <td><%= attendance.getAssign().getBatchName() %></td>
        <td><%= attendance.getAttendance() %></td>
        <td><%= attendance.getAttendanceDate() %></td>
    </tr>
    
   
    <% } %>
</table>

</body>
</html>