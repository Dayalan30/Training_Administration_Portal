<%@page import="tap.app.entities.Course"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Course</title>
    <link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet" type="text/css" />
    <style>
     body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #darkblue;
    margin: 0;
    padding: 0;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    color: #333;
}

table {
    margin: auto;
    width: 80%;
    border-collapse: collapse;
    margin-top: 20px;
}

th, td {
    padding: 10px;
    border: 3px solid #34495e; /* Adjusted border color */
    text-align: left;
}

caption {
    text-decoration: underline;
    color: #3498db;
    margin-bottom: 20px;
    font-size: 24px;
    text-align: center; 
}
thead{
text-decoration: underline;
    color: #3498db;
    margin-bottom: 20px;
    font-size: 20px;
    text-align: center; 
    }

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #ecf0f1;
    transform: scale(1.02);
    transition: background-color 0.3s ease, transform 0.3s ease;
}
tr:hover {
    background-color: #cce5ff; /* Change the background color on hover */
}

tr:hover td {
    border-color: #003366; /* Change the border color of cells on hover */
}

th {
    background-color: #3498db;
    color: white;
}

a {
    text-decoration: none;
    color: #3498db;
    transition: color 0.3s ease;
}

a:hover {
    color: #2980b9;
}
td a {
    display: inline-block;
    padding: 8px 16px;
    background-color: #3498db;
    color: #fff;
    border: 2px solid #3498db;
    border-radius: 4px;
    transition: background-color 0.3s ease, color 0.3s ease, border-color 0.3s ease;
}

td a:hover {
    background-color: #2980b9;
    color: #fff;
    border-color: #2980b9;
}

table:hover {
    border-color: #003366; 
}
    </style>
</head>
<body>
    <%
    
        List<Course> courseList = (List<Course>) request.getAttribute("ViewOfCourse");
    %>

    <table>
        <caption>Course View</caption>
        <thead>
            <tr>
                <th>id</th>
                <th>batchName</th>
                <th>company</th>
                <th>courseName</th>
                <th>startingDate</th>
                <th>endingDate</th>
                <th>location</th>
                <th>batchSize</th>
                <th>assign</th>
            </tr>
        </thead>
        <tbody>
            <%
                for (int i = 0; i < courseList.size(); i++) {
            %>
                <tr>
                    <td><%=courseList.get(i).getId()%></td>
                    <td><%=courseList.get(i).getBatchName()%></td>
                    <td><%=courseList.get(i).getCompany()%></td>
                    <td><%=courseList.get(i).getCourseName()%></td>
                    <td><%=courseList.get(i).getStartingDate()%></td>
                    <td><%=courseList.get(i).getEndingDate()%></td>
                    <td><%=courseList.get(i).getLocation()%></td>
                    <td><%=courseList.get(i).getBatchSize()%></td>
                    <td><a href="courseList?course_name=<%=courseList.get(i).getCourseName()%>&startingDate=<%=courseList.get(i).getStartingDate()%>&endingDate=<%=courseList.get(i).getEndingDate()%>&batchName=<%=courseList.get(i).getBatchName()%>">Assigning</a></td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>
</body>
</html>
