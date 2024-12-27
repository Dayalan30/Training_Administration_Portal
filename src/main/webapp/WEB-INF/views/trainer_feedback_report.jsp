<%@page import="tap.app.entities.Trainer"%>
<%@page import="tap.app.entities.AvgRating"%>
<%@page import="tap.app.entities.TrainerFeedBack"%>
<%@page import="tap.app.entities.FeedBack"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainer Feedback Report</title>
<style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<% List<TrainerFeedBack>feedback=(List<TrainerFeedBack>)request.getAttribute("TrainerFeedBack");%>
<%Trainer trainer=(Trainer)request.getAttribute("TrainerUpdateFeedBackRating");%>
<table border="1">
    <thead>
        <tr> 
             <th>Trainer Name</th>
            <th>Trainer Email</th>
            <th>Feedback Text</th>
            <th>Rating</th>
            <th>Feedback Date</th>
        </tr>
    </thead>
    <tbody>


 
  <h3>Average Rating :<%=trainer.getAvgRating() %>  </h3> 
<%
for(int i=0;i<feedback.size();i++){
%>
<tr>
<td><%=feedback.get(i).getTrainer().getFirstName()%></td>
<td><%=feedback.get(i).getTrainer().getEmailId() %></td>
<td><%=feedback.get(i).getFeedback().getFeedbackText() %></td>
<td><%=feedback.get(i).getFeedback().getRating()%></td>
<td><%=feedback.get(i).getFeedback().getFeedbackDate()%></td>

</tr>
<% } %>

</tbody>
</body>
</html>