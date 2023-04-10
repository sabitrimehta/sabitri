<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>job information</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<form action="result.php" method="POST">
	<fieldset>
		<label>Title:</label>
		<input type="text" name="title" id="title">
		<label for="department">Department:</label>
		<select id="department" name="department">
			<option value="">select Department:</option>
			<option value="teacher">teacher</option>
			<option value="engineer">engineer</option>
		</select>
		<label>Work location:</label>
		<input type="text" name="work_location">
		<label>Email:</label>
		<input type="text" name="email" id="email">
		<label>Work Number:</label>
		<input type="text" name="work_number" id="work_number">
		<label>Job Start Date:</label>
		<input type="date" name="job_start_date" id="job_start_date">
		<label>Salary:</label>
		<input type="text" name="salary" id="salary">
		<button type="submit" name="submit" id="submit" >
			submit
		</button>
		<button  type="submit1" name="submit1" value="submit1">
    	<a href="family_info.php">Next</a>
    </button>
	</fieldset>
</form>
</body>
</html>
<?php 
include 'connection.php';
  if (isset($_POST['submit'])) {
  	$title=$_POST['title'];

  	$department=$_POST['department'];
  	$work_location=$_POST['work_location'];
  	$email=$_POST['email'];

  	$work_number=$_POST['work_number'];
  	$job_start_date=$_POST['job_start_date'];
  	$salary=$_POST['salary'];

  $sql1= "INSERT INTO job_information(title,department,work_location,email,work_number,job_start_date,salary ) VALUES( '$title','$department','$work_location','$email','$work_number','$job_start_date','$salary')";
     if (mysqli_query($conn,$sql1)) {
     	echo "data inserted successfully";
     }else{
     	echo "ERROR: Could not able to execute $sql1. "  . mysqli_error($conn);
     }  }
 ?>