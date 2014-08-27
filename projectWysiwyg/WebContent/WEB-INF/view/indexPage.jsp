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
    <link rel="stylesheet" href="assets/plugins/flexslider/flexslider.css">    
    <link rel="stylesheet" href="assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="assets/plugins/layer-slider/layerslider/css/layerslider.css">

    <!-- CSS Theme -->    
    <link rel="stylesheet" href="assets/css/themes/default.css" id="style_color">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/libs/jquery/jquery-1.11.1.min.js"></script>
    <script>
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
								class="dropdown-toggle"> 템플릿 </a>
						</li>

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

    <!--=== Slider ===-->
    <div id="layerslider" style="width: 100%; height: 500px; margin: 0px auto;">
    
         <!--Third Slide-->
         <div class="ls-slide" data-ls="slidedelay:4500;transition2d:25;">
        
            <img src="assets/img/bg/123123.jpg" class="ls-bg" alt="Slide background">

            <span class="ls-s-1" style=" color: #262626; line-height:45px; font-weight: 300; font-size: 50px; top:50px; left: 230px; slidedirection : top; slideoutdirection : bottom; durationin : 1000; durationout : 1000; ">
                심플해진  웹사이트만들기</span>
       

        </div>
        <!--End Third Slide-->
    
    
        <!-- First slide -->
        <div class="ls-slide" style="slidedirection: right; transition2d: 92,93,105; ">
            <img src="assets/img/bg/blink.jpg" class="ls-bg" alt="Slide background"/>

           <span class="ls-s-1" style=" color: white; line-height:45px; font-weight: 300; font-size: 35px; top:100px; left: 30px; slidedirection : top; slideoutdirection : bottom; durationin : 500; durationout : 1000; ">
                무료로 나만의 홈페이지를 <br> 직접 만들어보세요
            </span>
        
        </div>

        <!--Second Slide-->
        <div class="ls-slide" data-ls="transition2d:93;">
            <img src="assets/img/bg/5.jpg" class="ls-bg" alt="Slide background" style="top:120px;">

            <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:120px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 1500; durationout : 500; "></i> 

            <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:120px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 1500; durationout : 500; ">
                간편한 사용자 지정
            </span>

            <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:170px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 2500; durationout : 1500; "></i> 

            <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:170px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 2500; durationout : 1500; ">
                코딩이 필요없는 작업 
            </span>

            <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:220px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 3500; durationout : 3500; "></i> 

            <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:220px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 3500; durationout : 2500; ">
                다양한 홈페이지 템플릿
            </span>

            <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:270px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 4500; durationout : 3500; "></i> 

            <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:270px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 4500; durationout : 3500; ">
                쉽고 빠르게 만드는 나만의 웹사이트
            </span>
            
              <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:320px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 5500; durationout : 3500; "></i> 

            <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:320px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 5500; durationout : 3500; ">
                타인과 홈페이지 공유
             </span>
             
               

          

           
          


            <img src="assets/img/bg/25635.jpg" alt="Slider Image" class="ls-s-1" style=" top:100px; left: 650px; slidedirection : right; slideoutdirection : bottom; durationin : 1500; durationout : 1500; ">
			        <div class="da-slide">
 
            </div>
        </div>                

   
    </div><!--/layer_slider-->
    <!--=== End Slider ===-->

    <!--=== Purchase Block ===-->
    <div class="purchase">
        <div class="container">
            <div class="row">
                <div class="col-md-9 animated fadeInLeft">
                    <span>나만의 홈페이지를 지금 바로 제작해보세요</span>
                    <p>Blink는 누구나 스스로 자신만의 온라인 공간을 무료로 만들수 있도록 도와드립니다.
                       다양한 디자인의 템플릿을 이용하여 직접 만들어보세요!</p>
                </div>            
                <div class="col-md-3 btn-buy animated fadeInRight">
                    <a href="showList.do" class="btn-u btn-u-lg"><i class="fa fa-cloud-download"></i> 시작하기</a>
                </div>
            </div>
        </div>
    </div><!--/row-->
    <!-- End Purchase Block -->

    <!--=== Content Part ===-->
    <div class="container content">
        <div class="margin-bottom-10"></div>
        <!-- Service Blocks -->
        <div class="row content-boxes-v2 margin-bottom-30">
            <div class="col-md-4 md-margin-bottom-30">                
                <h2 class="heading-sm">
                    <a class="link-bg-icon" href="#">
                        <i class="icon-custom icon-sm rounded-x icon-bg-dark fa fa-compress"></i>
                        <span>쉽고 빠르고 아름답게</span>
                    </a>
                </h2>
                <p class="text-justify">몇번의 클릭만으로 원하는 요소를 편집하여 단 몇 분만에 나만의 웹사이트를 만들수 있습니다.</p>
            </div>
            <div class="col-md-4 md-margin-bottom-30">
                <h2 class="heading-sm">
                    <a class="link-bg-icon" href="#">
                        <i class="icon-custom icon-sm rounded-x icon-bg-dark fa fa-html5"></i> 
                        <span>HTML5 + CSS3</span>
                    </a>
                </h2>
                <p class="text-justify">Blink는 HTML5 기능을 제공하는 드래그 앤 드롭 형식의 웹사이트 에디터입니다.</p>
            </div>
            <div class="col-md-4">
                <h2 class="heading-sm">
                    <a class="link-bg-icon" href="#">
                        <i class="icon-custom icon-sm rounded-x icon-bg-dark icon-line icon-rocket"></i>
                        <span>다양한 템플릿</span>
                    </a>
                </h2>
                <p class="text-justify">여러분야에서 사용할수 있는 다양한 기능을 탑재한 웹사이트를 만들 수 있습니다.</p>
            </div>
        </div>

        <div class="row content-boxes-v2 margin-bottom-30">
            <div class="col-md-4 md-margin-bottom-30">                
                <h2 class="heading-sm">
                    <a class="link-bg-icon" href="#">
                        <i class="icon-custom icon-sm rounded-x icon-bg-dark icon-line icon-support"></i>
                        <span>나만의 웹사이트</span>
                    </a>
                </h2>
                <p class="text-justify">색상, 텍스트, 배경, 그림등을 변경해 나만의 특색있는 웹사이트를 만들 수 있습니다.</p>
            </div>
            <div class="col-md-4 md-margin-bottom-30">
                <h2 class="heading-sm">
                    <a class="link-bg-icon" href="#">
                        <i class="icon-custom icon-sm rounded-x icon-bg-dark fa fa-thumbs-o-up"></i> 
                        <span>최상급의 호스팅</span>
                    </a>
                </h2>
                <p class="text-justify">Blink는 신뢰할 수 있는 최상의 호스팅 서비스를 100% 무료로 제공하고 있습니다.</p>
            </div>
            <div class="col-md-4">
                <h2 class="heading-sm">
                    <a class="link-bg-icon" href="#">
                        <i class="icon-custom icon-sm rounded-x icon-bg-dark icon-line icon-present"></i>
                        <span>홈페이지 공유</span>
                    </a>
                </h2>
                <p class="text-justify">다른 사람들이 만든 홈페이지를 공유하고 평가받을 수 있습니다.</p>
            </div>
        </div>
        <!-- End Service Blokcs -->    

        <!-- Recent Works -->
    			<!-- Recent Works -->
			<div class="owl-carousel-v1 owl-work-v1 margin-bottom-40">
				<div class="headline">
					<h2 class="pull-left">템플릿 목록</h2>
					<div class="owl-navigation">
						<div class="customNavigation">
							<a class="owl-btn prev-v2"><i class="fa fa-angle-left"></i></a> <a
								class="owl-btn next-v2"><i class="fa fa-angle-right"></i></a>
						</div>
					</div>
					<!--/navigation-->
				</div>

				<div class="owl-slider-v2">
					<div class="item">
						<a href="templtePage.do"> <em class="overflow-hidden"> <img
								class="img-responsive" src="img/shop.png" alt="">
						</em> <span> <strong>shoppingMall Templte</strong> <i></i>
						</span>
						</a>
					</div>
					<div class="item">
						<a href="templtePage.do"> <em class="overflow-hidden"> <img
								class="img-responsive" src="img/interior.png" alt="">
						</em> <span> <strong>InteriorTemplte</strong> <i></i>
						</span>
						</a>
					</div>
					<div class="item">
						<a href="templtePage.do"> <em class="overflow-hidden"> <img
								class="img-responsive" src="img/restaurant.png" alt="">
						</em> <span> <strong>RestaurantTemplte</strong> <i></i>
						</span>
						</a>
					</div>
					<div class="item">
						<a href="templtePage.do"> <em class="overflow-hidden"> <img
								class="img-responsive" src="img/soda.png" alt="">
						</em> <span> <strong>SodaTemplte</strong> <i></i>
						</span>
						</a>
					</div>
					<div class="item">
						<a href="templtePage.do"> <em class="overflow-hidden"> <img
								class="img-responsive" src="img/logo.png" alt="">
						</em> <span> <strong>LogoTemplte</strong> <i></i>
						</span>
						</a>
					</div>
					<div class="item">
						<a href="templtePage.do"> <em class="overflow-hidden"> <img
								class="img-responsive" src="img/freelineT.png" alt="">
						</em> <span> <strong>FreeLineTemplte</strong> <i></i>
						</span>
						</a>
					</div>
				</div>
			</div>
        <!-- End Recent Works -->

    	

    	
    </div><!--/container-->		
    <!-- End Content Part -->

    <!--=== Footer Version 1 ===-->
    <div class="footer-v1">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- About -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <a href="indexPage.html"><font size="6px" color="#74c52c">B</font><font size="5px" color="white">link</font></a>
                        <p>&nbsp;blink는 눈 깜빡할 사이에 웹페이지를 만들 수 있다는 뜻입니다.</p>
                        <p>디자인이나 코딩에대한 이해가 없어도 웹페이지를 쉽고 빠르게 만들 수 있게 해줍니다.</p>
                        <p>Blink가 제공하는 다양한 템플릿을 이용하여 자신만의 웹페이지를 만들어보세요.</p>    
                    </div><!--/col-md-3-->
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
                        <div class="headline"><h2>Contact Us</h2></div>                         
                        <address class="md-margin-bottom-40">
                            광진구 화양동 건국대학교 새천년관 502호 <br />
                            Seoul, Korea <br />
                            Phone: 800 123 3456 <br />
                            Fax: 800 123 3456 <br />
                            Email: <a href="mailto:info@anybiz.com" class="">blink_apply@blinkcor.com</a>
                        </address>
                    </div><!--/col-md-3-->
                    <!-- End Address -->
                </div>
            </div> 
        </div><!--/footer-->

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
                            <li><a href="#" data-original-title="Facebook" class="rounded-x social_facebook"></a></li>
                            <li><a href="#" data-original-title="Twitter" class="rounded-x social_twitter"></a></li>
                         
                        </ul>
                    </div>
                    <!-- End Social Links -->
                </div>
            </div> 
        </div><!--/copyright-->
    </div>     
    <!--=== End Footer Version 1 ===-->
</div><!--/wrapper-->
<!-- JS Global Compulsory -->			
<script type="text/javascript" src="assets/plugins/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
<!-- Layer Slider -->
<script type="text/javascript" src="assets/plugins/layer-slider/layerslider/js/greensock.js"></script>
<script type="text/javascript" src="assets/plugins/layer-slider/layerslider/js/layerslider.transitions.js"></script>
<script type="text/javascript" src="assets/plugins/layer-slider/layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
<!-- End Layer Slider -->           
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/pages/index.js"></script>
<script type="text/javascript" src="assets/js/plugins/owl-carousel.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
        App.initSliders();
        Index.initLayerSlider();
        OwlCarousel.initOwlCarousel();
    });
</script>

</body>
</html>	