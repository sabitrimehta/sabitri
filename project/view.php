<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>
      <!-- Bootstrap CSS -->
    <link
      href=
"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity=
"sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
      crossorigin="anonymous"
    />
      
    <link
      href=
"https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap"
      rel="stylesheet"
    />
</head>
<body>




<table class="table" border="1px solid">

    <tr>
      <th >S.No</th>
      <th >First Name</th>
      <th >Middle Name</th>
      <th >Last Name</th>
      <th >Gender</th>
      <th >Contact</th>
      <th >Email</th>
      <th >Department</th>
    </tr>

  <?php 
       
 include'connection1.php';
 $sql="SELECT * FROM employee_details";
 $result=mysqli_query($conn,$sql);
 ?><tr><?php 
 while($row=mysqli_fetch_assoc($result)){
  ?>
  <td><?php echo $row['e_id'] ?></td>
   <td><?php echo $row['first_name'] ?></td>
    <td><?php echo $row['middle_name'] ?></td>
     <td><?php echo $row['last_name'] ?></td>
      <td><?php echo $row['gender'] ?></td>
       <td><?php echo $row['contact'] ?></td>
        <td><?php echo $row['email'] ?></td>
         <td><?php echo $row['department'] ?></td>
          </tr>
          <?php
   }
   ?>
</table>
</body>
</html>