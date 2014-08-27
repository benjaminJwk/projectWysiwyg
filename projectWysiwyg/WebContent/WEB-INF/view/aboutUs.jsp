<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
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
    <link rel="stylesheet" href="assets/plugins/image-hover/css/img-hover.css">

    <!-- CSS Page Style -->    
    <link rel="stylesheet" href="assets/css/pages/page_job.css">

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

                        
                        <!-- Pages -->                        
                       <li class="dropdown"><a href="templtePage.do"
								class="dropdown-toggle"> 템플릿 </a></li>
                        <!-- End Pages -->

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
            <h1 class="pull-left">팀원 소개</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index">Home</a></li>
                <li><a href="">About</a></li>
				<li class="active">About Us</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->

	<div class="container content">
		<div class="row">
			<!-- Begin Sidebar Menu -->
			<div class="col-md-3"
				style="padding-top: 30px; padding-bottom: 300px;">
				<ul class="list-group sidebar-nav-v1" id="sidebar-nav">

					<li class="list-group-item"><a href="about.do">Blink?</a></li>

					<li class="list-group-item"><a href="aboutBlink.do">기획의도</a></li>

					<li class="list-group-item "><a href="aboutUs.do">회사멤버</a></li>

				</ul>
			</div>


			<!--=== Job Team ===-->
			<div class="col-md-9" style="padding-top:30px;">
			<div class="parallax-team parallaxBg">
				
				<div class="title-box-v2">
					<h2>
						MEET OUR <span class="color-green">TEAM</span>
					</h2>
					<p>Blink의 멤버들을 소개하겠습니다.</p>
				</div>

					<div class="col-md-12">
						<div class="col-md-6 col-sm-6">
							<div class="team-v2">
								<div style="height: 300px; width: 200px;">
									<img class="img-responsive" src="img/kim.jpg" alt="" />
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="inner-team" style="background-color: white;">
									<h3>김영훈</h3>
									<small class="color-green">PROJECT MANAGER</small>
									<p>개발자입니다.</p>
									<p>개발자입니다.</p>
									<hr>
									<ul class="list-inline team-social">
										<li><a data-placement="top" data-toggle="tooltip"
											class="fb tooltips" data-original-title="Facebook" href="#">
												<i class="fa fa-facebook"></i>
										</a></li>
										<li><a data-placement="top" data-toggle="tooltip"
											class="tw tooltips" data-original-title="Twitter" href="#">
												<i class="fa fa-twitter"></i>
										</a></li>
										<li><a data-placement="top" data-toggle="tooltip"
											class="gp tooltips" data-original-title="Google plus"
											href="#"> <i class="fa fa-google-plus"></i>
										</a></li>
									</ul>
								</div>
						</div>
					</div>

					<div class="row">
					<!-- Team v2 -->
					<div class="col-md-3 col-sm-6">
						<div class="team-v2">
							<div style="height: 300px; width: 200px;">
								<img class="img-responsive" src="img/lee.jpg" alt="" />
							</div>
							<div class="inner-team">
								<h3>이우정</h3>
								<small class="color-green"> DB</small>
								<p>서울여자대학교 정보보안학과입니다.</p>
								<hr>
								<ul class="list-inline team-social">
									<li><a data-placement="top" data-toggle="tooltip"
										class="fb tooltips" data-original-title="Facebook" href="#">
											<i class="fa fa-facebook"></i>
									</a></li>
									<li><a data-placement="top" data-toggle="tooltip"
										class="tw tooltips" data-original-title="Twitter" href="#">
											<i class="fa fa-twitter"></i>
									</a></li>
									<li><a data-placement="top" data-toggle="tooltip"
										class="gp tooltips" data-original-title="Google plus" href="#">
											<i class="fa fa-google-plus"></i>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- End Team v2 -->

					<!-- Team v2 -->
					<div class="col-md-3 col-sm-6">
						<div class="team-v2">
							<div style="height: 300px; width: 200px;">
								<img class="img-responsive" src="img/chan.jpg" alt="" />
							</div>
							<div class="inner-team">
								<h3>황찬우</h3>
								<small class="color-green">HTML/CSS</small>
								<p>감사합니다</p>
								<hr>
								<ul class="list-inline team-social">
									<li><a data-placement="top" data-toggle="tooltip"
										class="fb tooltips" data-original-title="Facebook" href="#"><i
											class="fa fa-facebook"></i></a></li>
									<li><a data-placement="top" data-toggle="tooltip"
										class="tw tooltips" data-original-title="Twitter" href="#"><i
											class="fa fa-twitter"></i></a></li>
									<li><a data-placement="top" data-toggle="tooltip"
										class="gp tooltips" data-original-title="Google plus" href="#"><i
											class="fa fa-google-plus"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- End Team v2 -->

					<!-- Team v2 -->

					<!-- End Team v2 -->

					<!-- Team v2 -->
					<div class="col-md-3 col-sm-6">
						<div class="team-v2">
							<div style="height: 300px; width: 200px;">
								<img class="img-responsive" src="img/jun.jpg" alt="" />
							</div>
							<div class="inner-team">
								<h3>전원경</h3>
								<small class="color-green">DEVELOPER</small>
								<p>개발자다</p>
								<hr>
								<ul class="list-inline team-social">
									<li><a data-placement="top" data-toggle="tooltip"
										class="fb tooltips" data-original-title="Facebook" href="#">
											<i class="fa fa-facebook"></i>
									</a></li>
									<li><a data-placement="top" data-toggle="tooltip"
										class="tw tooltips" data-original-title="Twitter" href="#">
											<i class="fa fa-twitter"></i>
									</a></li>
									<li><a data-placement="top" data-toggle="tooltip"
										class="gp tooltips" data-original-title="Google plus" href="#">
											<i class="fa fa-google-plus"></i>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- End Team v2 -->
					<!-- Team v2 -->
					<div class="col-md-3 col-sm-6">
						<div class="team-v2">
							<div style="height: 300px; width: 200px;">
								<img class="img-responsive" src="img/hwang.jpg" alt="" />
							</div>
							<div class="inner-team">
								<h3>황재승</h3>
								<small class="color-green">HTML</small>
								<p>숭실대학교 산업정보시스템공학과 입니다.</p>
								<hr>
								<ul class="list-inline team-social">
									<li><a data-placement="top" data-toggle="tooltip"
										class="fb tooltips" data-original-title="Facebook" href="#">
											<i class="fa fa-facebook"></i>
									</a></li>
									<li><a data-placement="top" data-toggle="tooltip"
										class="tw tooltips" data-original-title="Twitter" href="#">
											<i class="fa fa-twitter"></i>
									</a></li>
									<li><a data-placement="top" data-toggle="tooltip"
										class="gp tooltips" data-original-title="Google plus" href="#">
											<i class="fa fa-google-plus"></i>
									</a></li>
								</ul>
							</div>
						</div>
					</div>

				</div>
			</div>
			</div>
		</div>
	</div>
	
	<!--=== End Job Team ===-->  

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
<script type="text/javascript" src="assets/plugins/jquery.parallax.js"></script>
<script type="text/javascript" src="assets/plugins/image-hover/js/modernizr.js"></script>
<script type="text/javascript" src="assets/plugins/image-hover/js/touch.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        App.initParallaxBg();        
    });
</script>


<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-29166220-1']);
  _gaq.push(['_setDomainName', 'htmlstream.com']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>

</body>
</html>