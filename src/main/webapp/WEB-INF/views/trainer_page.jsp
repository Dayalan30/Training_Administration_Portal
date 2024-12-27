
<%
 Trainer trainerProfile=(Trainer)session.getAttribute("ProfileTrainer");
%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="tap.app.entities.Trainer"%>
<%@ page import="tap.app.entities.AssignDetails"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Trainer Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 20px;
            background-image: url('https://img.freepik.com/free-photo/office-desk-table-with-pencils-supplies_155003-5657.jpg?w=1380&t=st=1702475367~exp=1702475967~hmac=968a45651574453579e5ed86f0e0222ce9688696ae800a02cea201367bce32cc');
            background-size: cover;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-evenly;
            align-items: center;
            height: 100vh;
        }

        header {
            background-color: #007bff;
            padding: 10px 0;
            text-align: center;
            color: white;
            font-size: 24px;
            margin-bottom: 20px;
            width: 100%;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-radius:10px;
        }

        header h2 {
            margin: 0;
            margin-left: 10px; /* Added a small left margin */
        }

        header a {
            text-decoration: none;
            color: white;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        header a:hover {
            background-color: #0056b3;
        }

        .card {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px;
            width: calc(33% - 40px);
            max-width: 400px;
            text-align: center;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .card:hover {
            transform: scale(1.1);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
        }

        .card h2 {
            color: #007bff;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card i {
            margin-right: 10px;
        }

        .card p {
            color: #555;
        }
    </style>
</head>
<body>

<header>
    <h2>Trainer Page</h2>
    <a class="pro" href="trainer_profile">Profile</a>
    <a href="logout_trainer">Logout</a> 
</header>

<div class="card">
    <h2><i class="fas fa-users"></i><a href="openTraineeAssign?emailId=<%=trainerProfile.getEmailId()%>">Assigned Trainee</a></h2>
    <p>View and manage assigned trainees.</p>
</div>



<div class="card">
    <h2><i class="fas fa-chalkboard-teacher"></i><a href="displayTable?course=<%=trainerProfile.getLanguages()%>">Course Page</a></h2>
    <p>Explore and manage courses.</p>
</div>

<div class="card">
    <h2><i class="fas fa-clipboard-list"></i><a href="openTraineeAttendance?emailId=<%=trainerProfile.getEmailId()%>">Trainee Attendance List</a></h2>
    <p>Check attendance records of trainees.</p>
</div>

<div class="card">
    <h2><i class="fas fa-chart-bar"></i><a href="openTrainerFeedbackReport?trainerEmail=<%=trainerProfile.getEmailId()%>">Feedback Report</a></h2>
    <p>View feedback reports from trainees.</p>
</div>

<div class="card">
    <h2><i class="far fa-calendar-check"></i><a href="trainer_attendance_form?emailId=<%=trainerProfile.getEmailId()%>&firstName=<%=trainerProfile.getFirstName()%>">Attendance</a></h2>
    <p>Submit attendance for training sessions.</p>
</div>

<!-- Your existing content goes here -->

</body>
</html>
