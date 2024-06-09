<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
   

    $connection= mysqli_connect('localhost','root','','vehicle-management');
    $msg= "" ;     


    if(isset($_POST['submit'])){
        $hotel_name=$_POST['hotel_name'];
        $hotel_contact_number=$_POST['hotel_contact_number'];
        $hotel_regester_date=$_POST['hotel_regester_date'];
        $hotel_license_number=$_POST['hotel_license_number'];
        $hotel_address=$_POST['hotel_address'];
        //$drphoto=$_FILES['file']['name'];
        $hotel_photo= $_FILES['file']['name'];
        
        //image Upload
    
       move_uploaded_file($_FILES['file']['hotel_id'],"picture/".$_FILES['file']['name']); 
        
        $res=false;
        $insert_query="INSERT INTO `hotel2`(`hotel_id`, `hotel_name`, `hotel_contact_number`, `hotel_regester_date`, `hotel_license_number`, `hotel_address`, `hotel_photo`) VALUES ('','$hotel_name','$hotel_contact_number','$hotel_regester_date','$hotel_license_number','$hotel_address','$hotel_photo')";
        
        $res= mysqli_query($connection,$insert_query);
            
        if($res==true){
            $msg= "<script language='javascript'>
                                       swal(
                                            'Success!',
                                            'Registration Completed!',
                                            'success'
                                            );
				          </script>";
        }
        else{
            die('unsuccessful' .mysqli_error($connection));
        }
        
        
    }

    
        
       
    
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Hotels</title> 
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
    
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
     <link rel="stylesheet" href="sweetalert2/sweetalert2.css">
    <script src="sweetalert2/sweetalert2.min.js"></script>
  
 
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="animate.css">
</head>
<body>  
 <?php include 'navbar_admin.php'; ?>
 <br>
  
  
   <div class="container"> 
     <div class="row">
       
        <div class="page-header">
            <h1 style="text-align: center;">Add New Hotel Form</h1>
            <?php echo $msg; ?>
                              
                  
      
      </div> 
       <div class="col-md-3">
         
       </div>
        <div class="col-md-6 animated bounceIn"> 
          
           
            
                <br>
            <form class="form-horizontal" action="" method="post" enctype="multipart/form-data" >
                
                <div class="input-group">
                  <span class="input-group-addon"><b>Hotel Name</b></span>
                  <input id="hotel_name" type="text" class="form-control" name="hotel_name" placeholder="Name" required>
                </div>
                <br> 
                
                 <div class="input-group">
                  <span class="input-group-addon"><b>Contact number</b></span>
                  <input id="hotel_contact_number" type="text" class="form-control" name="hotel_contact_number" placeholder="Enter Contact No" required>
                </div>
                <br> 
                
                <div class="input-group">
                  <span class="input-group-addon"><b>Register Date</b></span>
                  <input id="hotel_register_date" type="text" class="form-control" name="hotel_register_date" placeholder="Enter Register Date" required>
                </div>
                <br>
                
              
                
                 <script>
                      $( function() {
                        $( "#hotel_register_date" ).datepicker();
                      } );
                </script> 
                
                <!-- <div class="input-group">
                  <span class="input-group-addon"><b>National ID</b></span>
                  <input id="drnid" type="text" class="form-control" name="drnid" placeholder="Nid No">
                </div>
                <br> -->
                
                <div class="input-group">
                  <span class="input-group-addon"><b>License No</b></span>
                  <input id="hotel_license_number" type="text" class="form-control" name="hotel_license_number" placeholder="Enter License No" required>
                </div>
                <br>
      
                          
                 <script>
                      $( function() {
                        $( "#drlicensevalid" ).datepicker();
                      } );
                </script> 
                
                
                <br>
                
                 <div class="input-group">
                  <span class="input-group-addon"><b>Hotel Address</b></span>
                     <textarea rows="5" id="hotel_address" type="text" class="form-control" name="hotel_address" placeholder="Enter Address" required> 

                     </textarea>
                  
                </div>
                <br>
                
                 <div class="input-group">
                  <span class="input-group-addon"><b>Add Hotel Photo</b></span>
                  <input  type="file" class="form-control" name="file" required> 

              </div>
                
                
                 
                
                <div class="input-group">
                  <input type="submit" name="submit" class="btn btn-success">
                  
                </div>
              </form>   
        </div>  
        <div class="col-md-3"></div>
         
     </div>
         
   
    </div> 
    
   
    
</body>
</html>