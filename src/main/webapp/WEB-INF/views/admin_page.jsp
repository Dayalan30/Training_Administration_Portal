<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #0d47a1;
            margin: 0;
            padding: 0;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            color: #fff;
            zoom: 160%;
        }

        header {
            background-color: #003366;
            padding: 10px;
            border-radius: 0 0 8px 8px;
            width: 100%;
            text-align: right;
            margin-bottom: 100px;
        }

        header a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
            font-size: 18px;
            transition: color 0.3s ease-in-out;
            margin-right: 25px;
        }

        header a:hover {
            color: #004080;
        }

        h1 {
            background-color: #004080;
            padding: 20px;
            border-radius: 8px;
            color: #fff;
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .button-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 20px 10px;
        }

        .button-box {
            background-color: #2196f3;
            padding: 20px;
            border-radius: 8px;
            color: #fff;
            text-align: center;
            margin: 10px;
            cursor: pointer;
            width: 300px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease-in-out;
        }

        .button-box:hover {
            background-color: #1565c0;
        }

        .icon {
            margin-right: 8px;
            font-size: 24px;
        }
    </style>
</head>
<body>
    <header>
        <a href="admin_profile">Admin Profile</a>
        <a href="logout">Logout</a>
    </header>

    <h1>Welcome to Sub Admin Dashboard</h1>

    <div class="button-container">
        <div class="button-box">
            <i class="icon fas fa-chalkboard-teacher"></i>
            <a href="trainerView/trainer_view">Trainer Access</a>
            <p>View and manage trainer details.</p>
        </div>
        <div class="button-box">
            <i class="icon fas fa-graduation-cap"></i>
            <a href="traineeView/trainee_view">Trainee Access</a>
            <p>View and manage trainee details.</p>
        </div>
        <div class="button-box">
            <i class="icon fas fa-book"></i>
            <a href="courseView/openCourseViewPage">Course Assign</a>
            <p>Assign courses to trainees.</p>
        </div>
        <div class="button-box">
            <i class="icon fas fa-edit"></i>
            <a href="course/showCoursesList">Course Edit</a>
            <p>Edit and manage courses.</p>
        </div>
        <div class="button-box">
            <i class="icon fas fa-user-edit"></i>
            <a href="trainee/showTraineesList">Trainee Edit</a>
            <p>Edit and manage trainees.</p>
        </div>
        <div class="button-box">
            <i class="icon fas fa-user-edit"></i>
            <a href="trainer/showTrainersList">Trainer Edit</a>
            <p>Edit and manage trainers.</p>
        </div>
        <div class="button-box">
            <i class="icon fas fa-user-edit"></i>
            <a href="assign_list">Assign List</a>
            <p>Showing Assign List.</p>
        </div>
         <div class="button-box">
            <i class="icon fas fa-user-edit"></i>
            <a href="tablesPage">Course Discription</a>
            <p>Showing Course Structure.</p>
        </div>
     
    <!-- Trainee Attendance Report Section -->
    <div class="button-box">
        <i class="icon fas fa-clipboard-check"></i>
        <a href="openAllTraineeAttendance">Trainee Attendance Report</a>
        <p>View and manage trainee attendance reports.</p>
    </div>

    <!-- Trainer Attendance Report Section -->
    <div class="button-box">
        <i class="icon fas fa-clipboard-check"></i>
        <a href="openAllTrainerAttendance">Trainer Attendance Report</a>
        <p>View and manage trainer attendance reports.</p>
    </div>
        
  
    </div>

</body>
</html>
