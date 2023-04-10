<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
<table border="1px solid black">
	<tr>
		<th>country</th>
		<th>province</th>
		<th>district</th>
		<th>city</th>
		<th>ward number</th>
		<th>tole</th>
		<th>street</th>
		<th>zip code</th>
	</tr>
	<?php 
      include'connection.php';
      $sql="SELECT * FROM address";
      $result=mysqli_query($conn,$sql);
	 ?>
	     <tr>
	     	
	     <?php 
    while($row=mysqli_fetch_assoc($result)){
	      ?>

  <td><?php echo $row['country_id'] ?></td>
   <td><?php echo $row['province_id'] ?></td>
    <td><?php echo $row['districts_id'] ?></td>
     <td><?php echo $row['city_id'] ?></td>
      <td><?php echo $row['ward_number'] ?></td>
       <td><?php echo $row['street_name'] ?></td>
        <td><?php echo $row['tole_name'] ?></td>
         <td><?php echo $row['zip_code'] ?></td>
	     </tr>
	     <?php 
	 }
	?>
</table>
</body>
</html>