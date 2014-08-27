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

	<!-- Script -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/libs/jquery/jquery-1.11.1.min.js"></script>
	<script type="text/javascript">
			$(function(){
				if( "<%=session.getAttribute("id")%>" != "null")
				{
					$("#loginBtn").html("<a href='logout.do'>Logout</a></li>");
				}
				$.ajax({
	    			url: "boardSelectNotice.do",
	    			type: "post",
	    			dataType: "json",
	    			data: "bId="+$("#noticeId").attr("value"),
	    			success : function(result){
	    				var notice ="";
	    				$("#boardNotice ul:gt(0)").remove();
	    				
	    				$(result.list).each(function(index,item){
	    					  
	    					  notice += "<li>";
	    				 	  notice += "<a href='noticeBoardTable.do'>" + item.boardSubject +  "</a><br>";
	    				 	  notice += "<small>"+item.boardDate+"</small>";
	    				 	  notice += "</li>";

	    					});
	    				$("#boardNotice ul:eq(0)").after(notice);
	    				
	    			},
	    			error : function(err){
	    				alert(err);
	    			}
	    		});
				
		    	
		    	$.ajax({
					url: "boardSelectQna.do",
					type: "post",
					dataType: "json",
					data: "bId="+$("#qnaId").attr("value"),
					success : function(result){
						
						var qna ="";
						$("#boardQna ul:gt(0)").remove();
						
						$(result.list).each(function(index,item){
							  
							  qna += "<li>";
						 	  qna += "<a href='qnaBoardTable.do'>" + item.boardSubject +  "</a><br>";
						 	  qna += "<small>"+item.boardDate+"</small>";
						 	  qna += "</li>";
							});
						  $("#boardQna ul:eq(0)").after(qna);
		
					},
					error : function(err){
						alert(err);
					}
				});			
				
				
	    	});
	    	

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
                    <a class="navbar-brand" href="index" >
                    <img id="logo-header" src="img/blink.png" alt="Logo">
					
					
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
            <h1 class="pull-left">Blink</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index">Home</a></li>
                <li><a href="">About</a></li>
				<li class="active">About Blink</li>
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
					<div class=" about-me margin-bottom-40">
						<div class="col-md-5 shadow-wrapper md-margin-bottom-20">
							<div class="box-shadow shadow-effect-2">
								<img class="img-responsive" src="img/blink.jpg" alt="">
							</div>
						</div>
						<div class="col-md-6">
							<div class="overflow-h">
								<div class="pull-left">
									<h2>
										<img class="img-responsive" src="img/blink.png" alt="">
									</h2>
								</div>
							</div>
							<p>&nbsp;Blink란 눈을 깜빡인다는 뜻으로 눈 깜빡할새에 원하는 형태의 웹사이트를 제작할 수 있다는
								뜻입니다. 디자인이나 코딩에 대한 이해가 없어도 Blink가 제공하는 기능을 이용하면 누구나 자유롭게 스스로를
								표현하거나 온라인으로 사업의 모든 방면을 관리 할 수 있습니다. Blink가 무료로 제공하는 다양한 템플릿과
								기능들을 이용하여 자신만의 홈페이지를 만들어 보세요</p>
							<ul class="list-unstyled">
								<li><i class="color-green fa fa-check"></i> 설립 연도 : 2014</li>
								<li><i class="color-green fa fa-check"></i> 서울시 광진구 화양동 건국대학교 새천년관 502호</li>
								<li><i class="color-green fa fa-check"></i> Seoul, Korea</li>
								<li><i class="color-green fa fa-check"></i> Phone: 800 123 3456</li>
								<li><i class="color-green fa fa-check"></i> Fax: 800 123 3456</li>
								<li><i class="color-green fa fa-check"></i> Email: blink_apply@blinkcor.com</li>
							</ul>
						</div>
					</div>
					<!-- About Me -->

					<!-- End About Me -->
				</div>
			</div>
		</div>



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
                        <div class="posts" id="boardNotice">
                            <div class="headline"><h2>공지사항</h2></div>
                            <ul class="list-unstyled latest-list" id="noticeId" value="0">
                            </ul>
                        </div>
                    </div><!--/col-md-3-->  
                    <!-- End Latest --> 
                    
                    <!-- Link List -->
                    <div class="col-md-3 md-margin-bottom-40">
                    	<div class="post" id="boardQna">
                        <div class="headline"><h2>Q&A</h2></div>
                        <ul class="list-unstyled latest-list" id="qnaId" value="2"  >
                        </ul>
                        </div>
                    </div>
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