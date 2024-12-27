<%@page import="tap.app.entities.Trainee"%>
<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainee Dashboard</title>

<style>
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
body{
background-color: lightblue;
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
	List<Trainee> listOfTrainees = (List<Trainee>) request.getAttribute("ViewOfTrainee");
	%>

	<table>
		<caption>Trainees List</caption>
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>User Name</th>
			<th>Email Id</th>
			<th>Date Of Birth</th>
			<th>Gender</th>
			<th>Mobile No</th>
			<th>Country</th>
			<th>State</th>
			<th>City</th>
			<th>Reason For Join</th>

		</tr>

		<!-- Dynamic No of rows depending upon records in the database -->

		<%
		for (Trainee trainee : listOfTrainees) {
		%>
		<tr>
			<td><%=trainee.getId()%></td>
			<td><%=trainee.getFirstName()%></td>
			<td><%=trainee.getLastName()%></td>
			<td><%=trainee.getUserName()%></td>
			<td><%=trainee.getEmailId()%></td>
			<td><%=trainee.getDateOfBirth()%></td>
			<td><%=trainee.getGender()%></td>
			<td><%=trainee.getMobileNo()%></td>
			<td><%=trainee.getCountry()%></td>
			<td><%=trainee.getState()%></td>
			<td><%=trainee.getCity()%></td>
			<td><%=trainee.getRfs()%></td>
			<td>
				<!--  --> <a
				href="showUpdateTraineeFormPage?id=<%=trainee.getId()%>">Update</a>
			</td>

		</tr>
		<%
		}
		%>

		<tr>
			<td colspan="8" style="padding: 10px; text-align: center"><a
				href="showAddTraineeFormPage">Add Trainee</a></td>
		</tr>
	</table>
</body>
</html>