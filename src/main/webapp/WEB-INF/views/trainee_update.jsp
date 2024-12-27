<%@page import="tap.app.entities.Trainee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="ISO-8859-1">
<title>trainee Update</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 20px;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    h2 {
        margin-bottom: 20px;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        width: 50%;
    }

    label {
        font-weight: bold;
    }

    input[type="text"],
    input[type="number"],
    textarea,
    select {
        width: 100%;
        padding: 8px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="checkbox"] {
        margin-right: 5px;
    }

    button[type="submit"] {
        background-color: #007bff;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        width: 100%;
    }

    button[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
<script>  // Get the current date in the format YYYY-MM-DD
var today = new Date().toISOString().split('T')[0];

// Set the max attribute of the date input to today
document.getElementById('dateOfBirth').setAttribute('max', today);
</script>
</head>

<body>
<%
Trainee trainee = (Trainee)request.getAttribute("TraineeUpdate");
%>
<form action="updateTrainee" method="get">
    <input type="text" name="id" value="<%= trainee.getId()%>" readonly/><br/>
    <input type="text" name="firstName" value="<%= trainee.getFirstName() %>" placeholder="Enter FirstName"/><br/>
    <input type="text" name="lastName" value="<%= trainee.getLastName() %>" placeholder="Enter LastName"/><br/>
    <input type="text" name="UserName" value="<%= trainee.getUserName() %>" placeholder="Enter UserName"/><br/>
   <!-- <input type="text" name="course_name" value="<%= trainee.getCourse() %>" placeholder="Enter Course Name"/><br/>
      <input type="text" name="company_name" value="<%= trainee.getCompany()%>" placeholder="Enter Company Name"/><br/>
   --> <input type="email" name="emailId" value="<%= trainee.getEmailId()%>" placeholder="Enter the email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="Check the email format it should be like ram@gmail.com" /><br/>
    <input type="password" name="password" placeholder="Enter Password" /> <br />
    <input type="date" name="dateOfBirth" id="dateOfBirth" value="<%= trainee.getDateOfBirth()%>" placeholder="Enter the DateOfBirth"/><br/>
    <input type="radio" name="gender" value="male" <%= trainee.getGender().equals("male") ? "checked" : "" %>> Male
    <input type="radio" name="gender" value="female" <%= trainee.getGender().equals("female") ? "checked" : "" %>> Female
    <input type="radio" name="gender" value="others" <%= trainee.getGender().equals("others") ? "checked" : "" %> > Others <br />
    <input type="text" name="mobileNo" value="<%= trainee.getMobileNo() %>" placeholder="Enter Mobile no"   pattern="[0-9]{10}" title="Enter 10 digit valid number"/><br />
    <input type="text" name="country" value="<%= trainee.getCountry()%>" placeholder="Enter Country" /> <br /> 
    <input type="text" name="state" value="<%= trainee.getState()%>" placeholder="Enter State" /> <br />
    <input type="text" name="city"  value="<%= trainee.getCity()%>" placeholder="Enter City" /> <br />
    <textarea type="text" name="rfs" placeholder="Describe Why you need this course"><%= trainee.getRfs()%></textarea><br /> 
    <input type="submit" value="Update"/>
</form>


</body>
</html>