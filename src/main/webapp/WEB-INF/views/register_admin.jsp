<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Form</title>
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

        h2 {
            text-align: center;
            color: #ecf0f1;
            margin-bottom: 30px;
        }

        form {
            max-width: 400px;
            width: 100%;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            background: linear-gradient(to bottom, #2980b9, #3498db);
            border-radius: 10px;
            transition: transform 0.3s ease-in-out;
            box-sizing: border-box;
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

        input {
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

        input:focus {
            background-color: #d5d8dc;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #2ecc71;
            color: #ecf0f1;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        input[type="submit"]:hover {
            background-color: #27ae60;
        }

        input[type="radio"] {
            display: none; /* Hide the default radio button */
        }

        .gender-group {
            margin-bottom: 16px;
        }

        .gender-label {
            display: block;
            color: #ecf0f1;
            margin-bottom: 8px;
            font-size: 14px;
        }

        .gender-options {
            display: flex;
            gap: 10px; /* Adjust the gap as needed */
        }

        .gender-options label {
            color: #ecf0f1;
            font-size: 14px;
            cursor: pointer;
            padding: 10px;
            border-radius: 5px;
            background-color: #3498db;
            transition: background-color 0.3s ease-in-out;
        }

        .gender-options label:hover {
            background-color: #2980b9;
        }
        
        .gender-options input[type="radio"]:checked + label {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <h2>Admin Register</h2>
    <form action="registerAdmin" method="get">
        <label for="fullname">Full Name</label>
        <input type="text" name="fullname" placeholder="Enter full name" required/>

        <label for="email">Email</label>
        <input type="email" name="email" placeholder="Enter email" title="Please enter a vaild email format" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" required/>

        <label for="password">Password</label>
    <input type="password" name="password" id="password" placeholder="Enter Password" required />
        <label for="confirmPassword">Confirm Password</label>
            <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm Password" required style="transition: border-color 0.3s ease-in-out;" />

         <div id="passwordMatchStatus" style="color: red; font-size: 14px; margin-top: 5px;"></div>

        <label for="mobile">Mobile</label>
        <input type="text" name="mobile" placeholder="Enter mobile no"  pattern="[0-9]{10}" title="Please enter a 10-digit mobile number (numeric only)"required/>

        <label for="dateofbirth">Date of Birth</label>
<input type="date" name="dateofbirth" id="dateofbirth" required title="Please enter a valid date (YYYY-MM-DD)" />
        

        <div class="gender-group">
            <span class="gender-label">Gender</span>
            <div class="gender-options">
                <input type="radio" name="gender" value="male" id="male" title="Please select gender"required/>
                <label for="male">Male</label>

                <input type="radio" name="gender" value="female" id="female"  title="Please select gender"required/>
                <label for="female">Female</label>

                <input type="radio" name="gender" value="others" id="others"  title="Please select gender"required/>
                <label for="others">Others</label>
            </div>
        </div>

        <input type="submit" value="Submit"/>
    </form>
    <%@ include file = "message.jsp" %>
    <script>
      
      function checkPasswordMatch() {
          var password = document.getElementById("password").value;
          var confirmPassword = document.getElementById("confirmPassword");
          var passwordMatchStatus = document.getElementById("passwordMatchStatus");

          if (!password && !confirmPassword.value) {
              passwordMatchStatus.textContent = ""; 
          } else if (password === confirmPassword.value) {
              passwordMatchStatus.textContent = "Passwords match!";
              passwordMatchStatus.style.color = "green";
              confirmPassword.style.borderColor = "green"; 
          } else {
              passwordMatchStatus.textContent = "Passwords do not match!";
              passwordMatchStatus.style.color = "red";
              confirmPassword.style.borderColor = "red"; 
          }
      }
	
      

     
     
      document.getElementById("password").addEventListener("input", checkPasswordMatch);
      document.getElementById("confirmPassword").addEventListener("input", checkPasswordMatch);
  
  // Get the current date in the format YYYY-MM-DD
  var today = new Date().toISOString().split('T')[0];

  // Set the max attribute of the date input to today
  document.getElementById('dateofbirth').setAttribute('max', today);
  
 
  document.getElementById('myForm').addEventListener('submit', function (event) {
    var genderRadios = document.getElementsByName('gender');
    var genderSelected = false;

    for (var i = 0; i < genderRadios.length; i++) {
      if (genderRadios[i].checked) {
        genderSelected = true;
        break;
      }
    }

    if (!genderSelected) {
      alert('Please select a gender.');
      event.preventDefault(); // Prevent form submission
    }
  });
  </script>
</body>
</html>
