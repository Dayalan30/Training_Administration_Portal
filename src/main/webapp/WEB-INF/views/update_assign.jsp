<%@page import="tap.app.entities.Trainer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Assignment</title>
</head>
<body>
<%
    List<Trainer>trainerList=(List<Trainer>)request.getAttribute("ViewOfTrainer");
  
%>

<h1>Update Assignment</h1>
<h3><a href="grantTrainer?id=<%=trainerList.get(i).getId()%>" > Grant Trainer</a></h3>
</body>
</html>