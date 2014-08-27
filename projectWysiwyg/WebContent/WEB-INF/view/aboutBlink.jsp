<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html> <!--<![endif]-->  
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
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">

    <!-- CSS Page Style -->    
    <link rel="stylesheet" href="assets/css/pages/portfolio-v2.css">

    <!-- CSS Theme -->    
    <link rel="stylesheet" href="assets/css/themes/default.css" id="style_color">

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
<!--=== Style Switcher ===-->    
<i class="style-switcher-btn fa fa-cogs hidden-xs"></i>
<div class="style-switcher animated fadeInRight">
    <div class="theme-close"><i class="icon-close"></i></div>
    <div class="theme-heading">Theme Colors</div>
    <ul class="list-unstyled">
        <li class="theme-default theme-active" data-style="default" data-header="light"></li>
        <li class="theme-blue" data-style="blue" data-header="light"></li>
        <li class="theme-orange" data-style="orange" data-header="light"></li>
        <li class="theme-red" data-style="red" data-header="light"></li>
        <li class="theme-light last" data-style="light" data-header="light"></li>

        <li class="theme-purple" data-style="purple" data-header="light"></li>
        <li class="theme-aqua" data-style="aqua" data-header="light"></li>
        <li class="theme-brown" data-style="brown" data-header="light"></li>
        <li class="theme-dark-blue" data-style="dark-blue" data-header="light"></li>
        <li class="theme-light-green last" data-style="light-green" data-header="light"></li>
    </ul>
    <div style="margin-bottom:18px;"></div>
    <div class="theme-heading">Layouts</div>
    <div class="text-center">
        <a href="javascript:void(0);" class="btn-u btn-u-green btn-block active-switcher-btn wide-layout-btn">Wide</a>
        <a href="javascript:void(0);" class="btn-u btn-u-green btn-block boxed-layout-btn">Boxed</a>
    </div>
</div><!--/style-switcher-->
<!--=== End Style Switcher ===-->    

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
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="fa fa-bars"></span>
                    </button>
                    <a class="navbar-brand" href="index">
					<br>
					<font size="7px" color="#74c52c">B</font><font size="5px">link</font>
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-responsive-collapse">
                    <ul class="nav navbar-nav">
                        <!-- Home -->
                        <li class="dropdown">
                            
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                Blink 소개
                            </a>
                            
							<ul class="dropdown-menu">
                                 <li><a href="about.do">Blink?</a></li>
                                <li><a href="aboutBlink.do">기획의도</a></li>                                
                                <li><a href="aboutUs.do">회사 멤버</a></li>
                            </ul>

                        </li>
                        <!-- End Home -->

                        
                     <li class="dropdown"><a href="templtePage.do"
								class="dropdown-toggle"> 템플릿 </a></li>

                        <!-- Features -->
                        <li class="dropdown">
                            <a href="showList.do" class="dropdown-toggle">
                                홈페이지 제작
                            </a>
    
                        </li>


                        <!-- Contacts -->
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                고객지원
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="noticeBoardTable.do">공지사항</a></li>
                                <li><a href="freeBoardTable.do">자유게시판</a></li>
                                <li><a href="view/menual/menual_signin.html">사용법</a></li>
								<li><a href="faq.do">FAQ</a></li>
								<li><a href="qnaBoardTable.do">QNA</a></li>
                            </ul>
                        </li>                    
                        <!-- End Contacts -->

                       
                    </ul>
                </div><!--/navbar-collapse-->
            </div>    
        </div>            
        <!-- End Navbar -->
    </div>
    <!--=== End Header ===-->    

         <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">기획 의도</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index">Home</a></li>
                <li><a href="">About</a></li>
				<li class="active">Project Purpose</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

		<div class="container content">
			<div class="row">
				<!-- Begin Sidebar Menu -->
				<div class="col-md-3"
					style="padding-top: 30px; padding-bottom: 300px;">
					<ul class="list-group sidebar-nav-v1" id="sidebar-nav">

						<li class="list-group-item"><a href="about.do">Blink?</a></li>

						<li class="list-group-item"><a href="aboutBlink.do">기획의도</a>
						</li>

						<li class="list-group-item "><a href="aboutUs.do">회사멤버</a></li>

					</ul>
				</div>




				<!--=== About Me Img ===-->


				<div class="col-md-9" style="padding-top:30px;">
					<div class="row about-me margin-bottom-40">
						<div class="overflow-h">
							<div class="pull-left">
								<h2>Wy Si Wyg(what you see is what you get)</h2>
							</div>
						</div>
						<div>
							<p>기존의 홈페이지 제작 프로그램들 (나모 웹에디터 등 텍스트 기반의 개발 툴) 은 프로그램 설치와 복잡한
								인터페이스 구성, 코드 작성 등 때문에 이용자들이 쉽게 개발하기 어려운 점이 많았습니다. 기존의 프로그램 보다
								편리하다고 하는 GUI기반의 웹 빌더의 경우, 고정된 템플릿 지원으로 인해서 상당히 자유도가 떨어진 것을 확인 할
								수 있습니다. Blink는 이를 개선하여, 간단하면서도 사용자 기호에 맞는 홈페이지를 제작해주는 웹 빌더를
								개발하고자 하여 만들게 되었습니다.</p>
						</div>
						<div class="col-md-5">
							<p>
								<i>Blink가 의도하는 바는 다음과 같습니다.:</i>
							</p>
							<ul class="list-unstyled">
								<li><i class="color-green fa fa-check"></i> 손 쉬운 홈페이지 수정 및
									제작</li>
								<li><i class="color-green fa fa-check"></i> 비 전문가도 손쉽게 제작
									가능</li>
								<li><i class="color-green fa fa-check"></i> 템플릿에 사용자가 원하는
									기능 추가 가능</li>
								<li><i class="color-green fa fa-check"></i> 최신 트렌드에 맞는 높은
									차원의 다양한 페이지 제작</li>
								<li><i class="color-green fa fa-check"></i> 위젯을 이용하여 다양한 기능
									구현</li>
							</ul>
						</div>
						
						
						<div class=" col-md-7 shadow-wrapper md-margin-bottom-20">
							<div class="box-shadow shadow-effect-2">
								<img class="img-responsive" src="img/introduce.png" alt="">
							</div>
						</div>
						
						
						
					</div>
				</div>
			</div>
		</div>

		<!-- About Me -->
        
        <!-- End About Me -->
  
    <!--=== End About Me Img ===-->

    <!--=== Skills ===-->
    <div class="about-skills margin-bottom-20">
        <div class="container">
            <div class="title-box-v2">
                <h2>구현 <span class="color-green">Skills</span></h2>
                <p>구현에 사용되는 기술의 분포도 표시.</p>
            </div>
            <!-- Pie Charts v2 -->
            <div class="row pie-progress-charts">
                <div class="inner-pchart col-sm-3 col-xs-6">
                    <div class="circle" id="circle-6"></div>
                    <h3 class="circle-title">UI Design</h3>
                </div> 
                <div class="inner-pchart col-sm-3 col-xs-6">
                    <div class="circle" id="circle-7"></div>
                    <h3 class="circle-title">Web Development</h3>
                </div>       
                <div class="inner-pchart col-sm-3 col-xs-6">
                    <div class="circle" id="circle-8"></div>
                    <h3 class="circle-title">JavaScript</h3>
                </div>
                <div class="inner-pchart col-sm-3 col-xs-6">
                    <div class="circle" id="circle-9"></div>
                    <h3 class="circle-title">Web Animation</h3>
                </div>
            </div>    
            <!-- End Pie Charts v2 -->
        </div>
    </div>    
    <!--=== End Skills ===-->

    <!--=== Container Part ===-->
    
    <!--=== Copyright ===-->
   <!--/copyright--> 
    <!--=== End Copyright ===-->
</div><!--/End Wrapepr-->

<div class="footer-v1">

			<div class="footer">
				<div class="container">
					<div class="row">
						<!-- About -->
						<div class="col-md-3 md-margin-bottom-40">
							<a href="page_home1.html"><font size="6px" color="#74c52c">B</font><font
								size="5px" color="white">link</font></a>
							<p>blink는 웹사이트를 쉽고 빠르게 만들어 준다.</p>
							<p>초딩부터 할머니까지 다이용할수있다</p>
						</div>
						<!--/col-md-3-->
						<!-- End About -->

						<!-- Latest -->
						<div class="col-md-3 md-margin-bottom-40">
							<div class="posts">
								<div class="headline">
									<h2>최근 소식</h2>
								</div>
								<ul class="list-unstyled latest-list">
									<li><a href="#">Incredible content</a> <small>May
											8, 2014</small></li>
									<li><a href="#">Best shoots</a> <small>June 23,
											2014</small></li>
									<li><a href="#">New Terms and Conditions</a> <small>September
											15, 2014</small></li>
								</ul>
							</div>
						</div>
						<!--/col-md-3-->
						<!-- End Latest -->

						<!-- Link List -->
						<div class="col-md-3 md-margin-bottom-40">
							<div class="headline">
								<h2>유용한 목록</h2>
							</div>
							<ul class="list-unstyled link-list">
								<li><a href="#">About us</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">Portfolio</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">Latest jobs</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">Community</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">Contact us</a><i class="fa fa-angle-right"></i></li>
							</ul>
						</div>
						<!--/col-md-3-->
						<!-- End Link List -->

						<!-- Address -->
						<div class="col-md-3 map-img md-margin-bottom-40">
							<div class="headline">
								<h2>Contact Us</h2>
							</div>
							<address class="md-margin-bottom-40">
								서울시 강남구 포스코빌딩 502호 <br /> Seoul, Korea <br /> Phone: 800 123
								3456 <br /> Fax: 800 123 3456 <br /> Email: <a
									href="mailto:info@anybiz.com" class="">blink_apply@blinkcor.com</a>
							</address>
						</div>
						<!--/col-md-3-->
						<!-- End Address -->
					</div>
				</div>
			</div>
			<!--/footer-->

			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<p>
								2014 &copy; All Rights Reserved. Blink Corp. by HJ <a
									target="_blank" href="https://twitter.com/htmlstream">이용약관
									및 개인정보수집</a> | <a href="#">즐겨찾기추가</a>
							</p>
						</div>
						<!-- Social Links -->
						<div class="col-md-6">
							<ul class="social-icons pull-right">
								<li><a href="#" data-original-title="Facebook"
									class="rounded-x social_facebook"></a></li>
								<li><a href="#" data-original-title="Twitter"
									class="rounded-x social_twitter"></a></li>
								<li><a href="#" data-original-title="Goole Plus"
									class="rounded-x social_googleplus"></a></li>
								<li><a href="#" data-original-title="Linkedin"
									class="rounded-x social_linkedin"></a></li>
								<li><a href="#" data-original-title="Pinterest"
									class="rounded-x social_pintrest"></a></li>
							</ul>
						</div>
					</div>
					<!-- End Social Links -->
				</div>
			</div>
		</div>
		<!--/copyright-->

<!-- JS Global Compulsory -->           
<script type="text/javascript" src="assets/plugins/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="assets/plugins/circles-master/circles.js"></script>
<script type="text/javascript" src="assets/plugins/jquery.mixitup.min.js"></script>    
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/plugins/circles-master.js"></script>
<script type="text/javascript" src="assets/js/pages/page_portfolio.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        PortfolioPage.init(); 
        CirclesMaster.initCirclesMaster1();
    });
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
<![endif]-->

</body>
</html> 