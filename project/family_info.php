<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>family information</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<form action="#" method="POST">
	<fieldset>
		<legend>Famliy information</legend>
		<label>Father Name:</label>
		<input type="text" name="Father_name" id="father_name">
		<label>Mother Name:</label>
		<input type="text" name="Mother_name" id="Mother_name">
		<label>Grand Father Name:</label>
		<input type="text" name="Grand_father_name">
		<label>Grand Mother Name:</label>
		<input type="text" name="Grand_mother_name">
		<label>Spouse Name:</label>
		<input type="text" name="spouse_name" id="spouse-name">
		<button type="submit" name="submit">
			submit 
		</button>
	</fieldset>

</form>
</body>
</html>


<?php 
include 'connection.php';
  if (isset($_POST['submit'])) {
  	$father_name=$_POST['Father_name'];

  	$Mother_name=$_POST['Mother_name'];
  	$Grand_father_name=$_POST['Grand_father_name'];
  	$Grand_mother_name=$_POST['Grand_mother_name'];

  	$spouse_name=$_POST['spouse_name'];
  

  $sql3="INSERT INTO family_information(Father_name,Mother_name,Grand_fathar_name,Grand_mother_name,spouse_name) VALUES('$father_name','$Mother_name','$Grand_father_name','$Grand_mother_name','$spouse_name')";
     if (mysqli_query($conn,$sql3)) {
     	echo "data inserted successfully";
     }else{
     	echo "ERROR: Could not able to execute $sql3. "  . mysqli_error($conn);
     }  }
 ?>
















 <!-- INSERT INTO `city`(`city_id`, `city_name`, `districts_id`) VALUES
(1, 'Baitadi', 14),
(2, 'Banepa', 3),
(3, 'Bardibas', 2),
(4, 'Bhadrapur', 20),
(5, 'Bharatpur', 4),
(6, 'Bhimdatta', 6),
(7, 'Biratnagar', 3),
(8, 'Birendranagar', 11),
(9, 'Birgunj', 5),
(10, 'Birgunj Thana', 5),
(11, 'Butwal', 12),
(12, 'Damauli', 12),
(13, 'Dang', 12),
(14, 'Darchula', 15),
(15, 'Dhangadhi', 7),
(16, 'Dhankuta', 1),
(17, 'Dharan', 3),
(18, 'Dipayal Silgadhi', 14),
(19, 'Gaighat', 13),
(20, 'Gaur', 5),
(21, 'Ghorahi', 12),
(22, 'Gulariya', 8),
(23, 'Hetauda', 4),
(24, 'Ilam', 19),
(25, 'Inaruwa', 2),
(26, 'Itahari', 3),
(27, 'Jaleshwar', 7),
(28, 'Janakpur', 2),
(29, 'Kathmandu', 1),
(30, 'Kawasoti', 4),
(31, 'Khandbari', 1),
(32, 'Kirtipur', 1),
(33, 'Krishnanagar', 8),
(34, 'Lahan', 2),
(35, 'Lalbandi', 5),
(36, 'Lamahi', 12),
(37, 'Lamjung', 2),
(38, 'Lekhnath', 2),
(39, 'Lumbini', 12),
(40, 'Mahendranagar', 6),
(41, 'Mechinagar', 3),
(42, 'Narayangarh', 4),
(43, 'Nepalgunj', 9),
(44, 'Panauti', 3),
(45, 'Parasi', 12),
(46, 'Pokhara', 2),
(47, 'Rajbiraj', 2),
(48, 'Rajbiraj Municipality', 2),
(49, 'Rampur', 17),
(50, 'Rangeli', 2);
 -->