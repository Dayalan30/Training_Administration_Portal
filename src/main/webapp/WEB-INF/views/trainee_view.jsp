<%@page import="tap.app.entities.Trainee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainee Details</title>
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
    List<Trainee>traineeList=(List<Trainee>)request.getAttribute("ViewOfTrainee");
  
%>

    
    <table>
    <caption>Trainee Details</caption>
    <tr>
    <th>id</th>
    <th>firstName</th>
    <th>lastName</th>
    <th>userName</th>
    <th>emailId</th>
    <th>dateOfBirth</th>
    <th>gender</th>
    <th>mobileNo</th>
    <th>country</th>
    <th>state</th>
    <th>city</th>
    <th>rfs</th>
    <th>status</th>
     <th>Revoke</th>
     <th>Grant</th>
</tr> 
    <%    
    for(int i=0;i<traineeList.size();i++){
    	   %>
   <tr>
    <td><%=traineeList.get(i).getId() %></td>
    <td><%=traineeList.get(i).getFirstName() %></td>
    <td><%=traineeList.get(i).getLastName() %></td>
    <td><%=traineeList.get(i).getUserName() %></td>
    <td><%=traineeList.get(i).getEmailId() %></td>
    <td><%=traineeList.get(i).getDateOfBirth() %></td>
    <td><%=traineeList.get(i).getGender() %></td>
    <td><%=traineeList.get(i).getMobileNo() %></td>
    <td><%=traineeList.get(i).getCountry() %></td>
    <td><%=traineeList.get(i).getState() %></td>
    <td><%=traineeList.get(i).getCity() %></td>
    <td><%=traineeList.get(i).getRfs() %></td>
    <td><%=traineeList.get(i).getStatus() %></td>
    <td><h2><a href="revokeTrainee?id=<%=traineeList.get(i).getId()%>"> Revoke Trainee</a></h2></td>
	<td><h2><a href="grantTrainee?id=<%=traineeList.get(i).getId()%>"> Grant Trainee</a></h2></td>
   
      </tr>
   <% }
   %>
    </table>
   
</body>
</html>