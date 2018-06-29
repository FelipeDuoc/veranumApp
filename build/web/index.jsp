<%-- 
    Document   : index
    Created on : 07-06-2018, 23:21:46
    Author     : Felipe
--%>
<%@page import="java.util.List"%>
<%@page import="modelo.bean.TipoHabitacion"%>
<%@page import="modelo.DAO.TipoHabitacionDAO"%>
<%@page import="modelo.DAO.TipoHabitacionDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido a Veranum Hoteles</title>
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
    <%String nombreUsuario = (String)session.getAttribute("nombreUsuario");
    String idPersona = (String)session.getAttribute("idPersona");%>
    <body>
        
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
                                            
                                            
                                            <%if(nombreUsuario==null){ %>
                                             <li> <a href="login.jsp"> INCIA SESION</a> </li>
                                             <li> <a href="registroCliente.jsp">| REGISTRATE !</a></li>
                                             <%
                                            }else{
                                            %>
                                             <li>| Usuario: <%=nombreUsuario%> |</li>
                                             <li> <a href="cierreSesion.jsp">Cerrar Sesión</a> </li>
                                             <%
                                            }
                                            
                                            %>
              
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	<div id="demo-1" data-zs-src='["images/4.jpg", "images/2.jpg", "images/1.jpg","images/3.jpg"]' data-zs-overlay="dots">
		<div class="demo-inner-content">
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
											<li class="active"><a href="index.jsp">Home</a></li>
												<li><a href="about.html">Nosotros</a></li>
												<li><a href="gallery.html">Galeria</a></li>
												<li><a href="reservaCliente.jsp">Reservar</a></li>
												<li><a href="contact.html">Contacto</a></li>
                                                                                                   <%
                                                                                                
                                                                                                if(nombreUsuario!=null)
                                                                                                {
                                                                                                        %>
                                                                                                <li class="active"><a href="misReservas.jsp">Mis Reservas</a></li>        
                                                                                                        <%
                                                                                                }
                                                                                                    %>                   
											
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
			<!--/banner-info-->
			   <div class="baner-info">   
			      <h3>Bien<span>Venido </span>a   <span>Veranum </span> Hoteles</h3>
				  <h4>Reserva las habitaciones de tus sueños</h4>
				  <p>Disfruta tu estadía</p>
			   </div>
			<!--/banner-ingo-->
			
		</div>
		   </div>
    </div>
  <!--/banner-section-->
 <!--//main-header-->
 	<div class="special featured">
		  <div class="container">
				   <div class="ab-w3l-spa">
				        <h3 class="tittle">Bienvenido a nuestros hoteles!!</h3>
						<p> Hoteles Veranum es una empresa que posee experiencia en administración hotelera, puesto
                                                    que fue fundada hace 30 años, en estos años se ha destacado por ser una empresa cercana a 
                                                    sus clientes y mantener un contacto fluido con ellos. Te invitamos a conocer 
                                                    nuestras habitaciones y servicios</p>
				   </div>
				<!-- services -->
							<div class="w3_agileits_services_grids">
								<div class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
									<div class="w3_agileits_services_grid_agile">
										<div class="w3_agileits_services_grid_1">
											<img src="images/5.jpg" alt="service-img">
										</div>
										<h3>Deluxe Room</h3>
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
									</div>
								</div>
								<div class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
									<div class="w3_agileits_services_grid_agile">
										<div class="w3_agileits_services_grid_1">
											<img src="images/6.jpg" alt="service-img">
										</div>
										<h3>Luxury Room</h3>
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
									</div>
								</div>
								<div class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
									<div class="w3_agileits_services_grid_agile">
										<div class="w3_agileits_services_grid_1">
											<img src="images/7.jpg" alt="service-img">
										</div>
										<h3>Swimming Pool</h3>
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
									</div>
								</div>
								<div class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
									<div class="w3_agileits_services_grid_agile">
										<div class="w3_agileits_services_grid_1">
											<img src="images/8.jpg" alt="service-img">
										</div>
										<h3>Spaa Care</h3>
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
                                    <!--             //services -->
				  


		</div>
        </div>
	<div class="featured-facility">
	  <!-- welcome -->
		
			<div class="spa-agile">
			<h3 class="tittle fea">Servicios extras</h3>
				<div class="col-md-3 spa-grid">
					
						<i class="fa fa-cutlery" aria-hidden="true"></i>
					
						<h4>Restaurant </h4>
					
				</div>
				<div class="col-md-3 spa-grid">
					
					<i class="fa fa-glass" aria-hidden="true"></i>
					
					
						<h4>Bar</h4>
						
				
				</div>
				<div class="col-md-3 spa-grid lost">
					
						<i class="fa fa-wheelchair-alt" aria-hidden="true"></i>
					
						<h4>Gym</h4>
						
					
				</div>
                                <div class="col-md-3 spa-grid lost">
					
						<i class="fa fa-wheelchair-alt" aria-hidden="true"></i>
					
						<h4>Piscina</h4>
						
					
				</div>
				<div class="clearfix"> </div>
			</div>
		
	<!-- //welcome -->
	</div>
	<!-- about-bottom -->
	<div class="about-bottom">
		<div class="col-md-6 w3l_about_bottom_left">
				  <div class="video-grid-single-page-agileits">
														<div data-video="44fbHx7P-t8" id="video"> <img src="images/watch.jpg" alt="" class="img-responsive" /> </div>
													</div>

			<div class="w3l_about_bottom_left_video">
				<h4>watch our video</h4>
			</div>
		</div>
		<div class="col-md-6 w3l_about_bottom_right one">
			<h3 class="tittle why">¿Por qué elegir a Veranum?</h3>
			<p>Veranum cuenta con mas de 30 años en el mercado hotelero, nuestra experiencia y nuestros clientes nos avalan</p>
			<div class="panel-group w3l_panel_group_faq" id="accordion" role="tablist" aria-multiselectable="true">
			  <div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingOne">
				  <h4 class="panel-title asd">
					<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Restaurant
					</a>
				  </h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
				  <div class="panel-body panel_text">
					Contamos con un restaurant del mas fino nivel, con diferentes menús y una gran variedad de sabores para ofrecer a nuestros clientes
				  </div>
				</div>
			  </div>
			  <div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo">
				  <h4 class="panel-title asd">
					<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
					  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i> Transporte
					</a>
				  </h4>
				</div>
				<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
				   <div class="panel-body panel_text">
					Ofrecemos Transporte desde aeropuerto hasta nuestras instalaciones o viceversa. Todo para satisfacer tus necesidades.
				  </div>
				</div>
			  </div>
			  <div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree">
				  <h4 class="panel-title asd">
					<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
					  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i> Piscina de Lujo
					</a>
				  </h4>
				</div>
				<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
				   <div class="panel-body panel_text">
					Contamos con una variedad de piscinas temperadas o tradicionales, las cuales pueden ser utilizadas previa reserva.
				  </div>
				</div>
				
			  </div>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
<!-- //about-bottom -->
	<!-- about-bottom -->
	<!--<div class="about-bottom" id="ab">
	<div class="col-md-6 w3l_about_bottom_right two">
			<h3 class="tittle why">Book a Reservation</h3>
			<div class="book-form">

			   <form action="#" method="post">
					<div class="col-md-6 form-date-w3-agileits">
						<label><i class="fa fa-user" aria-hidden="true"></i> Name :</label>
						<input type="text" name="name" placeholder="Your name" required="">
					</div>
					<div class="col-md-6 form-date-w3-agileits second-agile">
						<label><i class="fa fa-envelope" aria-hidden="true"></i> Email :</label>
						<input type="email" name="email" placeholder="Your email" required="">
					</div>
					 <div class="col-md-6 form-date-w3-agileits">
									<label><i class="fa fa-calendar" aria-hidden="true"></i> Arrival Date :</label>
									<input  id="datepicker" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">
								
								</div>
					<div class="col-md-6 form-time-w3layouts second-agile">
							<label><i class="fa fa-clock-o" aria-hidden="true"></i> Time :</label>
							<input type="time">
					</div>
					<div class="col-md-6 form-date-w3-agileits">
						        <label><i class="fa fa-calendar" aria-hidden="true"></i> Departure Date :</label>
									<input  id="datepicker1" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">
									
								</div>
					<div class="col-md-6 form-time-w3layouts second-agile">
							<label><i class="fa fa-clock-o" aria-hidden="true"></i> Time :</label>
							<input type="time">
					</div>
					<div class="col-md-6 form-left-agileits-w3layouts bottom-w3ls">
							<label><i class="fa fa-home" aria-hidden="true"></i> Choose a Room :</label>
							<select class="form-control">
								<option></option>
								<option>Standard Double Room</option>
								<option>Standard Family Room</option>
								<option>Garden Family Room</option>
								<option>Deluxe Double Room</option>
								<option>Executive Junior Suite</option>
								<option>Maisonette</option>
							</select>
					</div>
					<div class="col-md-6 form-left-agileits-w3layouts second-agile">
							<label><i class="fa fa-users" aria-hidden="true"></i> No.of People :</label>
							<select class="form-control">
								<option></option>
								<option>1 Person</option>
								<option>2 People</option>
								<option>3 People</option>
								<option>4 People</option>
								<option>5 People</option>
								<option>More</option>
							</select>
					</div>
					<div class="clearfix"> </div>
					<div class="make wow shake" data-wow-duration="1s" data-wow-delay=".5s">
						  <input type="submit" value="Make a Reservation">
					</div>
			</form>
								</div>

		</div>
		<div class="col-md-6 w3l_about_bottom_left">
			
<img src="images/33.jpg" alt="" class="img-responsive" />
			<div class="w3l_about_bottom_left_video book-text">
				<h4>BooK Now</h4>
			</div>
		</div>
		
		<div class="clearfix"> </div>
	</div> -->
<!-- //about -->
	<!-- /plans -->
      <div class="plans-section">
				 <div class="container">
				 <h3 class="w3l-inner-h-title">Ofertas</h3>
                                <div class="priceing-table-main">
                                    <%   
                                        TipoHabitacionDAO tip = new TipoHabitacionDAOImpl();
                                        List<TipoHabitacion> list = tip.verTipoHabitacionOferta();
                    
                                        for (int i = 0; i < list.size(); i++) {
                                            TipoHabitacion t = list.get(i);
                                                
                                    %>
                                    
				 <div class="col-md-3 price-grid">
					<div class="price-block agile">
						<div class="price-gd-top pric-clr1">
							<h4><%=t.getNombre_tipo_habitacion()%></h4>
                                                        <h4><%="Antes: $"+t.getValor_diario_habitacion()%></h4>
							<h4><%="Ahora: $"+t.getValor_diario_hab_oferta()%></h4>
							<h5><%=t.getPorcentaje_descuento()+"% Descuento"%></h5>
						</div>
						<div class="price-gd-bottom">
							   <div class="price-list">
								
								<!--<ul>
                                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                                    <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                                                    <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                                                    <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                                                    <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                                                </ul>-->
                                                               
                                                                <h6 class="">Tipo Cama: <%=t.getNombre_tipo_cama()%>  </h6>
                                                                <h6 class="">"Tipo Baño: <%=t.getNombre_tipo_banio()%>  </h6>
                                                                
                                                                <h6 class="bed"><i class="fa fa-bed" aria-hidden="true"></i></h6>
                                                            </div>
							<div class="price-selet pric-sclr1">		    			   
                                                            <a href="http://localhost:8080/VeranumApp/reservarOferta.jsp?id=<%=t.getId_tipo_habitacion() %>">Reserva Ahora!</a>
							</div>
						</div>
					</div>
				</div>
                                    <%   
                                        }
                   
                                    %>
                                    

				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- testimonials -->
	<div class="guests-agile">
			<h3 class="tittle">Nuestros Clientes</h3>
			<div class="w3_agileits_testimonial_grids">
				<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="w3_agileits_testimonial_grid">
								<i class="fa fa-quote-right" aria-hidden="true"></i>
									<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum 
										dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
										proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
									<img src="images/admin.jpg" alt=" " class="img-responsive" />
									
								</div>
							</li>
							<li>
								<div class="w3_agileits_testimonial_grid">
								<i class="fa fa-quote-right" aria-hidden="true"></i>
									<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum 
										dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
										proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
									<img src="images/admin2.jpg" alt=" " class="img-responsive" />
									
								</div>
							</li>
							<li>
								<div class="w3_agileits_testimonial_grid">
								<i class="fa fa-quote-right" aria-hidden="true"></i>
									<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum 
										dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
										proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
									<img src="images/admin.jpg" alt=" " class="img-responsive" />
									
								</div>
							</li>
						</ul>
					</div>
				</section>
				
				<!-- //flexSlider -->
			</div>
	</div>
<!-- //testimonials -->

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
					<p>Subscribete a nuestro newsletter para mantenerte informado sobre las ultimas noticias y promociones de Veranum
					</p>
					<form action="#" method="post" class="newsletter">
						<input class="email" type="email" placeholder="Your email address..." required="">
						<input type="submit" class="submit" value="Subscribe">
					</form>
			</div>
	   </div>
     </div>

		
			<div class="w3agile_footer_copy">
				    <p>© 2018 Veranum. Todos los derechos reservados</p>
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
<!--//script for portfolio-->
				<!-- Calendar -->
				<link rel="stylesheet" href="css/jquery-ui.css" />
				<script src="js/jquery-ui.js"></script>
				  <script>
						  $(function() {
							$( "#datepicker,#datepicker1,#datepicker2,#datepicker3" ).datepicker();
						  });
				  </script>
			<!-- //Calendar -->
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
    </body>
</html>
