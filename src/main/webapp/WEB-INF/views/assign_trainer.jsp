<%@page import="tap.app.entities.Trainer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainer Assign</title>
</head>
<body>
<form action="trainer_assign" method="get">
		 <label for="trainerCheckboxGroup">Select TrainerName:</label>
    <div id="trainerCheckboxGroup">
			<%
List<Trainer> trainer=(List<Trainer>)request.getAttribute("ListOfTrainer");
        	String courseName=(String)request.getAttribute("course");
%>
   

			<%
                for (Trainer trainers : trainer) {
            %>
              Trainers:<input type="checkbox" id="trainee1" name="trainerName" value="<%= trainers.getFirstName()%>">
			<option value="<%= trainers.getFirstName() %>"><%= trainers.getFirstName() %>
			
			</option>
			
			<%
                }
            %>
	
			</div>

<br> <br>
 <label for="trainerCheckboxGroup">Select TraineerEmailId:</label>
    <div id="trainerCheckboxGroup">
			<%
                for (Trainer trainers : trainer) {
            %>
      TrainerEmailId:<input type="checkbox" id="trainee1" name="trainerEmailId" value="<%= trainers.getEmailId() %>">
			<option value="<%= trainers.getEmailId() %>"><%= trainers.getEmailId() %>
			
			</option>
			
			<%
                }
            %>
	 </div> 
		<br> <br> 
		<%-- <%    
    for(int i=0;i<trainer.size();i++){
    	   %>
    	   <%=trainer.get(i).getFirstName() %>
    	   <%=trainer.get(i).getEmailId() %>
    	   <br>
    	   
		<a href="assigned_trainer?trainerName=<%=trainer.get(i).getFirstName()%>&trainerEmailId=<%=trainer.get(i).getEmailId()%>">Assigned</a>
		
		<%
		}
		%> --%>
		
		<input type="submit" value="Submit">
		
		</form>
</body>
</html>