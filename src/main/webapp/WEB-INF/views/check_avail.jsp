<%@ page import="tap.app.entities.AssignDetails"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Check Available</title>
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
        
    </tr>
    </thead>
    <tbody>
    <%
        List<AssignDetails> assignList = (List<AssignDetails>) request.getAttribute("AssignList");
        for (int i = 0; i < assignList.size(); i++) {
            AssignDetails assignDetails = assignList.get(i);
    %>
    <tr>
        <td><%=assignDetails.getCourse().getBatchName()%></td>
        <td><%=assignDetails.getAssign().getTrainerFirstname()%></td>
        <td><%=assignDetails.getAssign().getTrainerEmailId()%></td>
        <td><%=assignDetails.getAssign().getTraineeFirstName()%></td>
        <td><%=assignDetails.getAssign().getTraineeEmailId()%></td>
        <td><%=assignDetails.getCourse().getStartingDate()%></td>
        <td><%=assignDetails.getCourse().getEndingDate()%></td>
        <td id="daysLeft<%=i%>"></td>
        <td><%=assignDetails.getCourse().getCompany()%></td>
        <td><%=assignDetails.getCourse().getCourseName()%></td>
        <td><%=assignDetails.getCourse().getLocation()%></td>
        
    </tr>
    <script>
        // Calculate days left for each row
        var endingDate<%=i%> = new Date('<%=assignDetails.getCourse().getEndingDate()%>');
        var daysLeft<%=i%> = Math.max(0, Math.ceil((endingDate<%=i%> - new Date()) / (1000 * 60 * 60 * 24)));
        document.getElementById('daysLeft<%=i%>').innerText = daysLeft<%=i%>;
    </script>
    <%
        }
    %>
    </tbody>
</table>

</body>
</html>
