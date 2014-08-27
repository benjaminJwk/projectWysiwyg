<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html>
<!--<![endif]-->
<head>
<title>Wysiwyg | Welcome...</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/plugins/flexslider/flexslider.css">
<link rel="stylesheet"
	href="assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet"
	href="assets/plugins/layer-slider/layerslider/css/layerslider.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="assets/css/themes/default.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="assets/css/custom.css">

<script type="text/javascript" src="<%=request.getContextPath()%>/libs/jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	$(function(){

		if( "<%=session.getAttribute("id")%>" != "null")
   		{
   			$("#loginBtn").html("<a href='logout.do'>Logout</a></li>");
   		}
	})
</script>
</head>

<body>

	<div class="wrapper">
		<!--=== Header ===-->
		<div class="header">
			<!-- Topbar -->
			<div class="topbar">
				<div class="container">
					<!-- Topbar Navigation -->
					<ul class="loginbar pull-right">
						<li>
						<li class="topbar-devider"></li>
						<li><a href="myPage.do">mypage</a></li>
						</li>
						<li class="topbar-devider"></li>
						<li><a href="registration.do">Join</a></li>
						<li class="topbar-devider"></li>
						<li id="loginBtn"><a href="login.do">Login</a></li>
					</ul>
					<!-- End Topbar Navigation -->
				</div>
			</div>
			<!-- End Topbar -->

			<!-- Navbar -->
			<div class="navbar navbar-default" role="navigation">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-responsive-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="fa fa-bars"></span>
						</button>
						<a class="navbar-brand" href="index"> <br> <font
							size="7px" color="#74c52c">B</font><font size="5px">link</font>
						</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-responsive-collapse">
						<ul class="nav navbar-nav">
							<!-- Home -->
							<li class="dropdown"><a href="javascript:void(0);"
								class="dropdown-toggle" data-toggle="dropdown"> Blink 소개 </a>

								<ul class="dropdown-menu">
									<li><a href="aboutBlink.do">Blink?</a></li>
									<li><a target="_blank" href="One-Page/index.html">기획의도</a></li>
									<li><a href="aboutUs.do">회사 멤버</a></li>
								</ul></li>
							<!-- End Home -->


							<!-- Pages -->
							<li class="dropdown"><a href="templtePage.do"
								class="dropdown-toggle"> 템플릿 </a></li>
							<!-- End Pages -->

							<!-- Features -->
							<li class="dropdown"><a href="showList.do"
								class="dropdown-toggle"> 홈페이지 제작 </a></li>


							<!-- Contacts -->
							<li class="dropdown"><a href="javascript:void(0);"
								class="dropdown-toggle" data-toggle="dropdown"> 고객지원 </a>
								<ul class="dropdown-menu">
									<li><a href="noticeBoardTable.do">공지사항</a></li>
									<li><a href="freeBoardTable.do">자유게시판</a></li>
									<li><a href="manual.do">사용법</a></li>
									<li><a href="faq.do">FAQ</a></li>
									<li><a href="qnaBoardTable.do">QNA</a></li>
								</ul></li>
							<!-- End Contacts -->


						</ul>
					</div>
					<!--/navbar-collapse-->
				</div>
			</div>
			<!-- End Navbar -->
		</div>

		<!--=== End Header ===-->

		<!--=== Breadcrumbs ===-->

		<!--=== End Breadcrumbs ===-->

		<!--=== Content Part ===-->
		<div class="container content">
			<div class="row blog-page">
				<!-- Left Sidebar -->
				<div class="col-md-9 md-margin-bottom-40">
					<!--Blog Post-->
					<div class="row blog blog-medium margin-bottom-40">
						<div class="col-md-5">
							<img class="img-responsive" src="img/shop.png" alt="">
						</div>
						<div class="col-md-7">
							<h2>Shop Templte</h2>
							<ul class="list-unstyled list-inline blog-info">
								<li><i class="fa fa-calendar"></i> AUGUST 17, 2014</li>
								<li><i class="fa fa-tags"></i> shop, Internet</li>
							</ul>
							<p>쇼핑몰을 주제로 한 templte으로 누구나 쉽게 자신만의 아기자기한 쇼핑몰 페이지를 제작 가능합니다.</p>
							<p>
								<a class="btn-u btn-u-small" id="btn1" value="shoppingMall"><i
									class="fa fa-location-arrow"></i> Make</a>
							</p>
						</div>
					</div>
					<!--End Blog Post-->

					<hr class="margin-bottom-40">

					<!--Blog Post-->
					<div class="row blog blog-medium margin-bottom-40">
						<div class="col-md-5">
							<div class="blog-img">
								<div class="responsive-video">
									<img class="img-responsive" src="img/interior.png" alt="">
								</div>
							</div>
						</div>
						<div class="col-md-7">
							<h2>Interior Templte</h2>
							<ul class="list-unstyled list-inline blog-info">
								<li><i class="fa fa-calendar"></i> AUGUST 17, 2014</li>
								<li><i class="fa fa-tags"></i> Internet, Furniture</li>
							</ul>
							<p>자신의 가구 Mall을 홍보하고 싶으신 분, 인터넷으로 손쉽게 고객 관리 하고 싶으신 분을 위한
								templte입니다.</p>
							<p>
								<a class="btn-u btn-u-small" id="btn2" value="interior"><i
									class="fa fa-location-arrow"></i> Make</a>
							</p>
						</div>
					</div>
					<!--End Blog Post-->

					<hr class="margin-bottom-40">

					<!--Blog Post-->
					<div class="row blog blog-medium margin-bottom-40">
						<div class="col-md-5">
							<img class="img-responsive" src="img/freelineT.png" alt="">
						</div>
						<div class="col-md-7">
							<h2>Freeline Templte</h2>
							<ul class="list-unstyled list-inline blog-info">
								<li><i class="fa fa-calendar"></i> AUGUST 17, 2014</li>
								<li><i class="fa fa-tags"></i> Photo, Internet</li>
							</ul>
							<p>사진관을 운영하시는 분들을 위하여 제작한 templte입니다.</p>
							<p>
								<a class="btn-u btn-u-small" id="btn3" value="freeline"><i
									class="fa fa-location-arrow"></i> Make</a>
							</p>
						</div>
					</div>
					<!--End Blog Post-->

					<hr class="margin-bottom-40">

					<!--Blog Post-->
					<div class="row blog blog-medium margin-bottom-40">
						<div class="col-md-5">
							<img class="img-responsive" src="img/logo.png" alt="">
						</div>
						<div class="col-md-7">
							<h2>Logo</h2>
							<ul class="list-unstyled list-inline blog-info">
								<li><i class="fa fa-calendar"></i> AUGUST 17, 2014</li>
								<li><i class="fa fa-tags"></i> BLOG, Internet</li>
							</ul>
							<p>자신만의 blog를 운영하고 싶으신 분들을 위하여 제공을 하는 templte입니다.</p>
							<p>
								<a class="btn-u btn-u-small" id="btn4" value="logo"><i
									class="fa fa-location-arrow"></i> Make</a>
							</p>
						</div>
					</div>
					<!--End Blog Post-->

					<hr class="margin-bottom-40">
					<!--End Blog Post-->
					<div class="row blog blog-medium margin-bottom-40">
						<div class="col-md-5">
							<img class="img-responsive" src="img/soda.png" alt="">
						</div>
						<div class="col-md-7">
							<h2>SODA</h2>
							<ul class="list-unstyled list-inline blog-info">
								<li><i class="fa fa-calendar"></i> AUGUST 17, 2014</li>
								<li><i class="fa fa-tags"></i> Drink, Internet</li>
							</ul>
							<p>음료회사 및 주류회사를 운영하시는 분들을 위한 templte입니다.</p>
							<p>
								<a class="btn-u btn-u-small" id="btn5" value="soda"><i
									class="fa fa-location-arrow"></i> Make</a>
							</p>
						</div>
					</div>
					<!--End Blog Post-->

					<hr class="margin-bottom-40">
					<!--Pagination-->
					<div class="row blog blog-medium margin-bottom-40">
						<div class="col-md-5">
							<img class="img-responsive" src="img/restaurant.png" alt="">
						</div>
						<div class="col-md-7">
							<h2>Restaurant</h2>
							<ul class="list-unstyled list-inline blog-info">
								<li><i class="fa fa-calendar"></i> AUGUST 17, 2014</li>
								<li><i class="fa fa-tags"></i> Food, Internet</li>
							</ul>
							<p>음식점 홍보 및 고객관리를 위하여 홈페이지 제작을 생각하시는 분들을 위한 templte입니다.</p>
							<p>
								<a class="btn-u btn-u-small" id="btn6" value="restarunt"><i
									class="fa fa-location-arrow"></i> Make</a>
							</p>
						</div>
						<hr class="margin-bottom-40">
					<!--Pagination-->
					<div class="row blog blog-medium margin-bottom-40">
						<div class="col-md-5">
							<img class="img-responsive" src="img/yoga.png" alt="">
						</div>
						<div class="col-md-7">
							<h2>Yoga</h2>
							<ul class="list-unstyled list-inline blog-info">
								<li><i class="fa fa-calendar"></i> AUGUST 17, 2014</li>
								<li><i class="fa fa-tags"></i> Yoga, Internet</li>
							</ul>
							<p>요가학원 홍보 및 고객관리를 위하여 홈페이지 제작을 생각하시는 분들을 위한 templte입니다.</p>
							<p>
								<a class="btn-u btn-u-small" id="btn7" value="yoga"><i
									class="fa fa-location-arrow"></i> Make</a>
							</p>
						</div>
							<hr class="margin-bottom-40">
					<!--Pagination-->
					<div class="row blog blog-medium margin-bottom-40">
						<div class="col-md-5">
							<img class="img-responsive" src="img/health.png" alt="">
						</div>
						<div class="col-md-7">
							<h2>health</h2>
							<ul class="list-unstyled list-inline blog-info">
								<li><i class="fa fa-calendar"></i> AUGUST 17, 2014</li>
								<li><i class="fa fa-tags"></i> food, Internet</li>
							</ul>
							<p>건강식품 홍보 및 고객관리를 위하여 홈페이지 제작을 생각하시는 분들을 위한 templte입니다.</p>
							<p>
								<a class="btn-u btn-u-small" id="btn8" value="health"><i
									class="fa fa-location-arrow"></i> Make</a>
							</p>
						</div>
								
					</div>
					<!--End Blog Post-->

					<hr class="margin-bottom-40">
					<!--End Pagination-->
				</div>
				<!-- End Left Sidebar -->

				<!-- Right Sidebar -->
				
				<!-- End Right Sidebar -->
			</div>
			<!--/row-->
		</div>
		<!--/container-->
		<!--=== End Content Part ===-->

		<!--=== Footer ===-->

		<!--/footer-->
		<!--=== End Footer ===-->

		<!--=== Copyright ===-->
		
		<!--/copyright-->
		<!--=== End Copyright ===-->
	</div>
	<!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="assets/plugins/jquery-1.10.2.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="assets/js/app.js"></script>
	<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
       
    	$("#btn1").click(function(){
    		location.href="makeProject.do?templteName=shop";
    	});
    	$("#btn2").click(function(){			
    		location.href="makeProject.do?templteName=interior";
    	});
    	$("#btn3").click(function(){			
    		location.href="makeProject.do?templteName=freeline";
    	});
    	$("#btn4").click(function(){			
    		location.href="makeProject.do?templteName=logo";
    	});
    	$("#btn5").click(function(){			
    		location.href="makeProject.do?templteName=soda";
    	});
    	$("#btn6").click(function(){			
    		location.href="makeProject.do?templteName=restarunt";
    	});
    	$("#btn7").click(function(){			
    		location.href="makeProject.do?templteName=yoga";
    	});
    	$("#btn8").click(function(){			
    		location.href="makeProject.do?templteName=health";
    	});
	});
	</script>
	<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
<![endif]-->

</body>
</html>
