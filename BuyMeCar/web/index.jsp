
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@ include file="head.jsp" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
      <!-- HEAD SECTION-->
<head>
    <meta charset="utf-8">
    <title>BuyMeCar Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">   
     <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
     <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <!-- MAIN STYLE SECTION-->
    <link href="assets/plugins/isotope/isotope.css" rel="stylesheet" media="screen" />
    <link href="assets/plugins/fancybox/jquery.fancybox.css" rel="stylesheet" />
    <link href="assets/plugins/IconHoverEffects-master/css/component.css" rel="stylesheet" />
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/about-achivements.css" rel="stylesheet" />
    <link id="mainStyle" href="assets/css/style.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
    <!-- END MAIN STYLE SECTION-->
    
    <style>
.mySlides {display:none;}
</style>

</head>
<!-- END HEAD SECTION-->

     <!-- BODY SECTION-->
<body>

     <!-- HEADER SECTION-->
    <div class="navbar navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="fa fa-bars mobile-bars" style=""></span>
                </button>
                <a class="navbar-brand" href="index.html" >
                    <img src="assets/img/mylogo2.png" alt="" /> <!-- logo here-->
                </a>
            </div>
            <div class="navbar-collapse collapse" data-scrollreveal="enter from the right 50px">
                <ul class="nav navbar-nav">
                    <li><a href="login.jsp">admin login</a></li>
                    <li class=""><a href="#Homepage">Home</a></li><!-- menu links-->
                    <!--<li><a href="#section-about">About</a></li>  -->
                    <li><a href="#section-works">Choose Cars</a></li>
                    <li><a href="#section-services">Events</a></li>
                     <li><a href="#section-about">About</a></li>  
                    <li><a href="#section-contact">Contact</a></li>
                </ul>
            </div>

        </div>
    </div>
     <!-- END HEADER SECTION-->

    <!--PAGE CONTENT--> 
    <!-- HOMEPAGE SECTION-->  

    <section id="Homepage">
        <div class="container">
            <div class="row">
                <div data-scrollreveal="wait 0.5s and then ease-in-out 50px" class="col-md-6 col-md-offset-3">

                    <div class="align-center">
                  <!--      <h2 class="main-text">WELCOME TO BuyMeCar</h2>-->

                    </div>
                </div>
            </div>
            <div class="row">
                <div data-scrollreveal="enter from the left 500px" class="col-md-6 col-md-offset-3">

                    <div class="align-left">
                        <div class="col-md-12 align-left">
<h2 class="w3-center" style="color:white;">WELCOME TO BuyMeCar</h2>

<div class="w3-content" style="max-width:5000px;position:relative">
    
<img class="mySlides" src="assets/img/HM.jpg" style="width:100%">
<img class="mySlides" src="assets/img/AudiTT.jpg" style="width:100%">
<img class="mySlides" src="assets/img/Polo.jpg" style="width:100%">
<img class="mySlides" src="assets/img/bigthum.jpg" style="width:100%">
    

<a class="w3-btn-floating" style="position:absolute;top:45%;left:0" onclick="plusDivs(-1)">&#10094;</a>
<a class="w3-btn-floating" style="position:absolute;top:45%;right:0" onclick="plusDivs(1)">❯</a>

</div>
<script>
var slideIndex = 1;
showDivs(slideIndex);

var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 5000); // Change image every 5 seconds
}

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>

                   
                            <br />
                          <!--  <ul class="social-network social-circle">
                                <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
                                <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                            </ul> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <!--END HOMEPAGE SECTION-->
    
    
     <!-- WORKS SECTION-->
    <section id="section-works" class="section" >
        <div class="container" data-scrollreveal="enter top move 50px">
            <div class="row">
                <div class="col-md-offset-2 col-md-8">
                    <div>
                        <h2 class="heading">CHOOSE CARS</h2>
                        <p class="heading-text">
                         Looking for a car??You ended up in the right place....
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section >
        <div class="container" data-scrollreveal="enter right and move 40px, over 0.8s">
            

            <div class="row">
                <nav id="filter" class="col-md-12 text-center">
                   
                   
       <center> <table  >
            <tr>
               <td style="border:20px solid white">
                   <form action="select.jsp" method="post">
                       <input style="background-color: #37AFFF;" type="submit" value="CHOOSE CAR"></form></td>
            
                  
      
         
                 <td style="border:20px solid white">
                     <form action="compare_brand.jsp" method="post"><input style="background-color: #37AFFF;" type="submit" value="COMPARE CARS"></form></td>
                
            </tr>
           
          <!--  <tr >
                
                <td style="border:20px solid white"> <input style="background-color: #37AFFF;" type="submit" value="submit"></td>
            </tr> -->
           </table></center>
        </form>
                    <!-- <ul>
                        <li><a href="select.jsp" class="current  btn btn-default" data-filter="*">CHOOSE CAR</a></li>
                        <li><a href="#" class="btn btn-default" data-filter=".webdesign">COMPARE CARS</a></li>
                      <li><a href="#" class="btn btn-default" data-filter=".print">Print</a></li>
                    </ul> -->
                </nav>
                <div class="col-md-12">
                    <div class="row">
                        <div class="portfolio-items isotopeWrapper clearfix" id="3">

                            <article class="col-md-4 isotopeItem webdesign">
                                <div class="portfolio-item">
                                    <img src="assets/img/portfolio/FordEnd.jpg" alt="" />
                                    <div class="portfolio-desc align-center">
                                        <div class="folio-info">
                                          
                                            <a href="assets/img/portfolio/FordEnd.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </article>

                           <article class="col-md-4 isotopeItem photography">
                                <div class="portfolio-item">
                                    <img src="assets/img/portfolio/fordeco.jpg" alt="" />
                                    <div class="portfolio-desc align-center">
                                        <div class="folio-info">
                                           
                                            <a href="assets/img/portfolio/fordeco.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </article>


                            <article class="col-md-4 isotopeItem photography">
                                <div class="portfolio-item">
                                    <img src="assets/img/portfolio/polo.jpg" alt="" />
                                    <div class="portfolio-desc align-center">
                                        <div class="folio-info">
                                          
                                            <a href="assets/img/portfolio/polo.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </article>

                            <article class="col-md-4 isotopeItem print">
                                <div class="portfolio-item">
                                    <img src="assets/img/portfolio/fordmustang.jpg" alt="" />
                                    <div class="portfolio-desc align-center">
                                        <div class="folio-info">
                                         
                                            <a href="assets/img/portfolio/fordmustang.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </article>

                            <article class="col-md-4 isotopeItem photography">
                                <div class="portfolio-item">
                                    <img src="assets/img/AudiTT.jpg" alt="" />
                                    <div class="portfolio-desc align-center">
                                        <div class="folio-info">
                                           
                                            <a href="assets/img/AudiTT.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </article>

                            <article class="col-md-4 isotopeItem webdesign">
                                <div class="portfolio-item">
                                    <img src="assets/img/Polo.jpg" alt="" />
                                    <div class="portfolio-desc align-center">
                                        <div class="folio-info">
                                          
                                            <a href="assets/img/Polo.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </article>
<!--
                            <article class="col-md-4 isotopeItem print">
                                <div class="portfolio-item">
                                    <img src="assets/img/portfolio/img7.jpg" alt="" />
                                    <div class="portfolio-desc align-center">
                                        <div class="folio-info">
                                            <h5><a href="#">Duis hendrerit</a></h5>
                                            <a href="assets/img/portfolio/img7.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </article>

                            <article class="col-md-4 isotopeItem photography">
                                <div class="portfolio-item">
                                    <img src="assets/img/portfolio/img8.jpg" alt="" />
                                    <div class="portfolio-desc align-center">
                                        <div class="folio-info">
                                            <h5><a href="#">Duis hendrerit</a></h5>
                                            <a href="assets/img/portfolio/img8.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </article>

                            <article class="col-md-4 isotopeItem print">
                                <div class="portfolio-item">
                                    <img src="assets/img/portfolio/img9.jpg" alt="" />
                                    <div class="portfolio-desc align-center">
                                        <div class="folio-info">
                                            <h5><a href="#">Duis hendrerit</a></h5>
                                            <a href="assets/img/portfolio/img9.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </article> -->
                        </div>

                    </div>

                </div>
            </div>

        </div>
    </section>
    <!--END WORKS SECTION-->

    <!-- SERVICES SECTION-->
    <section id="section-services" class="section" >
        <div class="container" data-scrollreveal='after 0.30s'>
            <div class="row">
                <div class="col-md-offset-2 col-md-8">
                    <div>
                        <h2 class="heading">Events</h2>
                        <p class="heading-text">
                         Here are the upcoming auto expos.
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <section  class="section bgcolor-whitesmoke">
        <div class="container">

            <div class="row">
                <div data-scrollreveal='over 0.8s' class="col-lg-3">
                    <div class="align-left">
                     <figure class="member-photo"><img src="assets/img/team/audi.jpg" alt="" style="width:304px; height:228px;" /></figure>    
                            
                        <!--<div class="hi-icon-effect-1 hi-icon-effect-1a">
                            <a href="#" class="hi-icon hi-icon-contract"></a>
                        </div>
                        <h4 class="txt30">Lorem ipsum</h4>
                        <p>
                            Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no. 
						Mei cu dicat voluptaria volumus.
                        </p>-->
                    </div>
                </div>
                <div class="col-lg-3 " >
                    <div data-scrollreveal="enter left and move 40px, over 0.8s" class="align-center margin-top50">
                       <figure class="member-photo"><img src="assets/img/team/Vento.jpg" alt="" style="width:304px; height:228px;" /></figure>
                        <!-- <div class="hi-icon-effect-1 hi-icon-effect-1a">
                            <a href="#" class="hi-icon hi-icon-car"></a>
                        </div>
                        <h4 class="txt30" >Graeco volumus</h4>
                        <p>
                            Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no. 
						Mei cu dicat voluptaria volumus.
                        </p>-->
                    </div>
                </div>



                <div data-scrollreveal="enter right and move 40px, over 0.8s" class="col-lg-6">

                    <div data-scrollreveal="enter right">
                        <ul class="timeline">
                            <li class="time-label">
                                <span class="bg-green">Things We Have For You
                                </span>
                                <br />
                                <br />
                            </li>

                            <li>
                                <i class="fa fa-comments bg-yellow"></i>
                                <div class="timeline-item">

                                    <div class="timeline-body" style="background-color: whitesmoke;">
                                        <b><a http://www.carblogindia.com/tag/auto-expo-2016/>DELHI 2K16 AUTO EXPO</a>
                                        </b>
                                        <p>Delhi Auto Expo 2016 Motor Show in India –  concepts, new models, new & upcoming launches and all the information on the 2016 Motor Show in Delhi
                                        </p>
                                        <a http://www.autoexpo.in/>or visit this link for Delhi Auto Expo details </a> </br>
                                        </br> 
                                        <b><a http://www.dnaindia.com/mumbai/report-city-s-biggest-auto-show-to-feature-top-brands-2216985>DNA AUTO EXPO</a>
                                        </b>
                                        <p>DNA's auto show this year,is going to be an automobile extravaganza, with top global brands such as Mercedes, Mini Cooper, Audi, BMW, Maruti, Honda, Volkswagen, Hyundai and Toyota registering their presence.
                                        </p>
                                    </div>
                                    <div class='timeline-footer'>
                                        <a href="events.jsp" class="btn btn-primary btn-xs">Add events you host</a>
                                        <a href="events.jsp" class="btn btn-danger btn-xs">Add events near you</a>
                                    </div>
                              </div>
                            </li>

                            <li>
                                <i class="fa fa-user bg-aqua"></i>
                                <div class="timeline-item">
                                    <span class="time">New Service</span>
                                    <h3 class="timeline-header no-border"><a href=" http://economictimes.indiatimes.com/topic/Auto-Expo/news"> AUTO EXPO NEWS AND UPDATES</a></h3>
                               <h3 class="timeline-header no-border"><a href=" http://www.carandbike.com/auto-expo/news"> FEATURED NEWS ON AUTO EXPO</a></h3>
                               <% 
                                   String sql="select elink from event where stat=0";
                                   Resultset o= obj.getData(sql);
                                   if (o.next)
                                   {
                               
                                   %>
                                   <p value="<%=o.getString(1)%>">
                                       
                                   </p>  </br>     
                                </div>
                            </li>
                            <li class="time-label">

                                <span class="bg-blue">Call US : +04-000-000-00
                                </span>
                            </li>

                            <li>
                                <i class="fa fa-clock-o"></i>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>

        </div>
    </section>
    <!-- END SERVICES SECTION-->
    <!-- ABOUT SECTION-->
    <section id="section-about" class="section">
        <div class="container" data-scrollreveal='after 0.30s'>
            <div class="row">
                <div class="col-md-offset-2 col-md-8">
                    <div>
                        <h2 class="heading">About Us</h2>
                        <p class="heading-text">
                            This is a website designed for the showcase of your favorite cars. You can see, search and buy cars of your choice.
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <section  class="section bgcolor-whitesmoke">
        <div class="container" data-scrollreveal='wait 0.10s'>
            <div class="row ">
                <div class="col-md-4">
                    <div class="team-member text-center">
                        <figure class="member-photo">
                            <img src="assets/img/about/us.jpg" alt="" /></figure>
                        <div class="team-detail">
                           
                            <span class="text-bold">Krishnapriya S,</span>
                             <span class="text-bold">Lekshmi Sasidharan,</span>
                             <span class="text-bold">Krishnapriya S</span>
                            <p>
                                Young collegiates dedicated to solve your problems and make your life easier.
                            </p>
                        </div>
                    </div>
                    <!--<div class="team-member text-center">
                        <figure class="member-photo">
                            <img src="assets/img/team/team2.jpg" alt="" /></figure>
                        <div class="team-detail">
                            <h4>Lekshmi Sasidharan</h4>
                            <span class="text-bold">venenatis blandit</span>
                            <p>
                                Sed accumsan venenatis blandit. Duis auctor hendrerit metus Sed accumsan venenatis blandit. Duis auctor hendrerit metus 
                            </p>
                        </div>
                    </div>-->
                </div>

                <div class="col-md-offset-1 col-md-6">
                    <div data-scrollreveal="enter right">
                        <ul class="timeline">
                            <li class="time-label">
                                <span class="bg-orange">Some Of Our Achivements
                                </span>
                                <br />
                                <br />
                            </li>

                            <li class="time-label">
                                <span class="bg-light-blue"> Year 2016
                                </span>
                            </li>

                            <li>
                                <i class="fa fa-trophy bg-blue"></i>
                                <div class="timeline-item">
                                    <span class="time"><i class="fa fa-clock-o"></i>20 Feburary</span>
                                    <h3 style="color:blue;" class="timeline-header"><b>WE HAVE......</b></h3>
                                    <div class="timeline-body">
                                        <p>More than 600 happy customers...</p>
                                        <p>We won the "BEST USER FRIENDLY WEBSITE-2016" award.....</p>
                                        <p>"BEST SELLING PLATFORM-2016" award for selling the maximum number of cars....</p>
                                    </div>
                                    <div class='timeline-footer'>
                                        
                                    </div>
                                </div>
                            </li>

                            <li class="time-label">
                                <span class="bg-green"> Year 2015
                                </span>
                               <!-- <i class="fa fa-launch bg-aqua"></i>-->
                                <div class="timeline-item">
                                    <span class="time"><i class="fa fa-clock-o"></i>02 January</span>
                                    <h3 class="timeline-header no-border"><a href="#"></a>  Launched our website.</h3>
                                </div>
                            </li>

                            <!--<li class="time-label">
                                <span class="bg-green"> Year 2013
                                </span>
                            </li>-->

                            <li>
                               <!-- <i class="fa fa-camera bg-purple"></i>
                                <div class="timeline-item">
                                    <span class="time"><i class="fa fa-clock-o"></i>20 December</span>
                                    <h3 class="timeline-header"><a href="#">Blandit</a> New Photo Show</h3>
                                    <div class="timeline-body">
                                        <img src="assets/img/about/imgTime.jpg" alt="" class='margin' />
                                        <img src="assets/img/about/imgTime.jpg" alt="" class='margin' />
                                    </div>
                                </div>-->
                            </li>

                            <li>
                               <!-- <i class="fa fa-video-camera bg-maroon"></i>
                                <div class="timeline-item">
                                    <span class="time"><i class="fa fa-clock-o"></i>15 June</span>
                                    <h3 class="timeline-header"><a href="#">Venenatis blandit</a> New Event</h3>
                                    <div class="timeline-body">
                                        <iframe width="300" height="169" src="//www.youtube.com/embed/Ycv5fNd4AeM"></iframe>
                                    </div>
                                </div>-->
                            </li>

                            <li>
                                <i class="fa fa-clock-o"></i>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>

        </div>
    </section>
     <!-- END ABOUT SECTION-->
    <!-- CONTACT SECTION-->
    <section id="section-contact" class="section">
        <div class="container" data-scrollreveal="enter left and move 40px over 0.8s">
            <div class="row">
                <div class="col-md-offset-2 col-md-8">
                    <div>
                        <h2 class="heading">Contact us</h2>
                        <p class="heading-text">
                            Feel free to contact us if you have any complaints or feedbacks.
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row" data-scrollreveal="enter right and move 40px, over 0.8s">
                <div class="col-md-8">
                    <div  id="contact-form" >

                       <form action="contact_action.jsp" name="frm" method="post">
                            <div class="col-md-6 form-group">
                                <label for="name">Your Name</label>
                                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name"  />
                                
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="email">Your Email</label>
                                <input type="email" class="form-control" name="email" id="emailid" name="mail" placeholder="Your Email"  />
                               
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="subject">Subject</label>
                                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject"  />
                               
                            </div>
                            <div class="col-md-12 form-group">
                                <label >Message</label>
                                <textarea class="form-control" name="message" rows="5" ></textarea>
                               
                            </div>

                            <button type="submit"  style="height: 40px; margin-bottom: 50px;" class="col-md-offset-4 col-md-4 btn btn-primary" onclick="return validate(frm)">SEND MESSAGE</button>
                        
                       </form>
                    </div>
                </div>
                
                
                <div class="col-md-4">
                    <div data-scrollreveal='over 0.8s'>
                        <div class="align-center" style="margin-top: 100px;">

                            <i class="fa fa-map-marker fa-5x"></i>
                            <h4 class="text-bold" style="font-size: 30px;">Our Location</h4>
                            <p>
                                Office no:A-8752, Kadavanthra Street, Kochi
                            </p>
                            <p>
                                Call: +044-678-098
                            </p>
                            <p>
                                Mail: info@buymecar.com
                            </p>
                        </div>
                    </div>
                </div>
                <!-- ./span12 -->
            </div>

        </div>
    </section>
        <script type="text/javascript">
function validate(frm)
{
		if(frm.name.value=="")
		{
			alert("enter first name");
			return false;
		}
		 if(frm.email.value=="")
			{
			alert("enter mail id");
			return false;
			}
		 if(frm.message.value=="")
			{
			alert("enter message");
			return false;
			
			}
		

var emid = document.getElementById("emailid").value;
var atpos = emid.indexOf("@");
            var dotpos = emid.lastIndexOf(".");
 if (atpos < 1 || dotpos < (atpos + 2) || dotpos + 2 >= emid.length) {
                alert("Not a valid e-mail address");
            }
}

</script>
       
   
   
   
   
   
    <!-- END CONTACT SECTION-->
    <!--END PAGE CONTENT-->
    <!-- FOOTER SECTION-->
    <section id="footer" class="section footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <ul class="social-network social-circle">
                        <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
                        <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                </div>
                <div class="col-sm-6 align-center">
                    <div class="col-sm-12">
                        <p>Copyright &copy; buymecar.com</p>
                        <p>2016 All Rights Reserved</p>
                    </div>
                </div>
            </div>


        </div>

    </section>
     <!-- END FOOTER SECTION-->
     <!-- SCROLLUP LINK SECTION-->
    <a href="#Homepage" class="scrollup"><i class="fa fa-chevron-up"></i></a>
     <!--END SCROLLUP LINK SECTION-->
    <!-- STYLE SWITCHER SECTION-->
    <div  class="panel" style="color:white">
        <div id="styledemo"  style="left: 0px;">
		<span id="theme_blue" style="background-color:#37AFFF" ></span>
		<span id="theme_green" style="background-color:#469E66" ></span>
		<span id="theme_brown" style="background-color:#E69351" ></span>
		<span id="theme_red" style="background-color:#E7484E" ></span>
            </div>
</div>
<a class="trigger" href="#"></a>
    <!-- END STYLE SWITCHER SECTION-->
    <!-- MAIN SCRIPTS SECTION-->
    <script src="assets/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/scrollReveal.js"></script>
    <script>
        window.scrollReveal = new scrollReveal(); //please put this script here to show animation at the time of scroll
    </script>
    <script src="assets/js/jquery.easing.1.3.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/isotope/jquery.isotope.min.js"></script>
    <script src="assets/plugins/fancybox/jquery.fancybox.pack.js"></script>
    <script src="assets/js/jquery.localscroll-1.2.7-min.js"></script>
    <script src="assets/js/jquery.appear.js"></script>
    <script src="assets/scripts/main.js"></script>
   
     <!--END MAIN SCRIPTS SECTION-->
</body>

    <!--END  BODY SECTION-->
</html>

