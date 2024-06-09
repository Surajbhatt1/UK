<?php
    $connection= mysqli_connect('localhost','root','','vehicle-management');
    session_start();

    $msg="";
    
    if(isset($_POST['submit'])){
        $name=$_POST['name'];
        $type=$_POST['type'];
        $peoples=$_POST['peoples'];
        $req_date=$_POST['req_date'];
        $req_time=$_POST['req_time'];
        $return_date=$_POST['return_date'];
        $return_time=$_POST['return_time'];
        $district=$_POST['district'];
        $taluka=$_POST['taluka'];
        $reason=$_POST['reason'];
        $email=$_POST['email'];
        $mobile=$_POST['mobile'];
        $username= $_POST['username'];
        
        $insert_query="INSERT INTO `booking`(`booking_id`, `name`,`username`, `type`, `peoples`, `req_date`, `req_time`, `ret_date`, `ret_time`, `district`, `taluka`, `resons`, `email`, `mobile`, `confirmation`, `veh_reg`, `driverid`, `finished`) 
                       VALUES ('','$name','$username','$type','$peoples','$req_date','$req_time','$return_date','$return_time','$district','$taluka','$reason','$email','$mobile','','','','')"; 
        echo $name;
        
        
        
        $res= mysqli_query($connection,$insert_query);
        
         if($res==true){
            $msg= "<script language='javascript'>sswal('Success!','Registration Completed!','success');                                     
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
    <title>Document</title>
    
    
    
    
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
    
   
     <link rel="stylesheet" href="sweetalert2/sweetalert2.css">
    <script src="sweetalert2/sweetalert2.min.js"></script>
    
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
</head>
<body>
    <?php echo $msg;
    ?>
    
    <script>
    
        var timer = setTimeout(function() {
            window.location='booking.php'
        }, 1000);
    </script>

</body>
</html>
