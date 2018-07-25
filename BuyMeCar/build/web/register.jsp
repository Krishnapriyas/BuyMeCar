<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <section>
        <div class="container">
            <div class="row" data-scrollreveal="enter right and move 40px, over 0.8s">
                <div class="col-md-8">
                    <div  id="contact-form" >

                       <form action="register_action.jsp" method="post">
                            <div class="col-md-6 form-group">
                                <label for="name">Your Name</label>
                                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name"  />
                                
                            </div>
                            <div class="col-md-6 form-group">
                               <label for="subject">Enter phone number</label>
                                <input type="text" class="form-control" name="subject" id="subject" placeholder="Phone number"  />
                               
                            </div>
                            <div class="col-md-12 form-group">
                                 <label for="email">Your Email</label>
                                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email"  />
                                
                               
                            </div>
                            <!--<div class="col-md-12 form-group">
                                <label >Enter :</label>
                                <textarea class="form-control" name="message" rows="5" ></textarea>
                               
                            </div> -->

                            <button type="submit" style="height: 40px; margin-bottom: 50px;" class="col-md-offset-4 col-md-4 btn btn-primary">SEND MESSAGE</button>
                        
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
    <!-- END CONTACT SECTION-->
     <%@ include file="tailadmin.jsp" %>
    </body>
</html>
