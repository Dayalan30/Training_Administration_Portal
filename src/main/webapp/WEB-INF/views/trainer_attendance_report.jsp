
<%@page import="tap.app.entities.TrainerAttendance"%>
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
<title>Trainer Attendance Report</title>
</head>
<body>


<h2>Trainer Attendance Report</h2>

<table>
    <tr>
        <th>TrainerName</th>
        <th>TrainerEmailId</th>     
        <th>Attendance Status</th>
        <th>Attendance Date</th>
        
    </tr>
 
       <%  List<TrainerAttendance> getAllTrainer = (List<TrainerAttendance>) request.getAttribute("TrainerAttendance");
     
        
        %>
   <%--  <%
    List<TraineeAttendance> traineeAttendance = (List<TraineeAttendance>) request.getAttribute("TraineeAttendance");
    
    %> --%>
   <%--  <h3>Total Count:<%=traineeAttendance.get(0).getCount()%></h3> --%>
   
    <%  for (int i = 0; i < getAllTrainer.size(); i++) {
    %>
    
    
    <tr>
        <td><%= getAllTrainer.get(i).getTrainerName() %></td>
        <td><%= getAllTrainer.get(i).getTrainerEmailId() %></td>
        <td><%= getAllTrainer.get(i).getAttendance() %></td>
        <td><%= getAllTrainer.get(i).getAttendanceDate() %></td>
       
    </tr>
    
  <%} %>
   
</table>


</body>
</html>