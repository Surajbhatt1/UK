<?php
    $connection= mysqli_connect("localhost","root","","vehicle-management");
    
    session_start();

    $hotel_id= $_GET['hotel_id']; 

    $sql= "SELECT * FROM `hotel2` WHERE hotel_id='$hotel_id'"; 
    //echo $sql;
    $res= mysqli_query($connection,$sql);
    $row= mysqli_fetch_assoc($res);
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>UK-Hotels</title>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">

</head>
<body>  
  
   <?php  include 'navbar.php';?>
   <div class="container" style="margin-top: 20px; margin-bottom: 20px;">
	
   
</div>
       
        <div class="container">
          <div class="row"> 
          <div class="fb-profile-text" id="h1" >
             <h2>Hotel Name- <?php echo $row['hotel_name']; ?></h2>
            </div>
            <hr>
           <div class="col-sm-3">
                   <div class="fb-profile">
                        <img height="250" width="250" align="left" class="fb-image-profile thumbnail userpic" src="vehicle picture/<?php echo $row['hotel_photo'] ?>" alt="dp"/>
                        
                    </div>
           </div> 
           
           <div class="col-sm-9">
               <div data-spy="scroll" class="tabbable-panel">
                <div class="tabbable-line">
                  <ul class="nav nav-tabs ">
                    <li class="active">
                      <a href="#tab_default_1" data-toggle="tab">
                      About Hotel </a>
                    </li>
                    
                    <!--
                    <li>
                      <a href="#tab_default_2" data-toggle="tab">
                     Bill </a>
                    </li>
                    -->
                  </ul>
                  <div class="tab-content">
                    <div class="tab-pane active" id="tab_default_1">
                     <h4><strong>Hotel Register Date</strong></h4>
                      <p>
                        <?php echo $row['hotel_regester_date']; ?> 
                      </p>
                    
                      <h4><strong>Contact Number</strong></h4>
                      <p><?php echo $row['hotel_contact_number']; ?></p>
                      
                      <h4><strong>Address</strong></h4>
                      <p>
                        <?php echo $row['hotel_address']; ?> 
                      </p>

                      <h4><strong>License No</strong></h4>
                      <p>
                        <?php echo $row['hotel_license_number']; ?> 
                      </p>

                    </div>
                    
                    <?php //if($_SESSION['username']!= null) {  ?>
                    
                    <!--
                    <div class="tab-pane" id="tab_default_2">
                      <div class="row">
                      <div class="col-sm-10">
                       <?php //include 'insertbill.php';?>
                          
                          <?php // } ?>
                      </div>
                      </div>
                    </div>  
                    -->
                            
                  </div>
                  
                   
                  
                
                  
                </div>
              </div>
           </div>
          </div>
        </div>
        
          <!-- /container fluid-->  
        <div class="container">
          <div class="col-sm-12"> 
              
          </div>
    </div>
    
</body>
</html>




