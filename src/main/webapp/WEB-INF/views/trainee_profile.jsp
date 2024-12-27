<%@page import="tap.app.entities.Trainee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Trainee Profile</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
            margin-bottom: 30px;
        }

        .column {
            margin: 0 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
            width: 250px;
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

        .button-container {
            text-align: center;
        }

        .back-button {
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

        .back-button:hover {
            background-color: #27ae60;
        }
          .profile-image {
            /* Add a thick border with the color of your choice */
           
            width: 100px; /* Adjust the size as needed */
            height: 100px; /* Adjust the size as needed */
            object-fit: cover;
            
        }
    </style>
</head>
<body>
<% Trainee traineeProfile=(Trainee)session.getAttribute("ProfileTrainee"); %>
    <div class="container">
        <div class="column">
            <table>
                <caption>Trainee Profile</caption>
                
                <tr><th>ProfilePicture</th>
       <td> <img class="profile-image" src="<%= traineeProfile.getGender().equals("male") ? "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png" : "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359554_960_720.png" %>" alt="Profile Image">
    	</td></tr><tr>
                    <th>ID</th>
                    <td><%=traineeProfile.getId() %></td>
                </tr>
                <tr>
                    <th>First Name</th>
                    <td><%=traineeProfile.getFirstName()%></td>
                </tr>
                <tr>
                    <th>Last Name</th>
                    <td><%=traineeProfile.getLastName()%></td>
                </tr>
                <tr>
                    <th>User Name</th>
                    <td><%=traineeProfile.getUserName() %></td>
                </tr>
                
                <tr>
                    <th>Date Of Birth</th>
                    <td><%=traineeProfile.getDateOfBirth() %></td>
                </tr>
                  <tr>
                    <th>Gender</th>
                    <td><%=traineeProfile.getGender() %></td>
                </tr>
            </table>
        </div>

        <div class="column">
            <table>
                <caption>Contact Information</caption>
              <tr>
                    <th>Email ID</th>
                    <td><%=traineeProfile.getEmailId() %></td>
                </tr>
                <tr>
                    <th>Mobile No</th>
                    <td><%=traineeProfile.getMobileNo() %></td>
                </tr>
                <tr>
                    <th>Country</th>
                    <td><%=traineeProfile.getCountry() %></td>
                </tr>
                <tr>
                    <th>State</th>
                    <td><%=traineeProfile.getState() %></td>
                </tr>
                <tr>
                    <th>City</th>
                    <td><%=traineeProfile.getCity() %></td>
                </tr>
                <tr>
                    <th>Reason for Study</th>
                    <td><%=traineeProfile.getRfs() %></td>
                </tr>
                <tr>
                    <th>Availability</th>
                    <td><%=traineeProfile.isAssigned()?"Not Assigned":"Assigned"%></td>
                </tr>
            </table>
            <h2><a href="openTraineeUpdate?id=<%=traineeProfile.getId()%>">Update trainer</a></h2>
        </div>
    </div>

    <div class="button-container">
        <a class="back-button" href="logout_trainee">Go Back</a>
    </div>
</body>
</html>
