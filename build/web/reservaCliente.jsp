<%-- 
    Document   : reservaCliente
    Created on : 09-06-2018, 12:32:50
    Author     : Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reserva</title>
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Resort Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />

        <link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
        <!--/web-fonts-->
        <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
    </head>
    <%
            String nombreUsuario = (String)session.getAttribute("nombreUsuario");
            if(nombreUsuario==null)
            {
               response.sendRedirect("login.jsp");
            }else{
               
            }
    %>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/messages_es.js"></script>
        <script src="js/reserva/reserva.js"></script>
        <script>
        $(function(){
            $("#fechainicio").datepicker({
                dateFormat:'dd/mm/yy'
            });
            $("#fechatermino").datepicker({
                dateFormat:'dd/mm/yy'
            });
        });
        </script>
    <body>
        
        <!--/main-header-->
  <div class="w3layouts-top-strip">
			<div class="top-srip-agileinfo">
				<div class="w3ls-social-icons text-left">
					<a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
					<a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
					<a class="pinterest" href="#"><i class="fa fa-pinterest-p"></i></a>
					<a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
					
				</div>
				<div class="agileits-contact-info text-right">
					<ul>
						<li> <a href="login.jsp"> Ingresar</a>  </li>
						<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:info@example.com">hola@veranum.cl</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
  <!--/banner-section-->
	<div id="demo-1" class="banner-inner">
		<!--/header-w3l-->
			   <div class="header-w3-agileits" id="home">
			     <div class="inner-header-agile">	
								<nav class="navbar navbar-default">
									<div class="navbar-header">
										<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
											<span class="sr-only">Toggle navigation</span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
										</button>
										<h1><a  href="index.html"><span>R</span>esort <p class="s-log">Booking</p></a>
										 
										</h1>
									</div>
									<!-- navbar-header -->
									<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
										
				 <ul class="nav navbar-nav">
											<li><a href="index.html">Home</a></li>
												<li><a href="about.html">Nosotros</a></li>
												<li><a href="gallery.html">Galeria</a></li>
												<li class="active"><a href="reservaCliente.jsp">Reservar</a></li>

												<li><a href="contact.html">Contacto</a></li>

											
										</ul>


									</div>
									<div class="clearfix"> </div>	
								</nav>
									<div class="w3ls_search">
													<div class="cd-main-header">
														<ul class="cd-header-buttons">
															<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
														</ul> <!-- cd-header-buttons -->
													</div>
													<div id="cd-search" class="cd-search">
														<form action="#" method="post">
															<input name="Search" type="search" placeholder="Search...">
														</form>
													</div>
												</div>
					
							</div> 

			
		<!--//header-w3l-->
		</div>
		 </div>
  <!--/banner-section-->
 <!--//main-header-->
	        
						<!-- breadcrumb -->
	<div class="w3_breadcrumb">
	<div class="breadcrumb-inner">	
			<ul>
				<li><a href="index.html">Home</a> <i>/</i></li>
				
				<li>Reservar</li>
			</ul>
		</div>
	</div>
<!-- //breadcrumb -->
			<!--/content-inner-section-->
				  <div class="w3_content_agilleinfo_inner">
					   
                                      
                                      <!-- aqui empieza -->
                                      
                                      
                                      <div class="about-bottom" id="ab">
                <div class="col-md-6 w3l_about_bottom_right two">
			<h3 class="tittle why">Reservar</h3>
			<div class="book-form">

			   <form action="#" method="post">


					 <div class="col-md-6 form-date-w3-agileits">
									<label><i class="fa fa-calendar" aria-hidden="true"></i> Fecha Inicio :</label>
									<input  id="datepicker" name="fechainicio"type="text" value="dd/mm/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'dd/mm/yyyy';}" required="">
								
								</div>

					<div class="col-md-6 form-date-w3-agileits">
						        <label><i class="fa fa-calendar" aria-hidden="true"></i> Fecha Termino :</label>
									<input  id="datepicker1" name="fechatermino" type="text" value="dd/mm/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'dd/mm/yyyy';}" required="">
									
                                        </div>
					<div class="col-md-6 form-left-agileits-w3layouts bottom-w3ls">
							<label><i class="fa fa-home" aria-hidden="true"></i> Tipo Cama :</label>
							<select name="tipocama" class="form-control">
								<option></option>
								<option value="1">1 Cama Doble</option>
                                                                <option value="2">2 Cama Doble</option>
                                                                <option value="3">1 Cama Simple</option>
                                                                <option value="4">2 Cama Simple</option>
							</select>
					</div>
					<div class="col-md-6 form-left-agileits-w3layouts second-agile">
							<label><i class="fa fa-users" aria-hidden="true"></i> Numero de Personas :</label>
							<select name="cantidadpersona" class="form-control">
								<option></option>
								<option value="1">1</option>
                                                                <option value="2">2</option>
                                                                <option value="3">3</option>
                                                                <option value="4">4</option>
							</select>
					</div>
                                        <div class="col-md-6 form-left-agileits-w3layouts second-agile">
							<label><i class="fa fa-users" aria-hidden="true"></i> Servicios extras:</label>
							<input type="checkbox" value="1" id="servicioextra">
					</div>
                               
            
                               
					<div class="clearfix"> </div>
					<div class="make wow shake" data-wow-duration="1s" data-wow-delay=".5s">
						  <input type="submit" value="Reservar">
					</div>
                                        
                                        <div id="loading" style="display: none"> Cargando...</div>
                                        <input type="hidden" value="<%=nombreUsuario%>" name="nombreUsuario" id=nombreUsuario"/>
                                        
                            </form>
                        </div>

		</div>
		<div class="col-md-6 w3l_about_bottom_left">
			
                        <img src="images/33.jpg" alt="" class="img-responsive" />
			<div class="w3l_about_bottom_left_video book-text">
				<h4>Reserva Ahora!</h4>
			</div>
		</div>
		
		<div class="clearfix"> </div>
	</div> 
                                      
                                      
				  </div>
		
 <!-- Footer -->
	<div class="w3l-footer">
		<div class="container">
         <div class="footer-info-agile">
				<div class="col-md-2 footer-info-grid links">
					<h4>Quick links</h4>
					<ul>
						       <li><a href="index.html">Home</a></li> 
								<li><a href="about.html">About</a></li> 
								<li><a href="codes.html">Services</a></li> 
								<li><a href="gallery.html">Gallery</a></li> 
								<li><a href="contact.html">Contact</a></li> 
					</ul>
				</div>
				<div class="col-md-3 footer-info-grid address">
					<h4>Address</h4>
					<address>
						<ul>
							<li>Mexico United States 3000</li>
							<li>40019 Honey Street</li>
							<li>BO,Mexico</li>
							<li>Telephone : +1 (734) 123-4567</li>
							<li>Email : <a class="mail" href="mailto:mail@example.com">info(at)example.com</a></li>
						</ul>
					</address>
				</div>
				<div class="col-md-3 footer-grid">
				   <h4>Instagram</h4>
					<div class="footer-grid-instagram">
					<a href="#"><img src="images/f1.jpg" alt=" " class="img-responsive"></a>
					</div>
					<div class="footer-grid-instagram">
					<a href="#"><img src="images/f2.jpg" alt=" " class="img-responsive"></a>
					</div>
					<div class="footer-grid-instagram">
						<a href="#"><img src="images/f3.jpg" alt=" " class="img-responsive"></a>
					</div>
					<div class="footer-grid-instagram">
					<a href="#"><img src="images/f4.jpg" alt=" " class="img-responsive"></a>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 footer-info-grid">
				<div class="connect-social">
					<h4>Connect with us</h4>
					<section class="social">
                        <ul>
							<li><a class="icon fb" href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a class="icon tw" href="#"><i class="fa fa-twitter"></i></a></li>
							
							
							<li><a class="icon pin" href="#"><i class="fa fa-pinterest"></i></a></li>
							<li><a class="icon db" href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a class="icon gp" href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</section>

				</div>
					

					
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="connect-agileits newsletter">
				<h4>Newsletter</h4>
					<p>Subscribe to our newsletter and we will inform you about newest projects and promotions.
					</p>
					<form action="#" method="post" class="newsletter">
						<input class="email" type="email" placeholder="Your email address..." required="">
						<input type="submit" class="submit" value="Subscribe">
					</form>
			</div>
	   </div>
     </div>

		
			<div class="w3agile_footer_copy">
				    <p>© 2017 Resort. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
			</div>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- Dropdown-Menu-JavaScript -->
			<script>
				$(document).ready(function(){
					$(".dropdown").hover(            
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideDown("fast");
							$(this).toggleClass('open');        
						},
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
							$(this).toggleClass('open');       
						}
					);
				});
			</script>
		<!-- //Dropdown-Menu-JavaScript -->


<script type="text/javascript" src="js/jquery.zoomslider.min.js"></script>
		<!-- search-jQuery -->
				<script src="js/main.js"></script>

<!--/script-->
	<script src="js/simplePlayer.js"></script>
			<script>
				$("document").ready(function() {
					$("#video").simplePlayer();
				});
			</script>
			<!-- flexSlider -->
					<script defer src="js/jquery.flexslider.js"></script>
					<script type="text/javascript">
					$(window).load(function(){
					  $('.flexslider').flexslider({
						animation: "slide",
						start: function(slider){
						  $('body').removeClass('loading');
						}
					  });
					});
				  </script>

<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
 <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
<!--end-smooth-scrolling-->
<!--js for bootstrap working-->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
        
        
        
        <h1>Reservar Habitación</h1>
        <form method="#">
            
            Fecha Inicio: <input name="fechainicio" id="fechainicio"/> <br/>
            Fecha Termino: <input name="fechatermino" id="fechatermino"/> <br/>
            Personas: <select name="cantidadpersona" id="cantidadpersona">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
            Tipo cama: <select name="tipocama" id="tipocama">
                <option value="1">1 Cama Doble</option>
                <option value="2">2 Cama Doble</option>
                <option value="3">1 Cama Simple</option>
                <option value="4">2 Cama Simple</option>
            </select>
            
            Servicios extras:
            <input type="checkbox" value="1" id="servicioextra">

            <input type="button" id="consultar" name="consultar" value="consultar"/>
            <div id="loading" style="display: none"> Cargando...</div>
            <input type="hidden" value="<%=nombreUsuario%>" name="nombreUsuario" id=nombreUsuario"/>
        </form>
        
        <br/><br/>
        <table id="somediv" >
            
        </table>
    </body>
</html>
