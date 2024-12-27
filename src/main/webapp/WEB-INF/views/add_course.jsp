<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Course</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 20px;
            background: url('https://png.pngtree.com/thumb_back/fh260/back_our/20190621/ourmid/pngtree-teachers--classroom-counseling-training-course-poster-image_188622.jpg') center/cover;
        }

        h2 {
            text-align: center;
            color: #ffffff;
            margin-bottom: 20px;
        }

        form {
            background-color: rgba(255, 192, 253, 0.5); /* Light pink background color */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
            width: 70%;
            margin: auto;
            color: #007bff; /* Blue color for text */
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
            color: #8F00FF; /* Pink color for labels */
        }

        input[type="text"],
        input[type="number"],
        input[type="date"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button[type="submit"] {
            background-color: #007bff; /* Blue background color for the button */
            color: white;
            padding: 16px 30px; /* Increase button size */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px; /* Increase font size */
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

<h2>Add Course <i class="fas fa-plus-circle icon"></i></h2>

<form action="addCourse" method="get">

    <label for="company"><i class="fas fa-building icon"></i> Company</label>
    <input type="text" name="company" placeholder="Enter company name" required />

    <label for="courseName"><i class="fas fa-book icon"></i> Course</label>
    <select name="courseName" id="courseName" ">
        <option value="c">C</option>
        <option value="cpp">C++</option>
        <option value="java">Java</option>
        <option value="python">Python</option>
        <option value="js">JavaScript</option>
          <option value="sql">Sql</option>
        <option value="frontend">Frontend</option>
    </select>

    <label for="trainerName"><i class="fas fa-user-tie icon"></i> Trainer Name</label>
    <input type="text" name="trainerName" value="Not Yet Assigned" readonly />

    <label for="startingDate"><i class="fas fa-calendar-alt icon"></i> Starting Date</label>
    <input type="date" name="startingDate" id="startingDate"placeholder="Enter starting date" required/>

    <label for="endingDate"><i class="fas fa-calendar-alt icon"></i> Ending Date</label>
    <input type="date" name="endingDate" placeholder="Enter ending date" required/>

    <label for="location"><i class="fas fa-map-marker-alt icon"></i> Location</label>
    <input type="text" name="location" placeholder="Enter location" required/>

    <label for="batchSize"><i class="fas fa-users icon"></i> Batch Size</label>
    <input type="number" name="batchSize" placeholder="Enter batch size" required/>

    <button type="submit"><i class="fas fa-check icon"></i> Add</button>
</form>

<script>
    function fetchTrainers() {
        var courseSelect = document.getElementById('courseName');
        var trainerSelect = document.getElementById('trainerName');

        // Fetch trainers based on the selected course from the server
        var selectedCourse = courseSelect.value;
        // Assuming you have a server endpoint to fetch trainers, adjust the URL accordingly
        var url = 'fetchTrainers?course=' + selectedCourse;

        // Clear existing options
        trainerSelect.innerHTML = '';

        // Fetch trainers using AJAX or similar method
        // Here, I'm simulating a fetch with a dummy array of trainers
        var trainers = ['Trainer A', 'Trainer B', 'Trainer C'];

        trainers.forEach(function (trainer) {
            var option = document.createElement('option');
            option.value = trainer;
            option.text = trainer;
            trainerSelect.add(option);
        });
    }
    </script>
    <script>
    var today = new Date().toISOString().split('T')[0];

    // Set the max attribute of the date input to today
    document.getElementById('startingDate').setAttribute('min', today);
    
</script>

</body>
</html>
