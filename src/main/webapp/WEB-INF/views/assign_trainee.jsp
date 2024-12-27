<%@page import="tap.app.entities.Trainee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainee Assign</title>
</head>
<body>
<form action="trainee_assign" method="get">
 <label for="traineeCheckboxGroup">Select Trainees:</label>
    <div id="traineeCheckboxGroup">
			<% List<Trainee> trainee = (List<Trainee>) request.getAttribute("ListOfTrainee"); %>
			<%
                for (Trainee trainees : trainee) {
            %>
            Trainee:<input type="checkbox" id="trainee1" name="traineeName" value="<%= trainees.getFirstName() %>">
			
			<option value="<%= trainees.getFirstName() %>"><%= trainees.getFirstName() %></option>
			
			<%
                }
            %>
            </div>
		
		
		<br> <br> 
		<input type="submit" value="Submit">
		</form>
</body>
</html>