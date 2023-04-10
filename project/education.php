<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/style.css">
  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
	<title>Education information</title>
</head>
<body>
  <form action="result.php" method="POST">
  	<fieldset>
  		<label>Level:</label>
  		<select id="Level" name="level">
  			<option value="">Select level:</option>
  		<?php 
      include'connection.php';
       $query5="SELECT * FROM level";
       $query_run=mysqli_query($conn,$query5);
       if (mysqli_num_rows($query_run)>0) 
       {
         foreach($query_run as $row)
               {
                 ?>
                   <option value="<?=$row['level_id'];?>"><?=$row['level_name'];?></option>
                 <?php
                }
       }
       else
       {
        ?>
           <option value="">No record found:</option>
        <?php
       }

   ?>
  		</select>
  		<label>Bord or University:</label>
        <select name="board_or_university" id="bord_or_university">
        	<option value="">Select Bord or University: </option>
        <?php 
       $query4="SELECT * FROM board_or_university ";
       $query_run=mysqli_query($conn,$query4);
       if (mysqli_num_rows($query_run)>0) 
       {
         foreach($query_run as $row)
               {
                 ?>
                   <option value="<?=$row['board_or_university_id'];?>"><?=$row['board_or_university_name'];?></option>
                 <?php
                }
       }
       else
       {
        ?>
           <option value="">No record found:</option>
        <?php
       }

   ?>
        </select>
        <label>Symbol Number:</label>
        <input type="text" name="Symbol_number" id="Symbol_number">
        <label>Passed Year:</label>
        <select id="passed_year" name="passed_year">
        	<option value="">select year:</option>
        	<option value="2075">2075</option>
          <option value="2075">2075</option>
        </select>
        <label>Division:</label>
        <input type="text" name="division" id="division">
        <button type="submit" name="submit">
        	submit
        </button>
        <button  type="submit1" name="submit1" value="submit1">
      <a href="job.php">Next</a>
    </button>
  	</fieldset>
  </form>
    </form>
     <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
     <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
</body>
</html>





<?php  include'connection.php';

if (isset($_POST['submit'])) {
 
	$level=$_POST['level'];
	$bord_or_university=$_POST['board_or_university'];
	$Symbol_number=$_POST['Symbol_number'];
	$passed_year=$_POST['passed_year'];
	$division=$_POST['division'];

  $sql2= "INSERT INTO education (board_or_university_id,Symbol_number,passed_year,division,level_id) VALUES ($bord_or_university,$Symbol_number,'$passed_year','$division',$level)";

      if (mysqli_query($conn ,$sql2)) {
         echo "data inserted successfully";
      }else{
      	echo "ERROR: Could not able to execute $sql2.".mysql_error($conn);
      }
      }
 ?> 