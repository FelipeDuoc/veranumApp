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
    %>
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
                                             <li> <a href="login.jsp"> INICIA SESION</a> </li>
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
												<li><a href="#">Nosotros</a></li>
												<li><a href="#">Galeria</a></li>
												<li><a href="reservaCliente.jsp">Reservar</a></li>
												<li><a href="#">Contacto</a></li>
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
										<h3>Habitaciones Vip</h3>
										<p>Habitaciones exclusivas y equipadas con la mejor tecnología y comodidad.</p>
									</div>
								</div>
								<div class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
									<div class="w3_agileits_services_grid_agile">
										<div class="w3_agileits_services_grid_1">
											<img src="images/6.jpg" alt="service-img">
										</div>
										<h3>Habitaciones Premium</h3>
										<p>Habitaciones con servicio personalizado y servicio 24 hrs.</p>
									</div>
								</div>
								<div class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
									<div class="w3_agileits_services_grid_agile">
										<div class="w3_agileits_services_grid_1">
											<img src="images/7.jpg" alt="service-img">
										</div>
										<h3>Piscina Temperada</h3>
										<p>Extravagante piscina temperada regulada automaticamente con Energía Solar.</p>
									</div>
								</div>
								<div class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
									<div class="w3_agileits_services_grid_agile">
										<div class="w3_agileits_services_grid_1">
											<img src="images/8.jpg" alt="service-img">
										</div>
										<h3>Spaa</h3>
										<p>Servicio de Spa  para garantizar una experiencia de relajación única.</p>
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
		
		<div class="col-md-12 w3l_about_bottom_right one">
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
							
                                                                <h6 class="">Tipo Cama: <%=t.getNombre_tipo_cama()%>  </h6>
                                                                <h6 class="">"Tipo Baño: <%=t.getNombre_tipo_banio()%>  </h6>
                                                                
                                                                <h6 class="bed"><i class="fa fa-bed" aria-hidden="true"></i></h6>
                                                            </div>
							<div class="price-selet pric-sclr1">		    			   
                                                            <a href="http://localhost:8080/VeranumApp/reservaCliente.jsp">Reserva Ahora!</a>
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
									<p>Las habitaciones son espectaculares, la atención es excelente y sobre todo
                                                                        los servicios que ofrecen. Son muy acogedores y muy exclusivos, jamás vi
                                                                        un hotel de estas caracteristicas.</p>
									<img src="images/admin.jpg" alt=" " class="img-responsive" />
									
								</div>
							</li>
							<li>
								<div class="w3_agileits_testimonial_grid">
								<i class="fa fa-quote-right" aria-hidden="true"></i>
									<p>Visite Hoteles Veranum por una semana y quede sorprendido, jamás pense
                                                                        que la cantidad de servicios que podían ofrecer fuese tan grande. Reserve una habitación
                                                                        desde la comodidad de mi hogar sin ningun problema.</p>
									<img src="images/admin2.jpg" alt=" " class="img-responsive" />
									
								</div>
							</li>
							<li>
								<div class="w3_agileits_testimonial_grid">
								<i class="fa fa-quote-right" aria-hidden="true"></i>
									<p>Sin lugar a dudas volveré a visitar este hotel. Me gustó mucho la idea, que 
                                                                        tengan convenios con otras empresas, las ofertas esten siempre y la conectividad
                                                                        que ofrecen es espectaular.</p>
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
				<div class="col-md-6 footer-info-grid">
				<div class="connect-social">
					<h4>Contacto</h4>
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
