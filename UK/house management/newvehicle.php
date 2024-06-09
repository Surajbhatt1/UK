<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
   

    $connection= mysqli_connect('localhost','root','','vehicle-management');
    $msg= "" ;     


    if(isset($_POST['submit'])){
        $house_name=$_POST['house_name'];
        $house_regester_date=$_POST['house_regester_date'];
        $house_contact_number=$_POST['house_contact_number'];
        $house_address=$_POST['house_address'];
        //$drphoto=$_FILES['file']['name'];
        $house_photo= $_FILES['file']['name'];
        
        //image Upload
    
       move_uploaded_file($_FILES['file']['house_name'],"picture/".$_FILES['file']['name']); 
        
        $res=false;
        $insert_query="INSERT INTO `house2`(`house_id`, `house_name`, `house_regester_date`, `house_contact_number`, `house_address`, `house_photo`) VALUES ('','$house_name','$house_regester_date','$house_contact_number','$house_address','$house_photo')";
        
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
    <title>Add New House's</title> 
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
            <h1 style="text-align: center;">Add New House Form</h1>
            <?php echo $msg; ?>
                              
                  
      
      </div> 
       <div class="col-md-3">
         
       </div>
        <div class="col-md-6 animated bounceIn"> 
          
           
            
                <br>
            <form class="form-horizontal" action="" method="post" enctype="multipart/form-data" >
                
                <div class="input-group">
                  <span class="input-group-addon"><b>House Name</b></span>
                  <input id="house_name" type="text" class="form-control" name="house_name" placeholder="Enter Name" required>
                </div>
                <br> 
                
                 <div class="input-group">
                  <span class="input-group-addon"><b>Contact number</b></span>
                  <input id="house_contact_number" type="text" class="form-control" name="house_contact_number" placeholder="Enter Contact No" required>
                </div>
                <br> 
                
                <div class="input-group">
                  <span class="input-group-addon"><b>Register Date</b></span>
                  <input id="house_regester_date" type="text" class="form-control" name="house_regester_date" placeholder="Enter Regester Date" required>
                </div>
                <br>
                
              
                
                 <script>
                      $( function() {
                        $( "#house_regester_date" ).datepicker();
                      } );
                </script> 
                
                <!-- <div class="input-group">
                  <span class="input-group-addon"><b>National ID</b></span>
                  <input id="drnid" type="text" class="form-control" name="drnid" placeholder="Nid No">
                </div>
                <br> 
                
                <div class="input-group">
                  <span class="input-group-addon"><b>License No</b></span>
                  <input id="hotellicense" type="text" class="form-control" name="hotellicense" placeholder="Enter License No" required>
                </div>
                <br>-->
      
                          
              
                
                
                <br>
                
                 <div class="input-group">
                  <span class="input-group-addon"><b>House Address</b></span>
                     <textarea rows="5" id="house_address" type="text" class="form-control" name="house_address" placeholder="Enter Address" required> 

                     </textarea>
                  
                </div>
                <br>
                
                 <div class="input-group">
                  <span class="input-group-addon"><b>Add House Photo</b></span>
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