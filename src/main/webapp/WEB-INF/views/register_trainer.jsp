<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trainer Registration Form</title>
<style>
body {
	background: linear-gradient(to right, #2c3e50, #3498db);
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column; /* Align children vertically */
	align-items: center;
	justify-content: center;
	min-height: 100vh;
}

h2,h1 {
	text-align: center;
	color: #ecf0f1;
	margin-bottom: 30px;
}

form {
	max-width: 800px;
	width: 100%;
	padding: 30px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
	background: linear-gradient(to bottom, #2980b9, #3498db);
	border-radius: 10px;
	transition: transform 0.3s ease-in-out;
	box-sizing: border-box;
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	gap: 20px;
}

form:hover {
	transform: scale(1.02);
}

label {
	display: block;
	margin-bottom: 8px;
	color: #ecf0f1;
	font-size: 14px;
}

input, select {
	width: calc(100% - 24px);
	padding: 12px;
	margin-bottom: 16px;
	border: none;
	border-radius: 5px;
	background-color: #ecf0f1;
	color: #34495e;
	box-sizing: border-box;
	transition: background-color 0.3s ease-in-out;
}

input:focus, select:focus {
	background-color: #d5d8dc;
}

input[type="submit"] {
	grid-column: span 2;
	width: 100%;
	background-color: #2ecc71;
	color: #ecf0f1;
	cursor: pointer;
	transition: background-color 0.3s ease-in-out;
}

input[type="submit"]:hover {
	background-color: #27ae60;
}

fieldset {
	border: none;
	margin: 15px 0;
	padding: 0;
}

legend {
	color: #ecf0f1;
	font-size: 16px;
	font-weight: bold;
	margin-bottom: 15px;
}

.checkbox-group {
	display: flex;
	flex-wrap: wrap;
	gap: 10px;
	color: #ecf0f1;
	grid-column: span 2; /* Make skills span both columns */
}

input[type="checkbox"] {
	display: none; /* Hide default checkboxes */
}

label.checkbox {
	position: relative;
	padding-left: 30px;
	cursor: pointer;
	font-size: 14px;
	user-select: none;
}

label.checkbox:before {
	content: '';
	position: absolute;
	left: 0;
	top: 0;
	width: 20px;
	height: 20px;
	background-color: #ecf0f1;
	border: 2px solid #3498db;
	border-radius: 5px;
	box-sizing: border-box;
	transition: background-color 0.3s ease-in-out;
}

input[type="checkbox"]:checked+label.checkbox:before {
	background-color: #2ecc71;
	border-color: #27ae60;
}

.others-container {
	display: none;
	margin-top: 10px;
	grid-column: span 2; /* Make others span both columns */
}

.others-container label {
	margin-bottom: 8px;
}

.others-container input {
	width: calc(100% - 24px);
	padding: 12px;
	margin-bottom: 16px;
	border: 1px solid #ddd;
	border-radius: 5px;
	box-sizing: border-box;
	transition: border-color 0.3s ease-in-out;
}

.others-container input:focus {
	border-color: #3498db;
}

.radio-group {
	display: flex;
	flex-wrap: wrap;
	gap: 10px;
	color: #ecf0f1;
	grid-column: span 2; /* Make skills span both columns */
}

input[type="radio"] {
	display: none; /* Hide default radio buttons */
}

label.radio {
	position: relative;
	padding-left: 30px;
	cursor: pointer;
	font-size: 14px;
	user-select: none;
}

label.radio:before {
	content: '';
	position: absolute;
	left: 0;
	top: 0;
	width: 20px;
	height: 20px;
	background-color: #ecf0f1;
	border: 2px solid #3498db;
	border-radius: 50%;
	box-sizing: border-box;
	transition: background-color 0.3s ease-in-out;
}

input[type="radio"]:checked+label.radio:before {
	background-color: #2ecc71;
	border-color: #27ae60;
}


</style>
</head>
<body>
	<h1>Trainer Registration Form</h1>
	<form action="registerTrainer" method="get">


	<div>
    <label for="firstname">First Name</label>
    <input type="text" name="firstname" placeholder="Enter First Name" required />

    <label for="email">Email</label>
    <input type="email" name="email" placeholder="Enter Email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="Check the email format it should be like ram@gmail.com" required />

    <label for="password">Password</label>
    <input type="password" name="password" id="password" placeholder="Enter Password" required />
    
            <label for="confirmPassword">Confirm Password</label>
            <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm Password" required style="transition: border-color 0.3s ease-in-out;" />

         <div id="passwordMatchStatus" style="color: red; font-size: 14px; margin-top: 5px;"></div>
    
   
</div>

		<div>
    <label for="lastname">Last Name</label>
    <input type="text" name="lastname" placeholder="Enter Last Name" required />

    <label for="mobile">Mobile No</label>
    <input type="text" name="mobile" placeholder="Enter Mobile No" pattern="[0-9]{10}" title="Please enter a 10-digit mobile number (numeric only)" required />

    <label for="dateofbirth">Date of Birth</label>
    <input type="date" name="dateofbirth"  id="dateofbirth"required />


		<fieldset>
            <legend>Choose Your Skills</legend>
            <div class="radio-group">
                <input type="radio" id="language1" name="language" required value="C">
                <label class="radio" for="language1"> C </label>

                <input type="radio" id="language2" name="language" required value="Cpp">
                <label class="radio" for="language2"> C++ </label>

                <input type="radio" id="language3" name="language" required value="Java">
                <label class="radio" for="language3"> Java </label>

                <input type="radio" id="language4" name="language" required value="Python">
                <label class="radio" for="language4"> Python </label>

                <input type="radio" id="language5" name="language" required value="Sql">
                <label class="radio" for="language5"> Sql </label>

                <input type="radio" id="language6" name="language" required value="Frontend">
                <label class="radio" for="language6"> Frontend</label>

                <input type="radio" id="others" name="language" value="Others">
                <label class="radio" for="others"> Others</label>
            </div>
            <div class="others-container">
                <label for="others-skills">Other Skills</label>
                <input type="text" name="otherSkills"  placeholder="Enter other skills">
            </div>
        </fieldset>
</div>
		<input type="submit" value="Submit" />
	</form>
	 <%@ include file = "message.jsp" %>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        var skillsRadioGroup = document.querySelectorAll('input[name="language"]');
        var othersContainer = document.querySelector('.others-container');

        // Add change event listener to skills radio buttons
        skillsRadioGroup.forEach(function (radio) {
            radio.addEventListener('change', function () {
                if (radio.value === 'Others' && radio.checked) {
                    othersContainer.style.display = 'block';
                } else {
                    othersContainer.style.display = 'none';
                }
            });
        });

        // Handle initial state
        var selectedRadio = document.querySelector('input[name="language"]:checked');
        if (selectedRadio && selectedRadio.value === 'Others') {
            othersContainer.style.display = 'block';
        } else {
            othersContainer.style.display = 'none';
        }
    });
</script>



  <script>
      
      function checkPasswordMatch() {
          var password = document.getElementById("password").value;
          var confirmPassword = document.getElementById("confirmPassword");
          var passwordMatchStatus = document.getElementById("passwordMatchStatus");

          if (!password && !confirmPassword.value) {
              passwordMatchStatus.textContent = ""; // Clear the message if both fields are empty
          } else if (password === confirmPassword.value) {
              passwordMatchStatus.textContent = "Passwords match!";
              passwordMatchStatus.style.color = "green";
              confirmPassword.style.borderColor = "green"; // Change border color to green
          } else {
              passwordMatchStatus.textContent = "Passwords do not match!";
              passwordMatchStatus.style.color = "red";
              confirmPassword.style.borderColor = "red"; // Change border color to red
          }
      }

      // Add event listeners to trigger the check on password change or confirm password change
      document.getElementById("password").addEventListener("input", checkPasswordMatch);
      document.getElementById("confirmPassword").addEventListener("input", checkPasswordMatch);
  </script> 
  <script>
  // Get the current date in the format YYYY-MM-DD
  var today = new Date().toISOString().split('T')[0];

  // Set the max attribute of the date input to today
  document.getElementById('dateofbirth').setAttribute('max', today);
</script> 
</body>
</html>
