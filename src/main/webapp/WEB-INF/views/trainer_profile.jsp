<%@page import="tap.app.entities.Trainer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Trainer Profile</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
           
            min-height: 0vh;
        }

        .container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }

        .profile-image {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border-radius: 50%;
            margin-bottom: 20px;
        }

        h2 {
            color: #333;
            margin-bottom: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #3498db;
            color: #fff;
            width: 150px;
        }

        td {
            background-color: #ecf0f1;
        }

        caption {
            color: #fff;
            font-size: 30px;
            padding: 10px;
            background-color: #3498db;
            border-radius: 5px;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .update-button {
            background-color: #2ecc71;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease-in-out;
        }

        .update-button:hover {
            background-color: #27ae60;
        }
    </style>
</head>

<body>
    <%
    Trainer trainerProfile = (Trainer) session.getAttribute("ProfileTrainer");
    %>

    <div class="container">
        <img class="profile-image"
            src="<%= true? "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png" : "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359554_960_720.png" %>"
            alt="Profile Image">
        <h2>Trainer Profile</h2>

        <table>
            <caption>Trainer Details</caption>
            <tr>
                <th>ID</th>
                <td><%= trainerProfile.getId() %></td>
            </tr>
            <tr>
                <th>First Name</th>
                <td><%= trainerProfile.getFirstName() %></td>
            </tr>
            <tr>
                <th>Last Name</th>
                <td><%= trainerProfile.getLastName() %></td>
            </tr>
            <tr>
                <th>Email ID</th>
                <td><%= trainerProfile.getEmailId() %></td>
            </tr>
            <tr>
                <th>Mobile No</th>
                <td><%= trainerProfile.getMobileNo() %></td>
            </tr>
            <tr>
                <th>Date Of Birth</th>
                <td><%= trainerProfile.getDateOfBirth() %></td>
            </tr>
            <tr>
                <th>Languages</th>
                <td><%= trainerProfile.getLanguages() %></td>
            </tr>
            <tr>
                <th>Availability</th>
                <td><%= trainerProfile.isAvailability() ? "Not Assigned" : "Assigned" %></td>
            </tr>
            <tr>
                <th>Total Trainee Assigned</th>
                <td><%= trainerProfile.getTraineeCount() %></td>
            </tr>
            <tr>
     <th>
     <h3>AvgRating</h3>
     <td><h3><%=trainerProfile.getAvgRating() %></h3>
     </tr>
        </table>

        <a class="update-button" href="openTrainerUpdate?id=<%= trainerProfile.getId()%>">Update Trainer</a>
    </div>
</body>
</html>
