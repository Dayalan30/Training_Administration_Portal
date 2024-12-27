<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trainer Form</title>
   <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background: url('https://img.freepik.com/free-photo/colorful-arrow-symbols-mobile-phone-pen-blue-backdrop_23-2147875665.jpg?w=1380&t=st=1702473507~exp=1702474107~hmac=684ab6ae7ba72f5439c0e55957d1ff76ee4a17fe0b1f8174810ecd857ce103f3') center/cover;
             /* Blur effect */
            background-attachment: fixed;
        }
		background{
		filter: blur(5px);
		}
        h2 {
            margin-bottom: 20px;
            text-align: center;
            color: #007bff; /* Blue color for headings */
        }

        form {
            background-color: rgba(255, 255, 255, 0.7); /* Adjusted transparency */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            margin: auto;
        }

        label {
            font-weight: bold;
            display: flex;
            align-items: center;
            color: #007bff; /* Blue color for labels */
            margin-bottom: 8px;
        }

        .radio-group {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

        .radio-group input {
            margin-right: 5px;
        }

        input[type="text"],
        input[type="number"],
        input[type="password"],
        input[type="email"],
        input[type="date"],
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

        fieldset {
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 10px;
        }

        legend {
            font-weight: bold;
            color: #007bff; /* Blue color for legend */
        }

        button[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            display: block;
            margin: auto; /* Center the button */
            margin-top: 20px;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }

        .icon {
            margin-right: 8px;
        }
    </style>

    
</head>
<body>
<% 
	String ctx = application.getContextPath();
	//out.print(ctx);
	String targetUrl = ctx+"/trainer/updateTrainer";
	
	
	
%>



<h2>Trainer Update Page By Admin</h2>
<form:form modelAttribute="trainer" action="<%=targetUrl %>" method="post">
    <label for="id">Id:</label>
    <form:input path="id" required/><br/>

    <form:input type="text" path="firstName" placeholder="Enter First Name" required/><br/> 
    <form:input type="text" path="lastName" placeholder="Enter Last Name" required/><br/>
    
    <form:input type="email" path="emailId" placeholder="Enter Email" requiredpattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="Check the email format it should be like ram@gmail.com" /><br/>
    
    <form:input type="text" path="mobileNo" placeholder="Enter Mobile no" required pattern="\d{10}" title="Enter 10 digit valid number"/><br/>
    
    <label for="dateOfBirth">Date of Birth:</label>
    <form:input type="date" path="dateOfBirth" placeholder="Enter Date of Birth" required/><br/> 
    
    <label>Languages:</label><br/>
    <form:radiobutton path="languages" value="C" label="C"/>
    <form:radiobutton path="languages" value="Cpp" label="C++"/>
    <form:radiobutton path="languages" value="Java" label="Java"/>
    <form:radiobutton path="languages" label="Python" value="Python"/>
    <form:radiobutton path="languages" label="Sql" value="Sql"/>
    <form:radiobutton path="languages" label="Frontend" value="Frontend"/>
    <br/>

    <input type="submit" value="Update Trainer" />
</form:form>

</body>
</html>