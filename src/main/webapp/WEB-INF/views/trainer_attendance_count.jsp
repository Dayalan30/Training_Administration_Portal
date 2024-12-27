<%@page import="tap.app.entities.AssignDetails"%>
<%@page import="tap.app.entities.Trainer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

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
<title>Trainer Attendance</title>
</head>
<body>

<h2>Trainer Attendance Report</h2>

<table>
    <tr>
        <th>TrainerName</th>
        <th>TrainerEmailId</th>
        <th>StartingDate</th>
        <th>EndingDate</th>
        <th>Attendance Report</th>
    </tr>
     <% List<Trainer> getAllTrainer = (List<Trainer> ) request.getAttribute("ViewOfTrainer");
     
     for(int i=0;i<getAllTrainer.size();i++){
     %>

   
    <tr>
       <td><h3><%=getAllTrainer.get(i).getId() %></h3></td>
    <td><h3><%= getAllTrainer.get(i).getFirstName() %></h3></td>
    <td><h3><%= getAllTrainer.get(i).getLastName() %></h3></td>
    <td><h3><%= getAllTrainer.get(i).getEmailId() %></h3></td>
   
        <!----td><a href="openTraineeAttendanceCountReport?idAttendance Count</a> </td>--->
        <td><a href="openAllTrainerAttendanceReport?emailId=<%= getAllTrainer.get(i).getEmailId()%>">Attendance Report</a></td>
    </tr>
    <% } %>
</table>


</body>
</html>