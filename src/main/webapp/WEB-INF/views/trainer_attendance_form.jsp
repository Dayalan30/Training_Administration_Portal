<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    <title>Trainer Mark Attendance</title>
      <style>
        body {
    background-image: url('https://img.freepik.com/free-photo/cyber-monday-sale-calendar-clock_23-2148670017.jpg?w=1380&t=st=1702469364~exp=1702469964~hmac=f6b06221ff991b07efab6574e62a41ae377f2c16d1937e206546262c538f2815');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    margin: 0;
    padding: 0;
}

h2{
background-color: rgba(255, 255, 255, 0.8);
    border-radius: 5px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}
form {
    background-color: rgba(255, 255, 255, 0.5);
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);

    padding: 30px;
    width: 300px;
    text-align: left;
    
}


        label {
            display: block;
            margin-bottom: 12px;
            color: #333;
            font-weight: bold;
        }

        input[type="text"],
        select,
        input[type="date"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 16px;
        }

        select {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            padding: 12px;
            background-color: #f9f9f9;
            cursor: pointer;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            border: none;
            padding: 14px 24px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 18px;
            cursor: pointer;
            border-radius: 6px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <h2>Mark Attendance</h2>
    
    <% String trainerFirstName=(String)request.getAttribute("trainerFirstName"); %>
    <% String trainerEmailId=(String)request.getAttribute("trainerEmail"); %>
    <form action="updateTrainerAttendance" method="get">
   
    <label for="trainerName">Trainer Name:</label>
        <input type="text" name="firstName" value=<%=trainerFirstName%> readonly>
        
        <label for="trainerEmail">Trainee Email:</label>
        <input type="text" name="emailId" value=<%=trainerEmailId%> readonly>

        <label for="attendanceStatus">Attendance Status:</label>
        <select name="attendance" required>
            <option value="present">Present</option>
            <option value="absent">Absent</option>
        </select>

        <label for="attendanceDate">Attendance Date:</label>
        <input type="date" name="attendanceDate" id='attendanceDate'  required readonly>

        <input type="submit" value="Submit">
    </form>

    <!-- <a href="view_daily_attendance.jsp">View Daily Attendance</a> -->
</body>
 <script>
       
        function setCurrentDate() {
            var currentDate = new Date().toISOString().split('T')[0];
            document.getElementById('attendanceDate').value = currentDate;
        }


        window.onload = setCurrentDate;
    </script>
</html>


