<%@page import="tap.app.entities.AdminReg"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin view</title>
<style>
body{background-color:lightblue;}
 table {
            margin: auto;
            border: 10px solid white;
            border-collapse: collapse;
            width: 80%;
            margin-top: 10px;
            
        }

        th, td {
            border:2px solid white ;
            padding: 10px;
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
List<AdminReg> adminRegList=(List<AdminReg>)request.getAttribute("ViewOfAdmin");
%>
<table>
    <caption>Admin Details</caption>
    <tr>
    <th><h3>Id</h3></th>
    <th><h3>FullName</h3></th>
    <th><h3>EmailId</h3></th>
    <th><h3>MobileNo</h3></th>
    <th><h3>DateOfBirth</h3></th>
    <th><h3>Gender</h3></th>
    
    <th><h3>Status</h3></th>
    <th><h3>Revoke</h3></th>
    <th><h3>Grant</h3></th>
  </tr> 
    <%    
    for(int i=0;i<adminRegList.size();i++){
    	   %>
   
   <tr>
    <td><h3><%=adminRegList.get(i).getId() %></h3></td>
    <td><h3><%=adminRegList.get(i).getFullName() %></h3></td>
    <td><h3><%=adminRegList.get(i).getEmailId() %></h3></td>
    <td><h3><%=adminRegList.get(i).getMobileNo() %></h3></td>
    <td><h3><%=adminRegList.get(i).getDateOfBirth() %></h3></td>
    <td><h3><%=adminRegList.get(i).getGender() %></h3></td>
   
    <td><h3><%=adminRegList.get(i).isStatus() %></h3></td>
    <td><h3><a href="revokeAdmin?id=<%=adminRegList.get(i).getId()%>" > Revoke Admin</a></h3></td>
	<td><h3><a href="grantAdmin?id=<%=adminRegList.get(i).getId()%>" > Grant Admin</a></h3></td>
		 </tr>
		<% } %>
		 </table>
</body>
</html>