<%@page import="tap.app.entities.Course"%>
<%@page import="tap.app.entities.Trainee"%>
<%@page import="java.util.List"%>
<%@page import="tap.app.entities.Trainer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assign</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f5f5f5;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
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

a {
    display: inline-block;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    color: #fff;
    background-color: #3498db;
    border-radius: 5px;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

a:hover {
    background-color: #2980b9; 
    color: #e0e0e0;/* Change background color on hover */
}

/* Custom Styling for Specific Columns */
td:nth-child(3) {
	color: #27ae60;
}
</style>
</head>
<body>

	<h1>Available Trainer and Trainee</h1>


	<%
	List<Trainer> trainer = (List<Trainer>) request.getAttribute("ListOfTrainer");
	String courseName = (String) request.getAttribute("course");
	List<Trainee> trainee = (List<Trainee>) request.getAttribute("ListOfTrainee");
	List<Course> courseList = (List<Course>) request.getAttribute("ViewOfCourse");
	String startDate = (String) request.getAttribute("startingDate");
	String endDate = (String) request.getAttribute("endingDate");
	String batchName = (String) request.getAttribute("batchName");
	%>

	<%-- <h3>
		Batch Name:
		<%=batchName%></h3> --%>

	<table>
		<caption>Trainer List</caption>
		<tr>
			<th>Trainer Name</th>
			<th>Trainer Email ID</th>
			<th>Languages</th>
		</tr>
		<%
		for (int i = 0; i < trainer.size(); i++) {
		%>
		<tr>
			<td><%=trainer.get(i).getFirstName()%></td>
			<td><%=trainer.get(i).getEmailId()%></td>
			<td><%=trainer.get(i).getLanguages()%></td>
		</tr>
		<%
		}
		%>
	</table>

	<br>

	<%-- Trainee List --%>
	<table>
		<caption>Trainee List</caption>
		<tr>
			<th>Trainee ID</th>
			<th>Trainee Name</th>
			<th>Course</th>
		</tr>
		<%
		for (int i = 0; i < trainee.size(); i++) {
		%>
		<tr>
			<td><%=trainee.get(i).getId()%></td>
			<td><%=trainee.get(i).getFirstName()%></td>
			<td><%=trainee.get(i).getCourse()%></td>
		</tr>
		<%
		}
		%>
	</table>

	<br>

	<%-- Course List --%>
	<%--  <h2>Course List</h2>
    <ul>
        <%
            for(int i=0; i<courseList.size(); i++) {
        %>
            <li>
                <a href="courseList?course_name=<%=courseList.get(i).getCourseName()%>">
                    <%= courseList.get(i).getCourseName() %>
                </a>
            </li>
        <%
            }
        %>
    </ul> --%>

	<br>

	<%-- Assign Page Link --%>
	<a
		href="Assign_page?course_name=<%=courseName%>&batchName=<%=batchName%>">Assign
		Page</a>

</body>
</html>