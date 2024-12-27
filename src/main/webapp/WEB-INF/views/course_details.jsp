<%@page import="tap.app.entities.Course"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Add Trainings</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: rgb(116, 212, 229);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url(book.png);
        background-repeat: no-repeat;
        background-size: cover;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
    }

    input, select {
        width: 100%;
        padding: 8px;
        margin-bottom: 16px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        background-color: #4caf50;
        color: #fff;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    button {
        background-color: #4caf50;
        color: #fff;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<form action="courseDetails" method="get">

<label for="courses">Course</label>
<label for="company">Company:</label>
        <select id="company" name="company"  required>
         <option value="" disabled selected>Select a Company</option>
            <option value="genpact">Genpact</option>
            <option value="xyz">XYZ Company</option>
            <option value="abc">ABC Company</option>
            
        </select> <br />
       <label for="course">Course:</label>
        <input type="text" id="course" name="course" readonly><br />
			
        <label for="trainerName">TrainerName</label>
        <input type="text" name="trainerName" readonly value="Not Yet Assigned" placeholder="Enter trainer name"/><br/>
         <label for="startingDate">StartingName</label>
        <input type="date" name="startingDate" required placeholder="Enter starting date"/><br/>
         <label for="endingDate">EndingDate</label>
        <input type="date" name="endingDate" required placeholder="Enter ending date"/><br/>
         <label for="location">Location</label>
        <input type="text" name="location" required placeholder="Enter  location"/><br/>
        
         <label for="batchSize">BatchSize</label>
        <input type="number" name="batchSize" required placeholder="Enter batch size"/><br/>
        <input type="submit" value="Add"/>

    </form>
     <script>
       
        function updateCourseText() {
            var companySelect = document.getElementById("company");
            var courseInput = document.getElementById("course");

            switch (companySelect.value) {
                case "genpact":
                    courseInput.value = "Java";
                    break;
                case "xyz":
                    courseInput.value = "Python";
                    break;
                case "abc":
                    courseInput.value = "C";
                    break;
               
                default:
                    courseInput.value = "";
            }
            
        }
    </script>
    
</body>
</html>