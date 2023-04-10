<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>personal information</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<form action="view.php" method="POST">
	<fieldset>
		<legend>Personal information:</legend>
		<button type="submit5"><a href="view.php"></a>view</button>
	<label>First Name:</label>
	<input type="text" name="first_name">
	<label>Middle Name:</label>
	<input type="text" name="middle_name" >
	<label>Last Name:</label>
	<input type="text" name="last_name"  >
	<label>Phone Number:</label>
	<input type="text" name="phone" id="phone">
	<label>Email:</label>
	<input type="email" name="email" id="email">
	<label id="gender">Gender:</label>
	<select name="gender">
		<option value="">select.</option>
		<option value="male">Male:</option>
		<option value="Femele">Female:</option>
		<option value="other">other:</option>
	</select>
	<label>Birthday:</label>
	<input type="date" name="birthday">

    </select>
    <label>Nationality:</label>
    <select id="nationality" name=" nationality">
    	<option value="">Nationality:</option>
        <option value="Nepal">Nepal</option>
        <option value="india">India</option>
    </select>
    <br>
    <button type="submit" name="submit" value="submit">
    submit
    </button>

    <button  type="submit" name="submit" value="submit1">
        <a href="address.php">Next</a>
    </button>
   	</fieldset>
</form>
</body>
</html>
<?php include'connection.php'; 
if (isset($_POST['submit'])) {
	$firstname=$_POST['first_name'];
	$middlename=$_POST['middle_name'];
	$lastname=$_POST['last_name'];
	$phone=$_POST['phone'];
	$email=$_POST['email'];
	$gender=$_POST['gender'];
	$birthday=$_POST['birthday'];

	$nationality=$_POST['nationality'];


     $sql= "INSERT INTO personal_information(first_name, middle_name, last_name,  phone_number, email, gender,birthday,nationality) VALUES ('$firstname','$middlename','$lastname',$phone,'$email','$gender',
     	'$birthday','$nationality')";
    
    if(mysqli_query($conn, $sql)){
    echo "Records inserted successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. "  . mysqli_error($conn);
}}
 ?>





 <!-- INSERT INTO districts (districts_id,districts_name, province_id) VALUES 
  (1,'Achham', 7),
  (2,'Arghakhanchi', 5),
  (3,'Baglung', 4),
  (4,'Baitadi', 7),
  (5,'Bajhang', 7),
  (6,'Bajura', 7),
  (7,'Banke', 5),
  (8,'Bara', 2),
  (9,'Bardiya', 5),
  (10,'Bhaktapur', 3),
  (11,'Bhojpur', 1),
  (12,'Chitwan', 4),
  (13,'Dadeldhura', 7),
  (14,'Dailekh', 6),
  (15,'Dang', 5),
  (16,'Darchula', 7),
  (17,'Dhading', 4),
  (18,'Dhankuta', 1),
  (19,'Dhanusha', 2),
  (20,'Dolakha', 3),
  (21,'Dolpa', 7),
  (22,'Doti', 7),
  (23,'Eastern Rukum', 5),
  (24,'Gorkha', 4),
  (25,'Gulmi', 5),
  (26,'Humla', 7),
  (27,'Ilam', 1),
  (28,'Jajarkot', 6),
  (29,'Jhapa', 1),
  (30,'Jumla', 7),
  (31,'Kailali', 7),
  (32,'Kalikot', 6),
  (33,'Kanchanpur', 7),
  (34,'Kapilvastu', 5),
  (35,'Kaski', 4),
  (36,'Kathmandu', 3),
  (37,'Kavrepalanchok', 3),
  (38,'Khotang', 1),
  (39,'Lalitpur', 3),
  (40,'Lamjung', 4),
  (41,'Mahottari', 2),
  (42,'Makwanpur', 4),
  (43,'Manang', 4),
  (44,'Morang', 1),
  (45,'Mugu', 7),
  (46,'Mustang', 4),
  (47,'Myagdi', 4),
  (48,'Nawalpur', 4),
  (49,'Nuwakot', 4),
  (50,'Okhaldhunga', 1),
  (51,'Palpa', 5),
  (52,'Panchthar', 1),
  (53,'Parasi', 5),
  (54,'Parbat', 4),
  (55,'Parsa', 2),
  (56,'Pyuthan', 5),
  (57,'Ramechhap', 3),
  (58,'Rasuwa', 3),
  (59,'Rautahat', 2),
  (60,'Rolpa', 6),
  (61,'Rupandehi', 5),
  (62,'Rukum paschim',6),
  (63,'Salyan', 6),
  (64,'Sankhuwasabha', 1),
  (65,'Saptari', 2),
  (66,'Sarlahi', 2),
  (67,'Sindhuli', 3),
  (68,'Sindhupalchok', 3),
  (69,'Siraha', 2),
  (70,'Solukhumbu', 1),
  (71,'Sunsari', 1),
  (72,'Surkhet', 6),
  (73,'Syangja', 4),
  (74,'Tanahu', 4),
  (75,'Taplejung', 1),
  (76,'Terhathum', 1),
  (77,'Udayapur', 1); -->


