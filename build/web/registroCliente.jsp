<%-- 
    Document   : registroCliente
    Created on : 09-06-2018, 11:47:59
    Author     : Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        
        
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
        <!--//web-fonts-->
    </head>
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
						<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:info@example.com">hola@veranum.cl/a></li>
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
											<li><a href="index.jsp">Home</a></li>
                                                                                        <li><a href="about.html">Nosotros</a></li>
											<li><a href="gallery.html">Galeria</a></li>
											<li><a href="reservaCliente.jsp">Reservar</a></li> 
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
				
				<li>Registro Cliente</li>
			</ul>
		</div>
	</div>
<!-- //breadcrumb -->
			<!--/content-inner-section-->
				  <div class="w3_content_agilleinfo_inner">
					    <div class="container">
							<div class="inner-agile-w3l-part-head">
					           <h2 class="w3l-inner-h-title">Registro de Cliente</h2>
								
							</div>
									<div class="w3_mail_grids">
										<form method="post" action="http://localhost:8080/VeranumApp/Controlador">
											<div class="col-md-5 col-md-offset-4 w3_agile_mail_grid">
													<input type="text" name="rut" placeholder="Rut"  required="">
                                                                                                        <input type="text" name="nombre" placeholder="Nombre"  required="">
                                                                                                        <input type="text" name="apellidopaterno" placeholder="Apellido Paterno"  required="">
                                                                                                        <input type="text" name="apellidomaterno" placeholder="Apellido Materno"  required="">
                                                                                                        <input type="text" name="direccion" placeholder="Direccion"  required="">
                                                                                                        <input type="text" name="nro" placeholder="Numero"  required="">
                                                                                                        <select name="empresa">
                                                                                                            <option value="0">Seleccione Empresa</option>
                                                                                                            <option value="1">Empresa 1</option>
                                                                                                            <option value="2">Empresa 2</option>
                                                                                                        </select>
                                                                                                        <select name="comuna">
                                                                                                            <option value="0">Seleccione Comuna</option>
                                                                                                            <option value="1">Comuna 1</option>
                                                                                                            <option value="2">Comuna 2</option>
                                                                                                        </select>
                                                                                                        <input type="text" name="provincia" placeholder="Provincia"  required="">
                                                                                                        <input type="text" name="region" placeholder="Region"  required="">
                                                                                                        <input type="text" name="telefono" placeholder="Telefono"  required="">                                                                                          
													<input type="email" name="correo" placeholder="Correo" required="">
                                                                                                        <input type="text" name="usuario" placeholder="Usuario"  required="">
                                                                                                        <input type="password" name="password" placeholder="Password"  required="">
                                                                                                        
                                                                                                        <input type="submit" value="Registrar">
                                                                                                        
                                                                                                        <input type="hidden" value="2" name="seleccion" />
												
											</div>
											
											<div class="clearfix"> </div>
										</form>
							</div>
					   </div>
							
				  </div>
		
 <!-- Footer -->
	<div class="w3l-footer">
		<div class="container">
         <div class="footer-info-agile">
				
				<div class="col-md-12 footer-info-grid">
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
        
        
        <h1>Registro de cliente</h1>
        <form method="post" action="http://localhost:8080/VeranumApp/Controlador">
            Rut: <input type="text" name="rut"/><br/>
            Nombre: <input type="text" name="nombre"/><br/>
            Apellido Paterno:  <input type="text" name="apellidopaterno"/><br/>
            Apellido Materno:  <input type="text" name="apellidomaterno"/><br/>
            Direccion: <input type="text" name="direccion" />
            Nro <input type="text" name="nro" />
            <br/>
            Empresa: <select name="empresa">
                            <option value="1">Empresa 1</option>
                            <option value="2">Empresa 2</option>
            </select> <br/>
            Comuna: <select name="comuna">
                            <option value="1">Comuna 1</option>
                            <option value="2">Comuna 2</option>
                    </select>
            Provincia: <input type="text" name="provincia" /><br/>
            Región: <input type="text" name="region" /><br/>
            Telefono: <input type="text" name="telefono" /><br/>
            Correo: <input type="text" name="correo" /><br/>
            
            Usuario: <input type="text" name="usuario" /><br/>
            Crear contraseña: <input type="password" name="password" /><br/>
            
            <input type="submit" value="Registrar"/>
            
            <input type="hidden" value="2" name="seleccion" />
            
        </form>
    </body>
</html>
