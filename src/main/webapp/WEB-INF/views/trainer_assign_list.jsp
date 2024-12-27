<%@page import="tap.app.entities.AssignDetails"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Assigned List</title>
    <style >
body{background-color:lightblue;}
 table {
            margin: auto;
            border: 10px solid white;
            border-collapse: collapse;
            width: 80%;
            margin-top: 10px;
            
        }

        th, td {
            border:2px solid white ;
            padding: 10px;
            text-align: center;
        }
        
        td a {
            display: inline-block;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            border: 1px solid #4CAF50;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        
caption {
            text-decoration:none;
            color:black ;
            margin-bottom: 10px;
            font-size: 3.2em;
        }
</style>
</head>
<body>

<table>
    <tr>
    	<th>BatchName</th>
        <th>Trainer Firstname</th>
        <th>Trainer Email</th>
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
         <td><%=assignDetails.getCourse().getBatchName()%></td>
        <td><%= assignDetails.getAssign().getTrainerFirstname() %></td>
        <td><%= assignDetails.getAssign().getTrainerEmailId() %></td>
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