<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.temporal.ChronoUnit" %>
<%@ page import="tap.app.entities.AssignDetails" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Assigned List</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            height: 100vh;
        }

        h1 {
            text-align: center;
            color: #3498db;
            margin: 20px 0;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            margin-top: 20px;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 15px;
        }

        th {
            background-color: #3498db;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #e0e0e0;
        }

        /* Custom Styling for Specific Columns */
        td:nth-child(5), td:nth-child(6) {
            color: #27ae60;
        }
        .aa {
    display: block;
    padding: 10px 20px;
    margin:10px;
    text-align: center;
    text-decoration: none;
    color: #fff;
    background-color: #3498db;
    border-radius: 5px;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

.aa:hover {
    background-color: #2980b9; 
    color: #e0e0e0;/* Change background color on hover */
}
.dis{
display:flex;
}
        

        /* Add your additional styling here */
    </style>
</head>
<body>

<h1>Assigned List</h1>

<table>
    <thead>
    <tr>
        <th>Batch Name</th>
        <th>Trainer Firstname</th>
        <th>Trainer Email</th>
        <th>Trainee Firstname</th>
        <th>Trainee Email</th>
        <th>Starting Date</th>
        <th>Ending Date</th>
        <th>Days Left</th>
        <th>Company</th>
        <th>Course Name</th>
        <th>Location</th>
        <th>Check</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<AssignDetails> assignList = (List<AssignDetails>) request.getAttribute("AssignList");
        for (int i = 0; i < assignList.size(); i++) {
            AssignDetails assignDetails = assignList.get(i);

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String startingDateStr = sdf.format(assignDetails.getCourse().getStartingDate());
            String endingDateStr = sdf.format(assignDetails.getCourse().getEndingDate());

            LocalDate startDate = LocalDate.parse(startingDateStr);
            LocalDate endDate = LocalDate.parse(endingDateStr);
            long daysLeft = Math.max(0, ChronoUnit.DAYS.between(LocalDate.now(), endDate));
    %>
    <tr>
        <td><%= assignDetails.getCourse().getBatchName() %></td>
        <td><%= assignDetails.getAssign().getTrainerFirstname() %></td>
        <td><%= assignDetails.getAssign().getTrainerEmailId() %></td>
        <td><%= assignDetails.getAssign().getTraineeFirstName() %></td>
        <td><%= assignDetails.getAssign().getTraineeEmailId() %></td>
        <td><%= startingDateStr %></td>
        <td><%= endingDateStr %></td>
        <td><%= daysLeft %></td>
        <td><%= assignDetails.getCourse().getCompany() %></td>
        <td><%= assignDetails.getCourse().getCourseName() %></td>
        <td><%= assignDetails.getCourse().getLocation() %></td>
        <td><a href="openCheckAvail?trainerEmailId=<%= assignDetails.getAssign().getTrainerEmailId() %>&traineeEmailId=<%= assignDetails.getAssign().getTraineeEmailId()%>" class="active">Check Available</a></td>
    </tr>
    <%
        }
    %>
    </tbody>

</table>
<div class="dis">
<a href="check_avail" class="aa">Active Course</a>
<a href="compl_course" class="aa">Completed Course</a>
</div>
</body>
</html>
