<%@page import="tap.app.entities.Course"%>
<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Dashboard</title>

<style>
body{
background-color: lightblue;
}
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

p {
	width: 500px;
}

table, p {
	margin: auto;
	font-size: 20px;
}

caption {
	margin-bottom: 20px;
	text-decoration: underline;
	color: violet;
}

th, td {
	padding: 5px;
}

a {
	text-decoration: none;
	width: 200px;
	background-color: dodgerBlue;
	color: white;
	padding: 5px;
	border-radius: 5px;
	margin-left: 10px;
}
table{
margin:auto;
}
 table {
            margin: auto;
            border: 10px solid white;
            border-collapse: collapse;
            width: 80%;
            margin-top: 20px;
            
        }

        th, td {
            border:5px solid white ;
            padding: 12px;
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
	<%
	List<Course> listOfCourses = (List<Course>) request.getAttribute("ViewOfCourse");
	%>

	<table>
		<caption>Courses List</caption>
		<tr>
			<th>Id</th>
			<th>Course Name</th>
			
			<th>Starting Date</th>
			<th>Ending Date</th>
			<th>Location</th>
			
			<th>Batch Size</th>

		</tr>

		<!-- Dynamic No of rows depending upon records in the database -->

		<%
		
		for (Course course : listOfCourses) {

			
		%>
		<tr>

			<td><%=course.getId()%></td>
			<td><%=course.getCourseName()%></td>
			
			<td><%=course.getStartingDate()%></td>
			<td><%=course.getEndingDate()%></td>
			<td><%=course.getLocation()%></td>
		
			<td><%=course.getBatchSize()%></td>
		<td>
			<!--  --> <a href="showUpdateCourseFormPage?id=<%=course.getId()%>">Update</a>
		</td>

		</tr>
		<%
		}
		%>

		<tr>
			<td colspan="8" style="padding: 10px; text-align: center"><a
				href="showAddCourseFormPage">Add Course</a></td>
		</tr>
	</table>
</body>
</html>