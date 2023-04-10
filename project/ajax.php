 <?php
 include'connection.php';
 $sql = "SELECT * FROM districts
 WHERE province_id LIKE '%".$_GET['id']."%'"; 


 $result = mysqli_query($conn,$sql);


 $json = [];
 while($row = $result->fetch_assoc()){
  $json[$row['districts_id']] = $row['district_name'];
}


echo json_encode($json);
?> 