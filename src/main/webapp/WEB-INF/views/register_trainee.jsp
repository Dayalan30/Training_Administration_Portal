<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trainee Registration Form</title>
    <style>
        body {
            background: linear-gradient(to right, #001f3f, #003366);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        form {
            max-width: 800px;
            width: 100%;
            padding: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            background: #001f3f;
            border-radius: 10px;
            box-sizing: border-box;
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }

        .form-group {
            width: 48%;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #ecf0f1;
            font-size: 14px;
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin-bottom: 16px;
            border: 1px solid #2980b9;
            border-radius: 5px;
            box-sizing: border-box;
            transition: border-color 0.3s ease-in-out;
            background-color: #001f3f;
            color: #ecf0f1;
        }

        input:focus, select:focus {
            border-color: #3498db;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #2980b9;
            color: #ecf0f1;
            cursor: pointer;
            border: none;
            padding: 10px;
            border-radius: 5px;
            box-sizing: border-box;
            transition: background-color 0.3s ease-in-out;
        }

        input[type="submit"]:hover {
            background-color: #004080;
        }

        textarea {
            width: 100%;
            padding: 12px;
            margin-bottom: 16px;
            border: 1px solid #2980b9;
            border-radius: 5px;
            box-sizing: border-box;
            transition: border-color 0.3s ease-in-out;
            resize: vertical;
            background-color: #001f3f;
            color: #ecf0f1;
        }

        textarea:focus {
            border-color: #3498db;
        }

        .gender-group {
            width: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center; /* Center the content vertically */
            margin-bottom: 16px;
        }

        .gender-label {
            width: 100%;
            display: block;
            color: #ecf0f1;
            margin-bottom: 8px;
            font-size: 14px;
        }

        .gender-options {
            width: 100%;
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            justify-content: center;
            margin-bottom: 10px;
        }

        .gender-options label {
            width: auto;
            display: flex;
            align-items: center;
            color: #ecf0f1;
            font-size: 14px;
            cursor: pointer;
            padding: 12px;
            border-radius: 8px;
            background-color: #2980b9;
            border: 1px solid #2980b9;
            transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
        }

        .gender-options label:hover {
            background-color: #004080;
            color: #ecf0f1;
        }

        .gender-options input[type="radio"] {
            display: none;
        }

        .gender-options input[type="radio"]:checked + label {
            background-color: #004080;
            color: #ecf0f1;
        }

        h2,h1 {
            text-align: center;
            color: #ecf0f1;
            margin-bottom: 30px;
        }

        form:hover {
            transform: scale(1.02);
        }

        input[type="date"] {
            background-color: #001f3f;
            color: #ecf0f1;
            border: 1px solid #2980b9;
            border-radius: 8px;
        }
    </style>
</head>
<body>
    <form action="registerTrainee" method="get">
    <h1>Trainee Registration Form</h1>
        <div class="form-group">
            <label for="firstname">First Name</label>
            <input type="text" name="firstname" placeholder="Enter First Name" required/>

           
            <label for="username">Username</label>
            <input type="text" name="username" placeholder="Enter Username" required/>
            
            
            

            <label for="password">Password</label>
    <input type="password" name="password" id="password" placeholder="Enter Password" required />
              <label for="mobile">Mobile No</label>
            <input type="text" name="mobile" placeholder="Enter Mobile No"  pattern="[0-9]{10}" title="Please enter a 10-digit mobile number (numeric only)" required/>
            <label for="country">Country</label>
            <input type="text" name="country" placeholder="Enter Country" required/>
            <label for="city">City</label>
            <input type="text" name="city" placeholder="Enter City" required/>
            
            
            
            
    
    		

            
        </div>

        <div class="form-group">
         <label for="lastname">Last Name</label>
            <input type="text" name="lastname" placeholder="Enter Last Name" required/>
            
            <label for="emailId">Email</label>
            <input type="email" name="emailId" placeholder="Enter Email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="Check the email format it should be like ram@gmail.com" required/>
            
            <label for="confirmPassword">Confirm Password</label>
            <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm Password" required style="transition: border-color 0.3s ease-in-out;" />

         <div id="passwordMatchStatus" style="color: red; font-size: 14px; margin-top: 5px;"></div>
            
        
              <label for="dateofbirth">Date of Birth</label>
<input type="date" name="dateofbirth" id="dateofbirth" required title="Please enter a valid date (YYYY-MM-DD)" />
        
          

            
            <label for="state">State</label>
            <input type="text" name="state" placeholder="Enter State" required/>

            

            <div class="gender-group">
                <span class="gender-label">Gender</span>
                <div class="gender-options">
                    <input type="radio" name="gender" value="male" id="male" required/>
                    <label for="male">Male</label>

                    <input type="radio" name="gender" value="female" id="female" required/>
                    <label for="female">Female</label>

                    <input type="radio" name="gender" value="others" id="others" required/>
                    <label for="others">Others</label>
                </div>
            </div>
        </div>
        <div class="form-group">
        <label for="company">Company:</label>
      
  <input type="text" id="company" name="company" ><br />
     <br>   <label for="course">Course:</label>
        <input type="text" id="course_name" name="course_name" required><br />
        </div>
				

        <div class="form-group">
            <label for="rfs">Reason for Course</label>
            <textarea name="rfs" placeholder="Describe why you need this course" required></textarea>
            
            
        </div>
        <div class="form-group">
        <input type="submit" value="Submit"/></div>
        
        
        
    </form>
     <%@ include file = "message.jsp" %>
    

    
      <script>
      
      function checkPasswordMatch() {
          var password = document.getElementById("password").value;
          var confirmPassword = document.getElementById("confirmPassword");
          var passwordMatchStatus = document.getElementById("passwordMatchStatus");

          if (!password && !confirmPassword.value) {
              passwordMatchStatus.textContent = ""; // Clear the message if both fields are empty
          } else if (password === confirmPassword.value) {
              //passwordMatchStatus.textContent = "Passwords match!";
              passwordMatchStatus.style.color = "green";
              confirmPassword.style.borderColor = "green"; // Change border color to green
          } else {
              //passwordMatchStatus.textContent = "Passwords do not match!";
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