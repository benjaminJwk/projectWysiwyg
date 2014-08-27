<%@page import="javax.websocket.Session"%>
<%@page import="org.springframework.web.context.request.SessionScope"%>
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
    <link rel="stylesheet" href="assets/plugins/sky-forms/version-2.0.1/css/custom-sky-forms.css">
    <link rel="stylesheet" href="assets/plugins/scrollbar/src/perfect-scrollbar.css">

    <!-- CSS Page Style -->
    <link rel="stylesheet" href="assets/css/pages/profile.css">

    <!-- CSS Theme -->    
    <link rel="stylesheet" href="assets/css/themes/default.css" id="style_color">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">
</head> 

<script type="text/javascript" src="<%=request.getContextPath()%>/libs/jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	
	$(function(){
		if( "<%=session.getAttribute("id")%>" != "null")
   		{
   			$("#loginBtn").html("<a href='logout.do'>Logout</a></li>");
   		}
		$("#changePassword").click(function(){
			$.ajax({
				url: "changePassword.do",
				dataType : "text",
				data : "password="+$("#password").attr("value"),
				success : function(data2){
					if(data2 == "success")
						alert("비밀번호 변경완료");
					else
						alert("비밀번호 변경실패");
				},
				error : function(err)
				{
					alert(err);	
				}
			});
			
		});
		
		
		$.ajax({
			url: "myPageOk.do",
			type: "post",
			dataType: "json",
			success : function(data){
				if(data.vo != null)
				{
					$("#nameSpace").text(data.vo.userName);
					$("#mailSpace").text(data.vo.userMail);
				}
				else
				{
					alert("로그인 해주세요");
					location.href="login.do";
				}
			},
			error : function(err){
				alert(err);
			}
		});
		
		
	});

</script>

<body style="cursor: default;">

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
                                <li><a href="aboutBlink.do">Blink?</a></li>
                                <li><a target="_blank" href="One-Page/index.html">기획의도</a></li>                                
                                <li><a href="aboutUs.do">회사 멤버</a></li>
                            </ul>

                        </li>
                        <!-- End Home -->

                        
                        <!-- Pages -->                        
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                템플릿
                            </a>
                            <ul class="dropdown-menu">
                                <!-- About Pages -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">쇼핑몰</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="page_about1.html">의류</a></li>
                                        <li><a href="page_about.html">악세서리</a></li>
                                        <li><a href="page_about_me.html">주택</a></li>
                                    </ul>                                
                                </li>
                                <!-- End About Pages -->

                                <!-- Profile Pages -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">블로그</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="profile.html">Profile Main Page</a></li>
                                        <li><a href="profile_me.html">Profile Overview</a></li>
                       
                                    </ul>                                
                                </li>
                                <!-- End Profile Pages -->

                                <!-- Job Pages -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">사진</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="page_jobs.html">Jobs Main Page</a></li>                                
                                        <li><a href="page_jobs_inner.html">Jobs Description Default</a></li>                                
                                        <li><a href="page_jobs_inner1.html">Jobs Description Basic</a></li>                                
                                        <li><a href="page_jobs_inner2.html">Jobs Description Min</a></li>                                
                                    </ul>                                
                                </li>
                                <!-- End Job Pages -->

                                <!-- Email Tempaltes -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">레스토랑</a>
                                    <ul class="dropdown-menu">
                                        <li class="dropdown-submenu">
                                            <a href="javascript:void(0);">Email Corporate</a>
                                            <ul class="dropdown-menu">
                                                <li><a target="_blank" href="email-templates/corporate/email_corporate_aqua.html">Corporate Aqua Color</a></li>
                                                <li><a target="_blank" href="email-templates/corporate/email_corporate_blue.html">Corporate Blue Color</a></li>
                                                <li><a target="_blank" href="email-templates/corporate/email_corporate_brown.html">Corporate Brown Color</a></li>
                                                <li><a target="_blank" href="email-templates/corporate/email_corporate_dark_blue.html">Corporate Dark Blue Color</a></li>
                                                <li><a target="_blank" href="email-templates/corporate/email_corporate_green.html">Corporate Green Color</a></li>
                            
                                            </ul>                                
                                        </li>
                                        <li class="dropdown-submenu">
                                            <a href="javascript:void(0);">Email Flat</a>
                                            <ul class="dropdown-menu">
                                                <li><a target="_blank" href="email-templates/flat/email_flat_aqua.html">Flat Aqua Color</a></li>
                                                <li><a target="_blank" href="email-templates/flat/email_flat_blue.html">Flat Blue Color</a></li>
                                                <li><a target="_blank" href="email-templates/flat/email_flat_brown.html">Flat Brown Color</a></li>
                                                <li><a target="_blank" href="email-templates/flat/email_flat_dark_blue.html">Flat Dark Blue Color</a></li>
               
                                            </ul>                                
                                        </li>
                                        <li class="dropdown-submenu">
                                            <a href="javascript:void(0);">Email Modern</a>
                                            <ul class="dropdown-menu">
                                                <li><a target="_blank" href="email-templates/modern/email_modern_aqua.html">Modern Aqua Color</a></li>
                                                <li><a target="_blank" href="email-templates/modern/email_modern_blue.html">Modern Blue Color</a></li>
                                                <li><a target="_blank" href="email-templates/modern/email_modern_brown.html">Modern Brown Color</a></li>
                                                <li><a target="_blank" href="email-templates/modern/email_modern_dark_blue.html">Modern Dark Blue Color</a></li>
                                                <li><a target="_blank" href="email-templates/modern/email_modern_green.html">Modern Green Color</a></li>
                                         
                                            </ul>                                
                                        </li>
                                    </ul>                                
                                </li>

       
                                <!-- End Terms Of Service -->
                            </ul>
                        </li>
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
                                <li><a href="manual.do">사용법</a></li>
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
	
    <!--=== Profile ===-->
    <div class="profile">   
        <div class="container content">
            <div class="row">
                <div class="col-md-9">
                    <!--Profile Body-->
                    <div class="profile-body margin-bottom-20">
                        <div class="tab-v1">
                            <ul class="nav nav-justified nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#profile">내 정보</a></li>
                                <li><a data-toggle="tab" href="#passwordDiv">비밀번호 변경</a></li>
                                <li><a data-toggle="tab" href="#payment">결제정보 등록</a></li>
                            </ul>          
                            <div class="tab-content">
                                <div id="profile" class="profile-edit tab-pane fade in active">
                                    <h2 class="heading-md">개인정보 수정페이지</h2>
                                    <!-- <p>수정하고 싶은 정보를 수정해주세요</p> -->
                                    </br>
                                    <dl class="dl-horizontal">
                                        <dt><strong>이름 </strong></dt>
                                        <dd>
                                           <h3 id="nameSpace"></h3>
                      
                                        </dd>
                                        <hr>
                                        <dt><strong>이메일 </strong></dt>
                                        <dd>
                                            <h3 id="mailSpace"></h3>
                                            <span>
                                                <a class="pull-right" href="#">
                                                </a>
                                            </span>
                                        </dd>
                                        <hr>
                                    </dl>
                                   
                                </div>

                                <div id="passwordDiv" class="profile-edit tab-pane fade">
                                    <h2 class="heading-md">비밀번호 관리페이지</h2>
                                    <p>비밀번호 변경해주세요</p>
                                    </br>
                                    <form class="sky-form" id="sky-form4" method="post">
                                        <dl class="dl-horizontal">
                                            <dt>비밀번호 입력</dt>
                                            <dd>
                                                <section>
                                                    <label class="input">
                                                        <i class="icon-append fa fa-lock"></i>
                                                        <input type="password" id="password" placeholder="Password" name="password">
                                                        <b class="tooltip tooltip-bottom-right">비밀번호 잊지 마세요</b>
                                                    </label>
                                                </section>
                                            </dd>
                                            <dt>비밀번호 확인</dt>
                                            <dd>
                                                <section>
                                                    <label class="input">
                                                        <i class="icon-append fa fa-lock"></i>
                                                        <input type="password" placeholder="Confirm password" name="passwordConfirm">
                                                        <b class="tooltip tooltip-bottom-right">비밀번호 잊지 마세요</b>
                                                    </label>
                                                </section>
                                            </dd>    
                                        </dl>
                                      
                                        </br>
                                      
                                        <button class="btn-u" id="changePassword">저장</button>
                                    </form>    
                                </div>

                                <div id="payment" class="profile-edit tab-pane fade">
                                    <h2 class="heading-md">결제수단 관리페이지</h2>
                                    <p>결제할 계좌를 입력하세요</p>
                                    </br>
                                    <form class="sky-form" id="sky-form" action="">
                                        <!--Checkout-Form-->
                                        <section>
                                            <div class="inline-group">
                                                <label class="radio"><input type="radio" checked="" name="radio-inline"><i class="rounded-x"></i>Visa</label>
                                                <label class="radio"><input type="radio" name="radio-inline"><i class="rounded-x"></i>MasterCard</label>
                                                <label class="radio"><input type="radio" name="radio-inline"><i class="rounded-x"></i>PayPal</label>
                                            </div>
                                        </section>                  

                                        <section>
                                            <label class="input">
                                                <input type="text" name="name" placeholder="이름">
                                            </label>
                                        </section>
                                        
                                        <div class="row">
                                            <section class="col col-10">
                                                <label class="input">
                                                    <input type="text" name="card" id="card" placeholder="카드번호">
                                                </label>
                                            </section>
                                            <section class="col col-2">
                                                <label class="input">
                                                    <input type="text" name="cvv" id="cvv" placeholder="CVV">
                                                </label>
                                            </section>
                                        </div>                                        
                                        
                                        <div class="row">
                                            <label class="label col col-4">만료일</label>
                                            <section class="col col-5">
                                                <label class="select">
                                                    <select name="month">
                                                        <option disabled="" selected="" value="0">월</option>
                                                        <option value="1">1월</option>
                                                        <option value="1">2월</option>
                                                        <option value="3">3월</option>
                                                        <option value="4">4월</option>
                                                        <option value="5">5월</option>
                                                        <option value="6">6월</option>
                                                        <option value="7">7월</option>
                                                        <option value="8">8월</option>
                                                        <option value="9">9월</option>
                                                        <option value="10">10월</option>
                                                        <option value="11">11월</option>
                                                        <option value="12">12월</option>
                                                    </select>
                                                    <i></i>
                                                </label>
                                            </section>
                                            <section class="col col-3">
                                                <label class="input">
                                                    <input type="text" placeholder="년" id="year" name="year">
                                                </label>
                                            </section>
                                        </div>
                                        <button type="button" class="btn-u btn-u-default">취소</button>
                                        <button class="btn-u">저장</button>
                                        <!--End Checkout-Form-->
                                    </form>    
                                </div>
                            </div>
                        </div>    
                    </div>
                    <!--End Profile Body-->
                </div>
            </div><!--/end row-->
        </div><!--/container-->    
    </div>      
    <!--=== End Profile ===-->

    <!--=== Copyright ===-->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-6">                     
                    <p>
                        2014 &copy; Unify. ALL Rights Reserved. 
                        <a target="_blank" href="https://twitter.com/htmlstream">Htmlstream</a> | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
                    </p>
                </div>
                <div class="col-md-6">  
                    <a href="index.html">
                        <img class="pull-right" id="logo-footer" src="assets/img/logo2-default.png" alt="">
                    </a>
                </div>
            </div>
        </div> 
    </div><!--/copyright--> 
    <!--=== End Copyright ===-->
</div><!--/wrapper-->

<!-- JS Global Compulsory -->           

<script type="text/javascript" src="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<!-- Scrollbar -->
<script src="assets/plugins/scrollbar/src/jquery.mousewheel.js"></script>
<script src="assets/plugins/scrollbar/src/perfect-scrollbar.js"></script>
<!-- Validation Form -->
<script src="assets/plugins/sky-forms/version-2.0.1/js/jquery.validate.min.js"></script>
<!-- Checkout Form -->
<script src="assets/plugins/sky-forms/version-2.0.1/js/jquery.maskedinput.min.js"></script>
<!-- Datepicker Form -->
<script src="assets/plugins/sky-forms/version-2.0.1/js/jquery-ui.min.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/forms/reg.js"></script>
<script type="text/javascript" src="assets/js/forms/checkout.js"></script>
<script type="text/javascript" src="assets/js/plugins/datepicker.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        RegForm.initRegForm();
        Datepicker.initDatepicker();
        CheckoutForm.initCheckoutForm();        
    });
</script>
<script>
    jQuery(document).ready(function ($) {
        "use strict";
        $('.contentHolder').perfectScrollbar();
    });
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script src="assets/plugins/sky-forms/version-2.0.1/js/sky-forms-ie8.js"></script>
<![endif]-->

<!--[if lt IE 10]>
    <script src="assets/plugins/sky-forms/version-2.0.1/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>
</html> 