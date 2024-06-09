<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
    $connection= mysqli_connect('localhost','root','','vehicle-management');


    $username= $_SESSION['username'];
    //echo $username;
    
    $query= "SELECT  `first_name`, `last_name`, `email` FROM `user` WHERE username='$username'";
    $result= mysqli_query($connection,$query);
    
    $row= mysqli_fetch_assoc($result);
    //$name= $row['first_name']." ". $row['last_name'];
   // echo $name;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Where to stay</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <link rel="stylesheet" href="css/wickedpicker.min.css">
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
    
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
     <link rel="stylesheet" href="sweetalert2/sweetalert2.css">
    <script src="sweetalert2/sweetalert2.min.js"></script>
    
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="js/wickedpicker.min.js"></script>
    <link rel="stylesheet" href="animate.css">
    <link rel="stylesheet" href="style.css">
</head>
<style>
    .navbar-fixed-top.scrolled {
   background-color: ghostwhite;
  transition: background-color 200ms linear;
}    
</style>

<body>
    <?php include 'navbar.php'; ?>
    <br>
    <div class="container">
        <div class="row">
            <div class="page-header">
                <h1 style="text-align:center;">Where to stay / Hotel / House</h1>
                 <?php //echo $msg; ?>
            </div>
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <form class="animated bounce" action="bookingaction.php" method="post">
                   
                    <div class="input-group">
                      <span class="input-group-addon"><b>Name</b></span>
                      <input id="name" type="text" class="form-control" name="name" value="<?php echo $row['first_name']." ". $row['last_name']; ?>"  required>
                    </div>
                    
                    <br>
                    <div class="input-group">
                      <span class="input-group-addon"><b>Where to Stay</b></span> &nbsp; 
                      <label><input type="radio" name="type" value="house">House</label> &nbsp;
                      <label><input type="radio" name="type" value="hotel">Hotel</label>
                    </div>
                    <br>
                    <div class="input-group">
                      <span class="input-group-addon"><b>How many people?</b></span> &nbsp;
                      <label><input type="number" name="peoples"></label> &nbsp;
                    </div>
                    <br>
                    <div class="input-group">
                      <span class="input-group-addon"><b>Date of Check in</b></span>
                      <input id="req_date" type="text" class="form-control" name="req_date" placeholder="Day the car is needed" required>
                      <input type="text" name="req_time" id="req_time" class="form-control"/>
                      
                    </div>
                    
                    <script>
                      $( function() {
                        $( "#req_date" ).datepicker();
                        $("#req_time").wickedpicker();
                        
                      } ); 
                        
                        
                        
                    </script> 
                    <br>
                    
                    <div class="input-group">
                      <span class="input-group-addon"><b>Date of Check out</b></span>
                      <input id="return_date" type="text" class="form-control" name="return_date" placeholder="Day the car is returned" required>
                      <input type="text" name="return_time" id="return_time" class="form-control"/>
                    </div>
                    
                    <script>
                      $( function() {
                        $( "#return_date" ).datepicker();
                        $( "#return_time" ).wickedpicker();
                      } );
                    </script>
                    <br>
                    
                    <div class="input-group">
                      <span class="input-group-addon"><b>Districts</b></span>
                      <input id="district" type="text" class="form-control" name="district" placeholder="Enter Districts" >
                      <select id="district">
                        <option>Select District</option>
	                      <option value="Alm">Almora</option>
	                      <option value="dist">Bageshwar</option>
                        <option value="dist">Chamoli</option>
	                      <option value="dist">Champawat</option>
	                      <option value="dist">Dehradun	</option>
	                      <option value="dist">Haridwar</option>
	                      <option value="dist">Narital</option>
	                      <option value="dist">Pauri Gharwal</option>
	                      <option value="dist">Pithoragarh</option>
	                      <option value="dist">Rudraprayag</option>
	                      <option value="dist">Tehri Gharwal</option>
                        <option value="dist">Udham Singh Nagar</option>
	                      <option value="dist">Uttarkashi</option>
                      </select>
                    </div>
                    <br>
                    
                    <div class="input-group">
                      <span class="input-group-addon"><b>Taluka</b></span>
                      <input id="taluka" type="text" class="form-control" name="taluka" placeholder="Enter Taluka">
                      <select id=" SelectTaluka">
                        <option>Select Taluka</option>
                        <option value="Tal">arvi</option>
                        <option value="Tal">arvi</option>
                        <option value="Tal">arvi</option>
                        <option value="Tal">arvi</option>

                      </select>  
                    </div>
                    <br>
                    
                    <div class="input-group">
                      <span class="input-group-addon"><b>Reason for booking</b></span>
                      <input id="reason" type="text" class="form-control" name="reason" placeholder="Enter reason for booking">
                    </div>
                    <br>
                    
                    <div class="input-group">
                      <span class="input-group-addon"><b>Email</b></span>
                      <input id="email" type="email" class="form-control" name="email" value="<?php echo $row['email']; ?>" required>
                    </div>
                    <br>
                    
                    <div class="input-group">
                      <span class="input-group-addon"><b>Mobile</b></span>
                      <input id="mobile" type="number" class="form-control" name="mobile" placeholder="Mobile No" required maxlength="10">
                    </div>
                    <br>
                    
                    <input type="hidden" name="username" value="<?php echo $username; ?>">
                    
                    <div class="input-group">
                        <input type="submit" name="submit" class="btn btn-success">
                    </div>
                     
                    
                </form>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
    
<script>
    $(function () {
  $(document).scroll(function () {
    var $nav = $(".navbar-fixed-top");
    $a= $(".navbar-fixed-top");
    $nav.toggleClass('scrolled', $(this).scrollTop() > $a.height());
  });
}); 
    
</script>  
</body>
</html>