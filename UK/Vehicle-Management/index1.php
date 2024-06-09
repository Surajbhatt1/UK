<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>vehicle management system</title>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
     <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
    <link rel="stylesheet" type="text/css" href="./slick/slick.css">
    <link rel="stylesheet" type="text/css" href="./slick/slick-theme.css"> 
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="animate.css">
    <link rel="stylesheet" href="style.css">
    

 
</head> 
<style>
    
.parallax {
    /* The image used */
    background-image: url("vehicle picture/bg5.webp");
   
    height: 100%;

    /* Set a specific height */
    min-height: 700px; 

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    
    
    }
    
.parallax1 {
    /* The image used */
    background-image: url("pexels-photo-280310 .jpeg");
    height: 100%;
    
    /* Set a specific height */
    min-height: 600px; 

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    
    } 


    .navbar-fixed-top.scrolled {
       background-color: black;
      transition: background-color 200ms linear;
    }

</style>
<body data-spy="scroll" data-target=".navbar" data-offset="50" onload="myFunction()"> 
   
   
 
       
    
     
     
     
    <!--
    <div>  
       <div class="jumbotron">
          <h2 class="animated bounce">Ruet Vehicle Management</h2>      
          <p>A management system where you can easily manage vehicles.</p>
        </div>
           
       
        
    </div> 
    -->
    <div class="parallax foo">
       
    
        <div class="hero-text" style="font-size:50px text-align: center; position: absolute;top: 50%;left: 50%;transform: translate(-50%, -50%);color: white;">
           
            <h1 class="animated rubberBand" >Book Vehicle In Uttarakhand</h1>
            <p>A management system where you can easily manage vehicles</p>
            
            <a class="btn btn-success" style="text-align: center" href="booking.php">Book a Vehicle</a>
        
          </div>
    </div>                 
    
    <div>
       <br><br>
        <div id="bus_route" class="container">
          <div class="page-header">
            <h1 style="text-align: center">vehicles</h1>      
          </div> 
          <div class="row">
              <div class="col-md-6 foo">
               <!-- <p><b>The ruet bus goes around the rajshahi city in different interval. this is the route of the ruet bus.</b></p> -->
                <img src="vehicle picture/10.jpg" class="img-responsive" >  <br>
                <img src="vehicle picture/swift.jpeg" class="img-responsive" >

              </div>
              <div class="col-md-6">
                  <br>
                  <!-- <p><b>The ruet bus goes around the rajshahi city in different interval. this is the route of the ruet bus.</b></p> -->
                <img src="vehicle picture/swift.jpeg" class="img-responsive" > <br> 
                <img src="vehicle picture/10.jpg" class="img-responsive" >  

              </div>
          </div>       
        </div>
        
        <br>
        <div class="page-header">
            <h1 style="text-align: center"></h1>      
        </div>
        <div class="parallax1"></div>
        <div id="driver" class="container">
          
          <div class="row">
              <div class="col-md-12">
                  <p style="font-size: 20px;">......</p>
                  
              </div>
          </div>
               
        </div>
            
        
        <div id="bus" class="container">
          <div class="page-header">
            <h1 style="text-align: center">Mini-Bus </h1>      
          </div> 
          <div class="row">
              <div class="col-md-6">
                
                <img src="vehicle picture/tempo.jpg" class="img-responsive" > <br> 
                <img src="vehicle picture/tempo2.jpg" class="img-responsive" >  


              </div>
              <div class="col-md-6">
                
                <img src="vehicle picture/tempo2.jpg" class="img-responsive" >  <br>
                <img src="vehicle picture/tempo.jpg" class="img-responsive" >

              </div>
          <!--    <div class="col-md-6 foo1">
                  <p style="font-size:20px;"><b>In Ruet we have around ten buses and each one of it is well maintained. These buses goes in different direction of the city and can also be hired.</b></p>
              </div>
            -->
          </div>       
        </div>
        
        
          
          <p></p>      
                
        </div>  
        
        <footer style="background-color: #2f2f2f;
          color: #fff; padding-top: 70px;
          padding-bottom: 70px;" class="container-fluid text-center">
<p> The Tourists need to visit the travel agency office to plan any tour.  It involves a lot of manual paperwork, and customers need to stay in the queue for a long time.  Most of the time agencies have to rely on local information sources and their own experience regarding time and cost. Through a phone call, they have to get information. 
So, tourists can visit the website, browse the information, and access all the services at their own pace.  The website can perform all operations related to traveling, booking accommodations, sightseeing, etc.  
This website can provide a variety of travel services. To provide information such as tourist places, pilgrimage places, etc.
To book hotels, and homestay.
Multilanguage support is embedded
To get extra information through a chatbot. One of the main purposes of our website is to facilitate the offline customers online because customers can not spend their precious time by visiting travel agency to plan their tours.
People who are unaware about the famous tourist places, culture, nature's beauty etc... Can visit this website to explore and plan your tours.

</p>        </footer>
        
        
        
        
    
    
    
<script>
    $(function () {
  $(document).scroll(function () {
    var $nav = $(".navbar-fixed-top");
    $a= $(".parallax");
    $nav.toggleClass('scrolled', $(this).scrollTop() > $a.height());
  });
}); 
    
    </script>    
  
  
  <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
  
  
  <script>
        window.sr = ScrollReveal();
        sr.reveal('.foo', { duration: 800 });
        sr.reveal('.foo1', { duration: 800,origin: 'top'});
    </script>
    
</body>
</html>