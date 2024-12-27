<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Trainer</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-KyZXEAg3QhqLMpG8r+Knujsl5+z0I5t9z1i0/5PZ6en0Qg8xj1dtQg7bIc/DaNUjVmH57LAlvsH2Oq1Jg6ZfiQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background: url('https://img.freepik.com/premium-photo/modern-minimalist-workplace-with-laptop-coffee-mugs-glasses-notebook-work-top-view-copy-paste-area-flat_37714-1249.jpg') center/cover;
             /* Blur effect */
            background-attachment: fixed;
        }
		background{
		filter: blur(5px);
		}
        h2 {
            margin-bottom: 20px;
            text-align: center;
            color: #007bff; /* Blue color for headings */
        }

        form {
            background-color: rgba(255, 255, 255, 0.7); /* Adjusted transparency */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            margin: auto;
        }

        label {
            font-weight: bold;
            display: flex;
            align-items: center;
            color: #007bff; /* Blue color for labels */
            margin-bottom: 8px;
        }

        .radio-group {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

        .radio-group input {
            margin-right: 5px;
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
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="checkbox"] {
            margin-right: 5px;
        }

        fieldset {
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 10px;
        }

        legend {
            font-weight: bold;
            color: #007bff; /* Blue color for legend */
        }

        button[type="submit"] {
            background-color: #007bff;
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
            background-color: #0056b3;
        }

        .icon {
            margin-right: 8px;
        }
    </style>
</head>
<body>

    <h2>Add Trainer <i class="fas fa-chalkboard-teacher icon"></i></h2>

    <form action="addTrainer" method="get">
        <label for="firstName"><i class="fas fa-user icon"></i> First Name</label>
        <input type="text" name="firstName" placeholder="Enter First name" />

        <label for="lastName"><i class="fas fa-user icon"></i> Last Name</label>
        <input type="text" name="lastName" placeholder="Enter Last name" />

        <label for="emailId"><i class="fas fa-envelope icon"></i> Email</label>
        <input type="email" name="emailId" placeholder="Enter Email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="Check the email format it should be like ram@gmail.com" />

        <label for="password"><i class="fas fa-lock icon"></i> Password</label>
        <input type="password" name="password" placeholder="Enter Password" />

        <label for="mobileNo"><i class="fas fa-mobile-alt icon"></i> Mobile Number</label>
        <input type="text" name="mobileNo" placeholder="Enter Mobile no" pattern="\d{10} "title="Enter 10 digit valid number" />

        <label for="dateOfBirth"><i class="fas fa-calendar-alt icon"></i> Date of Birth</label>
        <input type="date" name="dateOfBirth" placeholder="Enter date of birth" />

        <fieldset>
            <legend>Choose Your Skill</legend>
            <div class="radio-group">
                <input type="radio" id="language1" name="language" value="C">
                <label for="language1">C</label>

                <input type="radio" id="language2" name="language" value="C++">
                <label for="language2">C++</label>

                <input type="radio" id="language3" name="language" value="Java">
                <label for="language3">Java</label>

                <input type="radio" id="language4" name="language" value="Python">
                <label for="language4">Python</label>

                <input type="radio" id="language5" name="language" value="Sql">
                <label for="language5">Sql</label>

                <input type="radio" id="language6" name="language" value="Html/Css/Js">
                <label for="language6">Html/Css/Js</label>
            </div>
        </fieldset>

        <button type="submit"><i class="fas fa-arrow-right icon"></i> Submit</button>
    </form>

</body>
</html>
