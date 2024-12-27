<%@page import="java.util.List"%>
<%@page import="tap.app.entities.Trainer"%>
<%@page import="tap.app.entities.Trainee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            color: #3498db;
            margin-bottom: 20px;
        }

        form {
            width: 50%;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            margin-bottom: 10px;
            font-weight: bold;
            color: #333;
        }

        select, input[type="checkbox"] {
            margin-bottom: 10px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            box-sizing: border-box;
        }

        input[type="submit"] {
            padding: 10px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        /* Additional styling for Trainee names and emails in a single line */
        .trainee-container {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

        .trainee-item {
            display: flex;
            align-items: center;
            margin-right: 20px;
        }

        .trainee-item input[type="checkbox"] {
            margin-right: 5px;
        }

    </style>
</head><body>
<script>
    function selectTraineeEmail(traineeCheckbox) {
        var traineeName = traineeCheckbox.value;
        var traineeEmailCheckbox = document.getElementById("traineeEmailId1_" + traineeName);
        traineeEmailCheckbox.checked = traineeCheckbox.checked;
    }

  
    function selectTrainerEmail(trainerDropdown) {
        var selectedTrainerName = trainerDropdown.value;
        var trainerEmailDropdown = document.getElementById("trainerEmailDropdown");

        for (var i = 0; i < trainerEmailDropdown.options.length; i++) {
            var trainerName = trainerEmailDropdown.options[i].text;
            if (trainerName === selectedTrainerName) {
                trainerEmailDropdown.options[i].selected = true;
                break;
            }
        }
    }
</script>

    <h1>Assign</h1>
    <% String batchName=(String)request.getAttribute("batchName"); %>
    <h3>Batch Name: <%= batchName%></h3>

    <form action="course_assign" method="get">
    
    	
    
        <label for="trainerDropdown">Select Trainer:</label> 
        <select id="trainerDropdown" name="trainerName" onchange="selectTrainerEmail(this)">
            <% List<Trainer> trainer=(List<Trainer>)request.getAttribute("ListOfTrainer");
               for (Trainer trainers : trainer) { %>
                <option value="<%= trainers.getFirstName() %>"><%= trainers.getFirstName() %></option>
            <% } %>
        </select> 

        <label for="trainerEmailDropdown">Selected Trainer's Email:</label> 
        <select id="trainerEmailDropdown" name="trainerEmailId">
            <% for (Trainer trainers : trainer) { %>
                <option value="<%= trainers.getEmailId() %>"><%= trainers.getEmailId() %></option>
            <% } %>
        </select> 

        <br> <br> 
        <label for="traineeCheckboxGroup">Select Trainees:</label>
        <div id="traineeCheckboxGroup" class="trainee-container">
            <% List<Trainee> trainee = (List<Trainee>) request.getAttribute("ListOfTrainee");
               for (Trainee trainees : trainee) { %>
                <div class="trainee-item">
                    <input type="checkbox" id="trainee_<%= trainees.getFirstName() %>" name="traineeName" value="<%= trainees.getFirstName() %>" onchange="selectTraineeEmail(this)">
                    <label for="trainee_<%= trainees.getFirstName() %>"><%= trainees.getFirstName() %> </label>
                </div>
            <% } %>
        </div> <br>

       
        <div id="traineeEmailIdCheckboxGroup" class="trainee-container">
            <% for (Trainee trainees : trainee) { %>
                <div class="trainee-item">
                    <input type="hidden" id="traineeEmailId1_<%= trainees.getFirstName() %>" name="traineeEmailId" value="<%= trainees.getEmailId() %>">
                    <label for="traineeEmailId1_<%= trainees.getFirstName() %>"></label>
                </div>
            <% } %>
        </div> <br>
      
        <div>
        <input type="hidden" id="batchName" name="batchName" value=<%=batchName%>>
        </div>

        <input type="submit" value="Submit">
    </form>

</body>
</html>