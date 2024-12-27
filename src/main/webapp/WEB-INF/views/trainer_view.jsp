<%@page import="tap.app.entities.Trainer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainer Details</title>
<link href="<c:url value='/resources/css/style.css'/>"
rel="stylesheet" type="text/css"/>
<style>
table{
margin:auto;
}
 table {
            margin: auto;
            border: 10px solid white;
            border-collapse: collapse;
            width: 80%;
            margin-top: 20px;
            
        }

        th, td {
            border:5px solid white ;
            padding: 12px;
            text-align: center;
        }
        
        td a {
            display: inline-block;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            border: 1px solid #4CAF50;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        
caption {
            text-decoration:none;
            color:black ;
            margin-bottom: 10px;
            font-size: 3.2em;
        }
</style>
</head>
<body>
<%
    List<Trainer>trainerList=(List<Trainer>)request.getAttribute("ViewOfTrainer");
  
%>
    
    <table>
    <caption>Trainer Details</caption>
    <tr>
    <th><h3>Id</h3></th>
    <th><h3>FirstName</h3></th>
    <th><h3>LastName</h3></th>
    <th><h3>EmailId</h3></th>
    <th><h3>MobileNo</h3></th>
    <th><h3>DateOfBirth</h3></th>
    <th><h3>Languages</h3></th>
<th><h3>AvgRating</h3></th>
    <th><h3>Status</h3></th>
    <th><h3>Revoke</h3></th>
    <th><h3>Grant</h3></th>
    </tr> 
    <%    
    for(int i=0;i<trainerList.size();i++){
    	   %>
   
   <tr>
    <td><h3><%= trainerList.get(i).getId() %></h3></td>
    <td><h3><%= trainerList.get(i).getFirstName() %></h3></td>
    <td><h3><%= trainerList.get(i).getLastName() %></h3></td>
    <td><h3><%= trainerList.get(i).getEmailId() %></h3></td>
   
    <td><h3><%= trainerList.get(i).getMobileNo() %></h3></td>
    <td><h3><%= trainerList.get(i).getDateOfBirth() %></h3></td>
    <td><h3><%= trainerList.get(i).getLanguages() %></h3></td>
  <td><h3><%=trainerList.get(i).getAvgRating() %>
    <td><h3><%= trainerList.get(i).getStatus() %></h3></td>
    <td><h3><a href="revokeTrainer?id=<%=trainerList.get(i).getId()%>" > Revoke Trainer</a></h3></td>
	<td><h3><a href="grantTrainer?id=<%=trainerList.get(i).getId()%>" > Grant Trainer</a></h3></td>
		 </tr>
		<% } %>
		 </table>
</body>
</html>