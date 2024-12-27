<%@page import="tap.app.entities.TraineeAttendance"%>
<%@page import="tap.app.entities.Trainee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendance Report Trainee </title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        caption {
            font-size: 24px;
            margin-bottom: 10px;
            color: #007bff;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }
    </style>
</head>
<body>

<% 
    List<Trainee> traineeList = (List<Trainee>) request.getAttribute("ViewOfTrainee");
    List<TraineeAttendance> traineeAttendance = (List<TraineeAttendance>) request.getAttribute("TraineeAttendance");
%> 

<table>
    <caption>Trainee Details</caption>
    <tr>
        <th>FirstName</th>
        <th>LastName</th>
        <th>EmailId</th>
        <th>Attendance Report</th>
    </tr> 
    <%    
        for (int i = 0; i < traineeList.size(); i++) {
    %>
        <tr>
            <td><%=traineeList.get(i).getFirstName() %></td>
            <td><%=traineeList.get(i).getLastName() %></td>
            <td><%=traineeList.get(i).getEmailId() %></td>
            <td><a href="openAllTraineeAttendanceReport?emailId=<%=traineeList.get(i).getEmailId()%>">Attendance Report</a></td>
        </tr>
    <% } %>
</table>

</body>
</html>
