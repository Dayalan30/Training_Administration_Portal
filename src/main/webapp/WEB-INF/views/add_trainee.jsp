<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Trainee</title>
    <link rel="icon" type="image/x-icon" href="path/to/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-KyZXEAg3QhqLMpG8r+Knujsl5+z0I5t9z1i0/5PZ6en0Qg8xj1dtQg7bIc/DaNUjVmH57LAlvsH2Oq1Jg6ZfiQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
            background-image:url("https://img.freepik.com/free-vector/blue-geometric-frame-vector_53876-140352.jpg?size=626&ext=jpg&ga=GA1.1.1222169770.1702166400&semt=ais");
        }

        h2 {
            margin-bottom: 20px;
            color: #3498db; /* Blue color for headings */
            text-align: center;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            margin: auto;
        }

        label {
            font-weight: bold;
            color: #3498db; /* Blue color for labels */
            display: flex;
            align-items: center;
        }

        input[type="text"],
        input[type="number"],
        input[type="password"],
        input[type="email"],
        input[type="date"],
        textarea,
        select {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            border: 1px solid #3498db; /* Blue border color for input elements */
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="checkbox"] {
            margin-right: 5px;
        }

        button[type="submit"] {
            background-color: #3498db; /* Blue background color for the button */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            display: block;
            margin: auto; /* Center the button */
            margin-top: 20px;
        }

        button[type="submit"]:hover {
            background-color: #2980b9; /* Darker blue on hover */
        }

        .icon {
            margin-right: 8px;
        }
    </style>
</head>
<body>

    <h2>Add Course <i class="fas fa-chalkboard"></i></h2>

    <form action="addTrainee" method="get">
        <label for="firstName">First Name <i class="fas fa-user"></i></label>
        <input type="text" name="firstName" placeholder="Enter First name" />

        <label for="lastName">Last Name <i class="fas fa-user"></i></label>
        <input type="text" name="lastName" placeholder="Enter Last name" />

        <label for="userName">User Name <i class="fas fa-user"></i></label>
        <input type="text" name="userName" placeholder="Enter User name"  />

        <label for="password">Password <i class="fas fa-lock"></i></label>
        <input type="password" name="password" placeholder="Enter Password" />

        <label for="emailId">Email <i class="fas fa-envelope"></i></label>
        <input type="email" name="emailId" placeholder="Enter Email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="Check the email format it should be like ram@gmail.com" />

        <label for="dateOfBirth">Date of Birth <i class="fas fa-calendar"></i></label>
        <input type="date" name="dateOfBirth" id="dateofbirth" placeholder="Enter date of birth" />

        <label>Gender <i class="fas fa-venus-mars"></i></label>
        <input type="radio" name="gender" value="male"> Male
        <input type="radio" name="gender" value="female"> Female
        <input type="radio" name="gender" value="others" disabled> Others

        <label for="mobile">Mobile Number <i class="fas fa-mobile-alt"></i></label>
        <input type="text" name="mobile" placeholder="Enter Mobile no" pattern="[0-9]{10}"/>

        <label for="country">Country <i class="fas fa-globe"></i></label>
        <input type="text" name="country" placeholder="Enter Country" />

        <label for="state">State <i class="fas fa-map-marker-alt"></i></label>
        <input type="text" name="state" placeholder="Enter State" />

        <label for="city">City <i class="fas fa-city"></i></label>
        <input type="text" name="city" placeholder="Enter City" />

        <label for="rfs">Reason for Course <i class="fas fa-info-circle"></i></label>
        <textarea name="rfs" placeholder="Describe Why you need this course"></textarea>

        <button type="submit">Submit <i class="fas fa-arrow-right"></i></button>
    </form>
<script>  var today = new Date().toISOString().split('T')[0];

// Set the max attribute of the date input to today
document.getElementById('dateofbirth').setAttribute('max', today);
</script>
</body>
</html>
