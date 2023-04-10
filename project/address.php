 <?php 
 include'connection.php';
 ?>
 <!DOCTYPE html>
 <html>
 <head>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" type="text/css" href="style.css">
     <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

     <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>

     <link rel="stylesheet" type="text/css" href="css/style.css">
     <title>Address Information</title>
 </head>
 <body>
     <form action="see.php" method="POST">

         <fieldset>
        <!--  <button type="submit5" style="background-color: #ff0000;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right;"> -->

            <h2>Address Types:</h2>
            <label for="address-type">Address types:</label>
            <select id="address-type">
                <option value="">select Address Types:</option>
                <option value="permanent-address">Permanent Address:</option>
                <option value="temporary-address">Temporary Address:</option>
            </select>

            <label for="country">country:</label> 
            <select name="country">
             <option value="">select country:</option> 
             <?php 
             $query="SELECT * FROM country";
             $query_run=mysqli_query($conn,$query);
             if (mysqli_num_rows($query_run)>0)
             {
                 foreach ($query_run as $row) 
                 {
                    ?>
                    <option value="<?=$row['country_id'];?>"><?=$row['country_name'];?></option>
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


        <label for="province">Province:</label>
        <select name="province">
          <option value="">Select province name:</option>
          <?php 
          $query="SELECT * FROM province";
          $query_run=mysqli_query($conn,$query);
          if (mysqli_num_rows($query_run)>0)
          {
             foreach ($query_run as $row) 
             {
                ?>
                <option value="<?=$row['province_id'];?>"><?=$row['province_name'];?></option>
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
    <label for="">District:</label>
    <select name="districts" >
        <option>Select Districts</option>
    </select>



    <label for="city">city:</label>
    <select name="city">
      <option value="">Select city:</option>
      <?php 
      $query4="SELECT * FROM city";
      $query_run=mysqli_query($conn,$query4);
      if (mysqli_num_rows($query_run)>0) 
      {
         foreach($query_run as $row)
         {
             ?>
             <option value="<?=$row['city_id'];?>"><?=$row['city_name'];?></option>
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


<label for="ward-No">Ward No:</label>
<input type="text" name="ward_number">
<label for="tole">tole:</label>
<input type="text" name="tole_name">
<label for="street">street:</label>
<input type="text" name="street_name">
<label for="zip_code">Zip Code:</label>
<input type="text" name="zip_code">
<button type="submit" name="submit" id="submit">
  Submit
</button>
<button  type="submit1" name="submit1" value="submit1">
  <a href="education.php">Next</a>
</button>

</fieldset>

</form>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<script>
    $( "select[name='province']" ).change(function () {
        var province_id = $(this).val();
        if(province_id) {


            $.ajax({
                url: "ajax.php",
                dataType: 'Json',
                data: {'id':province_id},
                success: function(data) {
                    $('select[name="districts"]').empty();
                    $.each(data, function(key, value) {
                        $('select[name="districts"]').append('<option value="'+ key +'">'+ value +'</option>');
                    });
                }
            });


        }else{
            $('select[name="districts"]').empty();
        }
    });
</script>
<!--  -->

<!--  -->

</body>
</html>
<?php 
include 'connection.php';
if (isset($_POST['submit'])) {
    $ward_number =$_POST['ward_number'];
    $street_name =$_POST['street_name'];
    $tole_name =$_POST['tole_name'];
    $zip_code =$_POST['zip_code'];

  //  $personal_info =$_POST['work_number'];
    $country=$_POST['country'];
    $province=$_POST['province'];
    $districts  =$_POST['districts'];
    $city =$_POST['city'];

    $sql1= "INSERT INTO address(ward_number,street_name,tole_name,zip_code,country_id,province_id,districts_id,city_id) VALUES('$ward_number','$street_name','$tole_name',$zip_code,$country,$province,$districts,$city)";


    if (mysqli_query($conn,$sql1)) {
      echo "data inserted successfully";
  }else{
      echo "ERROR: Could not able to execute $sql1. "  . mysqli_error($conn);
  }  }
  ?>

