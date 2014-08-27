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
                <div class="navbar-header" >
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="fa fa-bars"></span>
                    </button>
                    <a class="navbar-brand" href="index" >
				
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
                            <a href="showList.do" class="dropdown-toggle" >
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
                                <li><a href="Manual_main.do">사용법</a></li>
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

 <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">자주하는질문</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index">홈</a></li>
                <li>고객지원</li>
				<li class="active">자주하는질문</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!-- 시작하기 -->

		<div class="container content">
			<div class="row">
				<!-- Begin Sidebar Menu -->
				<div class="col-md-3" style="padding-top: 30px; padding-bottom:300px;">
					<ul class="list-group sidebar-nav-v1" id="sidebar-nav">

						<li class="list-group-item"><a href="noticeBoardTable.do">공지사항</a>
						</li>

						<li class="list-group-item"><a href="freeBoardTable.do">자유게시판</a>
						</li>

						<li class="list-group-item "><a href="faq.do">FAQ</a></li>

						<li class="list-group-item "><a href="qnaBoardTable.do">QNA</a>
						</li>

					</ul>
				</div>

				<!--=== Content Part ===-->
				
				<div class="col-md-9" style="padding-top: 30px; ">
					<!-- General Questions -->
					<div class="headline">
						<h2>자주 하는 질문</h2>
					</div>
					<div class="panel-group acc-v1 margin-bottom-40" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion" href="#collapseOne"> 1. WY SI 	WYG이 무엇인가요? </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse ">
								<div class="panel-body">WY SI WYG은 홈페이지를 일반 사용자들이 프로그래밍언어를
									사용하지 않고도 손쉽게 만들 수 있게 도와주는 툴을 가진 웹사이트입니다.</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion" href="#collapseTwo"> 2. 페이지만들기
										위해서는 회원가입을 해야하나요? </a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse">
								<div class="panel-body">
									<p>저희 WY SI WYS 서비스를 이용하기 위해서는 홈페이지 가입이 필수입니다.</p>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion" href="#collapseThree"> 3. 유료 탬플릿만
										있나요? </a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse">
								<div class="panel-body">
									<p>무료 유료 템플릿 둘다 지원됩니다 유료의 경우 프리미엄 템플릿으로 추가 혜택이 존재합니다.</p>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion" href="#collapseFour"> 4. 홈페이지 제작은
										어떻게 하나요? </a>
								</h4>
							</div>
							<div id="collapseFour" class="panel-collapse collapse">
								<div class="panel-body">WY SI WYS에서 제공하는 탬플릿을 이용하여 원하는 대로
									페이지 구성을 마우스를 이용하여 하면 됩니다. 그래서 별도의 프로그래밍에 대한 지식이 없어도 손쉽게 홈페이지
									제작이 가능합니다.</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion" href="#collapseFive"> 5. 결제는 어떻게
										하나요? </a>
								</h4>
							</div>
							<div id="collapseFive" class="panel-collapse collapse">
								<div class="panel-body">
									<p>카드 및 계좌이체를 통하여 웹상으로 결제가 가능합니다.</p>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion" href="#collapseSix"> 6. 사이트 게시
										후에도 사이트 편집이 가능한가요? </a>
								</h4>
							</div>
							<div id="collapseSix" class="panel-collapse collapse">
								<div class="panel-body">사이트는 게시한 후에도 언제든지 수정이 가능합니다.</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion" href="#collapseSeven"> 7. WY SI
										WYG과 다른 사이트의 템플릿을 불러와 적용할 수 있나요? </a>
								</h4>
							</div>
							<div id="collapseSeven" class="panel-collapse collapse">
								<div class="panel-body">WY SI WYG는 외부 사이트의 템플릿을 지원하지 않으므로
									적용할 수 없습니다.</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/acc-v1-->
                <!-- End General Questions -->
            
    		<div class="col-md-3">
            	
    <!--=== End Content Part ===-->

      <!--=== Footer ===-->
   <!--/footer-->
    <!--=== End Footer ===-->

    <!--=== Copyright ===-->
   <!--/copyright--> 
    <!--=== End Copyright ===-->
</div><!--/wrapper-->
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
                            2014 &copy; All Rights Reserved. Blink Corp. by HJ
                            <a href="pageTermsOfUse.do">이용약관</a> 및 <a href="pagePrivacy.do">개인정보수집</a>
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

		<!--=== End Footer Version 1 ===-->
<!-- JS Global Compulsory -->           
<script type="text/javascript" src="assets/plugins/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<!-- JS Implementing Plugins -->           
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
    });
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
<![endif]-->

</body>
</html> 