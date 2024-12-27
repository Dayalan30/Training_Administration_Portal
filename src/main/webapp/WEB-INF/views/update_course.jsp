<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course Form</title>
    <style>
      body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 20px;
            background: url('https://img.freepik.com/free-photo/colorful-arrow-symbols-mobile-phone-pen-blue-backdrop_23-2147875665.jpg?w=1380&t=st=1702473507~exp=1702474107~hmac=684ab6ae7ba72f5439c0e55957d1ff76ee4a17fe0b1f8174810ecd857ce103f3') center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

   h2 {
            margin-bottom: 20px;
            text-align: center;
            color: #007bff;
        }

        form {
            background-color: rgba(255, 255, 255, 0.7);
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            margin: auto;
            border-radius:10px;
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
     
        select {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: calc(100% - 20px);
            display: block;
            margin: auto;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
</style>

    
</head>
<body>
<% 
	String ctx = application.getContextPath();
	//out.print(ctx);
	String targetUrl = ctx+"/course/updateCourse";
%>

<form:form modelAttribute="course" action="<%=targetUrl %>" method="post">
    <label for="id">Id:</label>
    <form:input path="id" readonly="true" /><br/>
    <lable for="company">Company Name:</lable>
    <form:input path="company"/></br>
    
    <label for="courseName">Course Name:</label>
    <form:select path="courseName">
        <form:option value="C">C</form:option>
        <form:option value="C++">C++</form:option>
        <form:option value="Java">Java</form:option>
        <form:option value="Python">Python</form:option>
        <form:option value="Sql">Sql</form:option>
        <form:option value="JavaScrpit">JavaScrpit</form:option>
    </form:select><br/>
     

    <label for="trainerName">Trainer Name:</label>
    <form:input path="trainerName" readonly="true"/><br/>

       <label for="startingDate">Starting Date:</label>
    <form:input path="startingDate" type="text" pattern="\d{4}-\d{2}-\d{2}" placeholder="yyyy-mm-dd" required title="Please enter a valid starting date (yyyy-mm-dd)"/><br/>

    <label for="endingDate">Ending Date:</label>
    <form:input path="endingDate" type="text" pattern="\d{4}-\d{2}-\d{2}" placeholder="yyyy-mm-dd" required title="Please enter a valid ending date (yyyy-mm-dd)"/><br/>

    <label for="location">Location:</label>
    <form:input path="location"/><br/>
    
   
     <label for="batchSize">Batch Size:</label>
    <form:input path="batchSize"/><br/>
    
    <button type="submit">Save Course</button>
</form:form>

</body>
</html>