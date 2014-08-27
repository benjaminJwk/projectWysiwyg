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
	
	
    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">개인정보보호정책</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index.html">홈</a></li>
                <li><a href="">Pages</a></li>
                <li class="active">개인정보</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">		
    	<div class="row-fluid privacy">
            <p class="lead"><em>Wysiwyg - 사용 약관 계약</em></p>
            <br />

			<h4>제 1조 일반 원칙</h4>
			<P>&nbsp 이 개인정보보호정책은 Wysiwygpress Ltd.('Wysiwyg.com')가 당사 웹사이트 www.Wysiwyg.com을 통해 귀하가 제공하는 개인 정보를 수집하고 사용하는 방법을 설명합니다. 또한 이 정책은 당사의 귀하 개인 정보사용에 관하여 귀하가 선택할 수 있는 옵션과 귀하가 이 정보에 액세스하고 이 정보를 업데이트하는 방법도 설명합니다.<br /><br />

&nbsp당사는 Wysiwyg.com을 통해서 귀하가 웹 기반 컨텐츠를 만들어 친구나 주변 친지들과 공유할 수 있도록 해줍니다. 당사는 귀하가 Wysiwyg.com을 통해 호스팅되는 귀하 컨텐츠에 모든 사람이 액세스하는 것을 원하지 않을 수 있다는 점을 인식하고 있습니다. 이 때문에 당사는 귀하에게 자신의 개인 컨텐츠를 제어할 수 있는 권한을 부여합니다.<br /><br />

&nbsp Wysiwyg.com을 통해 귀하는 친구나 주변 친지들과 컨텐츠를 공유할 수 있습니다. 귀하는 Wysiwyg.com의 일반 사용자들과 공유할 컨텐츠를 선택할 수 있습니다.<br /><br />

&nbsp Wysiwyg Ltd.는 이 개인정보보호정책과 실천 사례가 www.privacy.go.kr/의 검토를 거쳐 귀하 개인 정보의 수집과 사용에 관한 투명성, 책임성, 선택권을 포함한 www.privacy.go.kr/의 프로그램 요건을 준수하고 있음을 의미하는 www.privacy.go.kr/의 개인 정보 영향 평가를 통과했습니다.  당사의 개인정보보호정책 또는 실천 사례에 관하여 질문이나 불편 사항이 있으면 http://Wysiwyg.com/contact-us으로 문의해 주싶시오 당사의 응답에 만족을 느끼지 못하는 경우 www.privacy.go.kr/로 문의해주십시오. www.privacy.go.kr/ 프로그램은 Wysiwyg.com 웹사이트를 통해 수집된 정보만 다룹니다.<br /><br />

&nbsp Wysiwyg.com은 사용자들이 제공하거나 만든 누적된 컨텐츠를 기반으로 하고 있으며, Wysiwyg.com 사용자들이 사용할 수 있는 컨텐츠의 양도 점점 늘어나고 있습니다. Wysiwyg.com은 사용자들의 개인정보는 보호하는 동시에 가급적이면 많은 컨텐츠를 사용자들이 사용할 수 있도록 하기 위해 노력하고 있습니다.</p></br>

            <h4>제 2조 수용</h4>
            <p>&nbsp Wysiwyg.com을 사용하거나 이에 액세스하는 것으로, 귀하는 이 개인정보보호정책에 나와 있는 실천 사례를 수용하는 것이 됩니다.<br /><br />

&nbsp이 개인정보보호정책은 www.Wysiwyg.com 웹사이트('웹사이트')의 모든 활동을 포괄합니다.<br /><br />

&nbsp이 정책에 관한 질문이나 궁금한 내용이 있는 경우 우선 privacy@Wysiwyg.com으로 당사의 정책 담당자에게 문의하십시오.   
</p><br /><br />

            <h4>정보와 컨텐츠의 수집 및 제공</h4>
            <p>&nbsp&nbspWysiwyg.com을 방문할 때 귀하는 당사에 2가지 종류의 정보 즉, 제한된 개인 정보와 귀하가 공개하거나 Wysiwyg.com 웹사이트에 게시하도록 선택한 컨텐츠를 제공하게 됩니다.<br /><br />

&nbspWysiwyg.com에 등록할 때 귀하는 당사에 이메일 주소와 같은 특정 개인 정보를 제공하게 됩니다.<br /><br />

&nbsp귀하가 Wysiwyg.com을 방문할 때 당사는 제3의 유틸리티 추적 파트너를 통해 로그 파일에 귀하의 브라우저 종류와 IP 주소를 수집합니다. 이 정보는 모든 Wysiwyg.com 방문자를 대상으로 수집됩니다. 또한 당사는 '쿠키'를 사용하여 귀하 브라우저의 특정 정보를 저장합니다. 쿠키란 사용자에 관한 정보와 연결된 사용자 컴퓨터에 저장되어 있는 데이터입니다. 당사는 쿠키에 저장한 이 정보를 귀하가 당사 웹사이트에 있을 때 제출하는 개인 정보에 연결합니다. 기본적으로, 당사는 귀하의 로그인 ID와 암호를 저장하는 영구적 쿠키를 사용하여 귀하가 Wysiwyg.com에 다시 돌아올 때 간편하게 로그인할 수 있도록 해줍니다. 이 편리한 기능을 비활성화하려는 경우 브라우저의 설정을 사용하여 이 쿠키를 제거하거나 차단할 수 있습니다.<br /><br />

&nbsp당사의 추적 유틸리티 제공업체가 쿠키를 사용하는 것에 관한 내용은 당사의 개인정보보호정책에 별도로 명시되어 있지 않습니다. 당사는 이러한 쿠키에 액세스하거나 이에 대한 제어권을 가지고 있지 않습니다.<br /><br />

&nbsp귀하는 자신의 위험 부담으로 이 사이트에 사용자 컨텐츠(Wysiwyg.com 사용 약관에 명시)를 게시합니다. 당사는 귀하가 귀하의 페이지와 컨텐츠를 공유할 대상으로 선택할 수 있는 다른 사용자들의 활동은 제어할 수 없습니다. 따라서 당사는 귀하가 사이트에 게시하는 사용자 컨텐츠를 무단 사용자들이 보거나 이에 위해를 가하지 않는다고 보장하지 않으며 그럴 수도 없습니다. 당사는 이 사이트의 모든 개인정보보호 설정 또는 보안 장치의 우회에 대한 책임을 지지 않습니다. 귀하는 사이트 삭제 후에도 캐시 페이지나 보관된 페이지에서 또는 다른 사용자들이 귀하의 사용자 컨텐츠를 복사하거나 저장한 경우 사용자 컨텐츠의 사본을 남들이 볼 수 있다는 점을 이해하고 이에 동의합니다.  </p><br /><br />

            <h4>제 4조 요금 청구 정보</h4>
            <p>&nbsp  귀하가 유료 서비스(사용 약관에 명시)에 등록하는 경우 당사에서 해당 거래를 처리하고 발생 요금을 청구하기 위해 귀하의 이름, 전화 번호, 주소 등의 정보와 함께 요금 청구 정보가 필요합니다.<br /><br />

&nbsp당사는 귀하의 요금 청구 정보를 저장하지 않으며, 이 정보는 해당 거래가 처리되면 삭제됩니다. 그러나 요금 청구에 필요한 필수 정보는 당사의 전자결제 서비스 업체에서 저장합니다. 이 정보는 귀하의 가입 약정을 이행하는 데 필요한 경우 해당 업체의 안전 전자결제 서비스 게이트웨이에 저장됩니다.<br /><br />

&nbsp당사는 귀하가 나중에 사용된 카드를 확인할 수 있도록 귀하 신용카드 번호의 마지막 4자리와 신용카드 종류를 보관합니다.<br /><br />

&nbsp등록을 취소하면 해당 전자결제 서비스 업체가 귀하의 요금 청구 정보를 제거합니다.
</p><br /><br />

			   <h4>제 5조 제3자와 컨텐츠 공유</h4>
            <p>&nbsp  당사는 이 개인정보보호정책에 명시되어 있는 방법으로만 귀하의 개인 정보를 제3자와 공유합니다. 당사는 귀하의 개인 정보를 제3자에게 판매하지 않습니다. Wysiwyg.com에서는 만든 컨텐츠를 귀하 네트워크에 있는 친구나 친지들과 공유할 수 있는 기능을 주요 서비스로 제공합니다.<br /><br />

&nbsp당사는 당사가 제공하는 서비스가 원활하게 운영될 수 있도록 도움을 받기 위해 정보 또는 개인 사용자 컨텐츠를 서비스 제공자에게 제공합니다. 특히, 당사는 제3자를 통해 서버를 위한 공동 배치 시설에서 서비스를 호스팅하고, 귀하에 당사의 커뮤니티 블로그를 제공하고, Wysiwyg.com에 관한 이메일 업데이트를 보내고, 당사 사용자 목록에서 반복 정보를 제거하고, 제품 또는 서비스의 결제를 처리하고, 귀하에게 라이브 채팅 서비스를 제공하는 등 당사의 비즈니스를 촉진할 수 있습니다. 당사의 서비스 제공자는 이러한 비즈니스 활동과 관련하여 제한된 시간에 사용할 수 있는 귀하의 개인 정보 또는 컨텐츠에 액세스할 수 있습니다. 귀하가 당사 서비스에 등록하면 당사는 해당 업체가 서비스를 제공할 때 필요한 정도로만 귀하의 개인 정보를 공유합니다.<br /><br />

&nbsp당사는 때때로 비 사용자들이 Wysiwyg.com을 둘러볼 수 있는 기회를 제공하는 사용자가 만든 컨텐츠의 데모 버전을 제공합니다.<br /><br />

&nbsp이러한 컨텐츠는 무단 편집 또는 변경으로부터 귀하의 컨텐츠를 보호할 수 있는 방식으로 제공됩니다.<br /><br />

&nbsp당사는 소환장 또는 법원 명령 등의 법적 요청에 따라, 또는 적용되는 법률에 따라 귀하의 개인 정보를 공개해야 할 수도 있습니다. 당사는 선의의 믿음을 가지고 법률 집행에 의한 또는 개별 소송 당사자의 정보 요청이 적용되는 법적 표준을 충족시키지 못한다고 판단되는 경우에는 정보를 공개하지 않습니다. 또한 당사는 법률을 준수하고, 당사의 이익이나 자산을 보호하고, Wysiwyg.com 서비스를 통해 또는 Wysiwyg.com 이름을 사용하여 발생하는 사기 또는 기타 불법 행위를 방지하고, 긴박한 신체적 위해를 방지하기 위해 필요하다고 판단되는 경우 계정 또는 기타 정보를 공유할 수 있습니다. 여기에는 타 회사, 변호사, 대리인 또는 정부 기관과 정보를 공유하는 것이 포함됩니다.<br /><br />

&nbsp당사는 Wysiwyg.com에 다른 업체들과 공동으로 서비스를 제공할 수 있습니다. 귀하가 당사 웹사이트를 통해 도메인 이름을 구매하는 경우가 이에 해당합니다. 이러한 경우 당사는 Wysiwyg.com에 이러한 서비스 제공 시 이러한 제3자를 명확하게 공개하며, 이 경우 당사는 귀하의 이러한 공동 서비스 사용과 관련하여 사용자 ID와 같은 고객 정보를 해당하는 제3자와 공유할 수 있는 권한을 가집니다. Wysiwyg.com 비즈니스의 소유권이 변경되는 경우 해당 서비스가 계속 제공되도록 하기 위해 귀하의 사용자 정보가 새 소유자에게 이전될 수 있습니다. 귀하에게는 이메일 또는 당사 웹사이트상의 명확한 통지를 통해 귀하 개인 정보의 사용 또는 소유에 관한 변경 사항과, 귀하의 개인 정보에 대해 있을 수 있는 귀하의 선택권에 대해 알려드립니다.<br /><br />

&nbsp귀하가 Wysiwyg.com을 사용할 때 게시하거나 제3자(예: 친구 또는 귀하 네트워크에 있는 사람)와 공유하는 개인 정보, 의견, 메시지, 사진, 비디오, 기타 정보 등의 특정 정보가 다른 사용자들에게 공개될 수 있습니다. 이러한 모든 정보 공유는 귀하 자신의 책임 부담으로 이루어집니다.
</p><br /><br />

<!--<ul class>
        <li>><br/> </li>
        <li>></i><br/> </li>
        <li></i><br/> </li>
     </ul>-->
			   <h4>제 6조 웹사이트에서 받는 커뮤니케이션 메시지
</h4>&nbsp 당사는 귀하에게 홍보 이메일을 보낼 때 귀하의 이메일 주소를 사용합니다. 이러한 이메일을 더 이상 받지 않으려는 경우 수신되는 홍보 커뮤니케이션 이메일에 나와 있는 가입 취소 지침을 따르십시오.</p><br /><br />

			   <p> <h4>제 7조 링크</h4></p>
		  <p>&nbsp Wysiwyg.com에는 타 웹사이트로 연결되는 링크가 들어 있을 수 있습니다. 당사는 이러한 타 웹사이트의 개인정보보호 관행에 대해 그 책임을 지지 않습니다. 당사는 사용자들에게 당사 사이트에서 나갈 때 개인 정보를 수집하는 모든 웹사이트의 개인정보보호정책을 읽도록 권장합니다. 이 개인정보보호정책은 Wysiwyg.com에서 수집하거나 Wysiwyg.com 웹사이트에 게시되는 정보에만 적용됩니다.</p><br /><br />
		    

			<p> <h4>제 8조 공개 포럼</h4>
           <p>&nbsp 당사의 웹사이트에서는 공개적으로 액세스할 수 있는 블로그 또는 커뮤니티 포럼을 제공합니다. 귀하는 이러한 영역에 귀하가 제공하는 정보를 여기에 액세스하는 다른 사용자들이 읽고 수집하고 사용할 수 있다는 점을 알아두어야 합니다. 당사의 블로그나 커뮤니티 포럼에서 귀하의 개인 정보를 제거하도록 요청하려면 privacy@Wysiwyg.com으로 문의하십시오. 일부의 경우, 당사는 귀하의 개인 정보를 제거하지 못할 수 있습니다. 이러한 경우 당사는 제거 가능 여부와 그 사유를 귀하에게 알려줍니다.</p><br /><br />

			   <h4>제 9조 소셜 미디어 위젯</h4>
            <p>&nbsp  당사의 웹사이트에는 Facebook Like 단추와 같은 소셜 미디어 기능들(공유 단추 또는 당사 사이트에서 실행되는 대화식 미니 프로그램 등의 위젯)이 포함되어 있습니다. 이러한 기능은 귀하의 IP 주소와 당사 사이트에서 귀하가 방문하는 페이지를 수집할 수 있으며, 해당 기능이 올바르게 작동하도록 하기 위해 쿠키를 설정할 수 있습니다. 소셜 미디어 기능과 위젯은 제3자가 호스팅하거나 당사 사이트에서 직접 호스팅할 수 있습니다. 이러한 기능과 상호 작용하는 조작은 해당 기능을 제공하는 회사의 개인정보보호정책에 따라 관리됩니다.</p><br /><br />

			   <h4>제 10조 컨텐츠 변경 또는 제거</h4>
            <p>&nbsp Wysiwyg.com의 개인 컨텐츠 액세스와 제어는 컨텐츠 편집 도구를 통해 이루어집니다. Wysiwyg.com 사용자는 언제든지 자신의 계정에 로그인하여 자신의 개인 정보를 수정하거나 삭제할 수 있습니다. 이러한 모든 변경 내용은 즉시 업데이트됩니다. 자신의 Wysiwyg.com 계정을 비활성화하려는 사용자는 '내 계정' 페이지에서 계정을 비활성화할 수 있습니다. 제거된 정보는 합당한 기간 동안 백업 사본으로 남아 있을 수 있지만, Wysiwyg.com 사용자는 사용할 수 없습니다.<br /><br />

&nbsp자신의 개인 정보가 변경되거나 당사의 서비스가 더 이상 필요 없는 경우 귀하는 당사의 고객 지원 센터 support@Wysiwyg.com으로 이메일을 보내서 해당 정보를 수정하거나 업데이트하거나 삭제하거나 비활성화할 수 있습니다. 당사는 30일 이내에 귀하의 액세스 요청에 응답해드립니다.<br /><br />

&nbsp당사는 귀하의 계정이 활성으로 유지되는 한 또는 귀하에게 서비스를 제공하기 위해 필요한 경우 귀하의 정보를 보관합니다. 당사는 당사의 법적 의무를 준수하고 분쟁을 해결하고 계약을 이행하기 위해 필요한 정도로 귀하의 정보를 보관하고 사용합니다.<br/><br/>


     </p><br />

			   <h4>제 11조 보안</h4>
            <p>&nbsp Wysiwyg.com은 사용자의 정보와 컨텐츠를 보호하기 위한 적절한 주의를 기울입니다. 당사는 귀하의 계정 정보와 업 로드된 컨텐츠를 보호하기 위한 물리적, 전자적, 절차적 보호 장치를 갖추고 있습니다. 귀하가 당사의 주문 양식에 중요한 정보(예: 신용카드 번호)를 입력하면 이러한 트랜잭션은 업계 표준 SSL/TLS 연결을 통해 최소 1024 비트 암호화로 처리됩니다. 이메일과 인스턴트 메시지는 안전한 커뮤니케이션으로 인식되지 않으므로, 이메일이나 인스턴트 메시징 서비스를 사용하여 개인 정보 또는 데이터를 당사에 보내지 않도록 요청 드립니다. Wysiwyg.com 웹사이트의 보안과 관련하여 궁금한 점이 있는 경우 privacy@Wysiwyg.com으로 문의해주십시오.</P>




   <h4>제 12조 Wysiwyg 프로 디렉토리</h4>
            <p>&nbsp 귀하가 당사 Wysiwyg 프로 디렉토리에 참여하도록 선택된 경우 당사의 공개 액세스 회원 디렉토리에 귀하를 올리겠습니다. 더 이상 이 디렉토리에 올라 있기를 원하지 않는 경우 support@Wysiwyg.com으로 문의해주십시오.
			</p><br /><br />

		

			

			   <h4>제 13조 추천글</h4>
            <p>&nbsp   당사는 개인 식별 정보가 포함되어 있을 수 있는 고객들의 추천글을 당사 웹사이트에 게시합니다. 당사는 추천글과 함께 고객의 이름을 게시하기 전에 이메일을 통해 고객의 동의를 얻습니다. 자신의 추천글을 제거하도록 요청하려면 support@Wysiwyg.com으로 문의해주십시오. </p><br /><br />

			<h4>제 14조 컨테스트</h4>
            <p>&nbsp 때때로 당사에서는 컨테스트나 당사 웹사이트에 참여할 수 있는 기회를 제공합니다. 참여하는 경우 당사는 귀하에게 특정 개인 정보를 요청합니다. 이러한 컨테스트에 참여하는 것은 전적으로 자유 의사이므로, 귀하는 이 정보를 공개할 것인지 여부를 선택할 수 있습니다. 일반적으로 요청되는 정보에는 연락처 정보(예: 이름과 배송 주소)와 통계 정보(예: 우편 번호)가 포함됩니다.<br /><br />

당사는 이 정보를 사용하여 컨테스트 입상자와 수상 내용을 통지하고, 사이트 트래픽을 모니터링하고, 참여자에 대한 알림을 제공합니다.<br /><br />

Wysiwyg은 타 서비스 제공자를 통해 설문 조사 또는 컨테스트를 실시할 수 있습니다. 당사는 귀하에게 사전 통지와 선택권을 주기 전에는 귀하가 컨테스트나 설문 조사를 통해 제공하는 개인 정보를 다른 제3자와 공유하지 않습니다.  </p><br /><br />
			
			<h4>제 15조 행동 타게팅/리타게팅</h4>
            <p> &nbsp당사는 제3자 광고 네트워크 업체와 협력하여 당사 웹사이트에 광고를 게재하거나 타 사이트의 당사 광고를 관리합니다. 당사의 광고 네트워크 파트너 업체는 쿠키와 웹 탐지 장치를 통해 이 웹사이트와 타 웹사이트상의 귀하의 활동에 관한 비 개인 식별 정보를 수집하여 귀하의 관심을 기반으로 귀하에게 맞춤형 광고를 제공합니다. 귀하에게 맞춤형 광고를 제공하는 데에 이 정보가 사용되지 않도록 하려면 여기를 클릭하여 옵트아웃하면 됩니다. 이렇게 한다고 해서 귀하에게 광고가 제공되는 것이 옵트아웃되는 것은 아닙니다. 일반적인 광고는 계속해서 수신하게 됩니다.</p><br /><br />


			<h4>제 16조 사용 약관, 통지, 개정</h4>
            <p>&nbsp  귀하의 Wysiwyg.com 사용과 여기에서 비롯된 모든 분쟁에는 이 개인정보보호정책과 당사의 일반 사용 약관 그리고, 보증 고지 사항, 책임 제한, 보호, 준거법 선택을 포함한 모든 관련 일반 규정이 적용됩니다. 당사는 당사의 정보 관행에 대한 변경 내용을 반영하기 위해 이 개인정보보호정책을 업데이트할 수 있습니다. 당사에서 자료를 변경한 경우 당사는 변경 내용의 효력이 개시되기 전에 이메일로(귀하의 계정에 정해져 있는 이메일 주소로 발송) 또는 이 웹사이트에 통지 형식으로 해당 내용을 알려 드립니다. 당사는 귀하에게 이 페이지를 주기적으로 검토하여 당사의 개인정보보호 관행에 대한 최신 정보를 확인하도록 권장합니다. 달리 명시된 경우가 아니면 당사의 현행 개인정보보호정책은 당사가 가지고 있는 귀하에 관한 모든 정보와 귀하의 모든 계정에 적용됩니다. </p><br /><br />

			<h4>제 17. 웹사이트 연락처</h4>
			<p>&nbsp 이 개인정보보호정책에 관하여 궁금한 점이 있는 경우 privacy@Wysiwyg.com으로 문의해주십시오. 다음 주소로 우편을 보내주셔도 됩니다. 서울특별시 광진구 화양동 </p> <br/><br />

			
			
                      
        </div><!--/row-fluid-->        
    </div><!--/container-->		
    <!--=== End Content Part ===-->

    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 md-margin-bottom-40">
                    <!-- About -->
                    <div class="headline"><h2>WYSIWYG</h2></div>
                    <p>what you see is what you get</p>

                </div><!--/col-md-4-->  
                
                <div class="col-md-4 md-margin-bottom-40">
                    <!-- Recent Blogs -->
                    <div class="posts">
                        <div class="headline"><h2>Social</h2></div>
                              <ul class="social-icons">
                        <li><a href="#" data-original-title="Feed" class="social_rss"></a></li>
                        <li><a href="#" data-original-title="Facebook" class="social_facebook"></a></li>
                        <li><a href="#" data-original-title="Twitter" class="social_twitter"></a></li>
                        <li><a href="#" data-original-title="Goole Plus" class="social_googleplus"></a></li>
                        <li><a href="#" data-original-title="Pinterest" class="social_pintrest"></a></li>
                        <li><a href="#" data-original-title="Linkedin" class="social_linkedin"></a></li>
                        <li><a href="#" data-original-title="Vimeo" class="social_vimeo"></a></li>
                    </ul>
              
                        </div>
                    <!-- End Recent Blogs -->                    
                </div><!--/col-md-4-->

                <div class="col-md-4">
                    <!-- Contact Us -->
                    <div class="headline"><h2>Contact Us</h2>

                    </div> 
                    <dt><a href="#"><img src="../assets/img/map.png" alt="" /></a></dt>

                    <p>
                    <i class="fa fa-home"></i> : 서울특별시 광진구 화양동<br>
                    <i class="fa fa-phone"></i> : 02-000-0000<br>
                    <i class="fa fa-envelope-o"></i> : wysiwyg@google.com <br>                                           
                    </p>
                    <!-- End Contact Us -->

                </div><!--/col-md-4-->
            </div>
        </div> 
    </div><!--/footer-->
    <!--=== End Footer ===-->

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