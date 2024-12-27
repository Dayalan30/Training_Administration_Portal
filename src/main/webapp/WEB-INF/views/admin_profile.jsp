<%@page import="tap.app.entities.AdminReg"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Profile</title>
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

        table {
            width: 400px;
            border-collapse: collapse;
            margin-top: 20px;
            margin-bottom: 30px;
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
      <script>
        function goBack() {
            window.history.back();
        }
    </script>
</head>
<body>
    <%
    AdminReg adminReg = (AdminReg) session.getAttribute("ProfileAdmin");
    %>
	<table>
        <caption>Admin Profile</caption>
        <tr><th>ProfilePicture</th>
       <td> <img class="profile-image" src="<%= adminReg.getGender().equals("m") ? "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png" : "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359554_960_720.png" %>" alt="Profile Image">
    	</td></tr>
        <tr>
            <th>Id</th>
            <td><%=adminReg.getId() %></td>
        </tr>
        <tr>
            <th>FullName</th>
            <td><%=adminReg.getFullName()%></td>
        </tr>
        <tr>
            <th>EmailId</th>
            <td><%=adminReg.getEmailId() %></td>
        </tr>
        <tr>
            <th>MobileNo</th>
            <td><%=adminReg.getMobileNo() %></td>
        </tr>
        <tr>
            <th>DateOfBirth</th>
            <td><%=adminReg.getDateOfBirth() %></td>
        </tr>
        <tr>
            <th>Gender</th>
            <td><%=adminReg.getGender() %></td>
        </tr>
    </table>
     <h2><a href="openAdminUpdate?id=<%=adminReg.getId()%>">Update Admin</a></h2>

   <div class="button-container">
        <a class="back-button" onclick="goBack()">Go Back</a>
    </div>
</body>
</html>
