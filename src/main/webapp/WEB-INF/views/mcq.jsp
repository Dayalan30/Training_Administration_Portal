<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="tap.app.entities.Trainee"%>
<%@ page import="tap.app.entities.Mcq" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<% List<Mcq> mcqList = (List<Mcq>) request.getAttribute("mcqList"); %>
    <meta charset="UTF-8">
    <title>MCQ Portal</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f0f0f0;
        background-image: url('https://img.freepik.com/free-vector/hand-drawn-design-back-school-patterns_23-2148596322.jpg?w=1380&t=st=1702466776~exp=1702467376~hmac=85d87cf5992568d2e7d4fcb45992e3332ef5df0ae2d9f28fab26a8a9d4944e72');
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 0vh;
    }

    #content {
        max-width: 800px;
        margin: 20px auto;
        background-color: rgba(255, 255, 255, 0.5);
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        transition: background-color 0.3s ease;
    }

    h1 {
        color: black;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        
    }

    .question-container {
        background-color: #fff;
        background-color: rgba(255, 255, 255, 0.5)
        border: 1px solid #ddd;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        margin-bottom: 20px;
        padding: 20px;
        
        transition: background-color 0.3s ease;
    }

    .question-container:hover {
        background-color: #f9f9f9;
    }

    h5 {
        color: #333;
        margin-bottom: 10px;
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
    }

    input[type="radio"] {
        margin-right: 5px;
        transform: translateY(2px);
    }

    input[type="radio"]:checked + label {
        background-color: #4CAF50;
        color: white;
        padding: 8px;
        border-radius: 5px;
    }

    .submit-btn {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
    }

    #score {
        font-size: 18px;
        margin-top: 10px;
    }

    #result {
        font-size: 20px;
        font-weight: bold;
        margin-top: 10px;
        color: #4CAF50;
    }

    .result-container {
        margin-top: 20px;
        text-align: center;
    }
    .nb,.fb {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
    border: none;
    border-radius: 5px;
    transition: background-color 0.3s ease, color 0.3s ease;
    display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    
} 
.re{
 background-color: rgba(255, 255, 255,1);
        border-radius: 8px;


}
</style>



<script>
    function calculateScore() {
        var score = 0;
        var totalQuestions = <%= mcqList.size() %>;
        var passThreshold = 15; // Adjust as needed

        <% for (Mcq mcq : mcqList) { %>
            var userAnswer_<%= mcq.getQuestionNo() %> = document.querySelector('input[name="question<%= mcq.getQuestionNo() %>"]:checked');
            var correctAnswer_<%= mcq.getQuestionNo() %> = '<%= mcq.getCorrectAnswer() %>';

            if (userAnswer_<%= mcq.getQuestionNo() %> && userAnswer_<%= mcq.getQuestionNo() %>.value === correctAnswer_<%= mcq.getQuestionNo() %>) {
                score++;
            }
        <% } %>
        document.getElementById('resultScore').value = score;

        document.getElementById('score').innerHTML = 'Your score: ' + score + ' out of ' + totalQuestions;

        if (score >= passThreshold) {
            document.getElementById('result').innerHTML = 'Congratulations! You passed!';
        } else {
            document.getElementById('result').innerHTML = 'Sorry, you did not pass. Better luck next time.';
        }

        // Disable radio buttons after submission
        <% for (Mcq mcq : mcqList) { %>
            var radioButtons_<%= mcq.getQuestionNo() %> = document.getElementsByName('question<%= mcq.getQuestionNo() %>');
            for (var i = 0; i < radioButtons_<%= mcq.getQuestionNo() %>.length; i++) {
                radioButtons_<%= mcq.getQuestionNo() %>[i].disabled = true;
            }
        <% } %>
    }
</script>




</head>
<body>
    <% String traineeEmail=(String)request.getAttribute("traineeEmail"); %>

    <form action="mcqResult" method="post">
       
        <input type="hidden" id="traineeEmail" name="traineeEmail" value=<%= traineeEmail %> required readonly><br>

        <div id="content">
            <h1>MCQ Portal</h1>
			
            <% for (Mcq mcq : mcqList) { %>
                <div class="question-container">
                    <h5>Q/No.<%= mcq.getQuestionNo() %> <%= mcq.getQuestion() %></h5>
                    <input type="radio" name="question<%= mcq.getQuestionNo() %>" value="<%= mcq.getOption1() %>">
                    <%= mcq.getOption1() %><br>

                    <input type="radio" name="question<%= mcq.getQuestionNo() %>" value="<%= mcq.getOption2() %>">
                    <%= mcq.getOption2() %><br>

                    <input type="radio" name="question<%= mcq.getQuestionNo() %>" value="<%= mcq.getOption3() %>">
                    <%= mcq.getOption3() %><br>

                    <input type="radio" name="question<%= mcq.getQuestionNo() %>" value="<%= mcq.getOption4() %>">
                    <%= mcq.getOption4() %><br>
                </div>
               
            <% } %>

            <button class="nb" type="button" onclick="calculateScore()">Submit Answers</button>
            <div class ="re">
            <p id="score"></p>
            <p id="result"></p>
            </div>

            <!-- Hidden input field to store the score value -->
            <input type="hidden" id="resultScore" name="resultScore" value="">

            <input class="fb" type="submit" value="Submit"/>
        </div>
    </form>
</body>
</html>
