
     
<?php
  
    if(isset($_SESSION['username'])==false) {
        
?>  
  
  <div class="container">
      
         <nav class="navbar navbar-inverse navbar-fixed-top gabanav" style="background-color:black;">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
              </button>

            </div>
            <div class="collapse navbar-collapse" id="myNavbar" >
              <ul class="nav navbar-nav gabali">
                <li><a href="index.php">Home</a></li>
                <li><a href="driverlist.php">Hotels</a></li>
                <li><a href="buslist.php">Houses</a></li>


                <!--<li><a href="route.php">Bus Route</a></li>
                <li><a href="schedule.php">Bus Schedule</a></li>-->
                
               
                

              </ul>
              <ul class="nav navbar-nav navbar-right">
                <li><a href="login.php"><span class="glyphicon glyphicon-user"></span> Sign in</a></li>
              </ul>
            </div> 

            </div>   
        </nav>
             
      
       
  </div>
   
       
    <?php } else { ?> 
    <div class="container"  style="background-color:black;">
       <nav class="navbar navbar-inverse navbar-fixed-top gabanav">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
              </button>

            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav gabali">
                <li><a href="index.php">Home</a></li>
                <li><a href="driverlist.php">Hotel's </a></li>
                <li><a href="buslist.php">Home's</a></li>

                <!--<li><a href="driverlist.php">Driver</a></li>-->
              <!--  <li><a href="route.php">Bus Route</a></li>
                <li><a href="schedule.php">Bus Schedule</a></li>
                <li><a href="mybill.php?id=<?php echo $_SESSION['username']; ?>">My Account</a></li>-->
                <li><a href="payment.php">Make Payment</a></li>
               
                
                <!--
                 <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="newdriver.php">Add New Driver</a></li>
                    <li><a href="newvehicle.php">Add New Vehicle</a></li>
                    <li><a href="indexbill.php">Billing System</a></li>
                    <li><a href="bookinglist.php">Booking</a></li>
                    <li><a href="trip_details.php">Trip Details</a></li>
                  </ul>
                </li>
                -->

              </ul>
              <ul class="nav navbar-nav navbar-right">
              <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['username']; ?></a></li>  
              <li><a href="logout.php"><span class="glyphicon glyphicon-log-in"></span> Log Out</a></li>
                
              </ul>
            </div> 

        </div> 
      
    </nav> 
    </div>
    
    
    <?php } ?> 
    
    
    
    
   
    
    