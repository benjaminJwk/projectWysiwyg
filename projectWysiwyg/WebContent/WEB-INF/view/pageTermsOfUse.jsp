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

    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">이용 약관</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index.html">홈</a></li>
                <li><a href="">Pages</a></li>
                <li class="active">이용 약관</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">		
    	<div class="row-fluid privacy">
            <p class="lead"><em>Wysiwyg - 사용 약관 계약</em></p>
            <br />

			<h4>제 1조 목적</h4>
			<P>&nbsp 본 약관은 Wysiwyg이 운영하는 웹사이트에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)의 이용 및 제공 등에 관한 제반 사항의 규정을 목적으로 합니다 </p></br>

            <h4>제 2조 일반 및 동의</h4>
            <p>&nbsp Wysiwyg이 소유 및 관리, 운영하는 www.Wysiwyg.Com또는 Wysiwyg.com의 도메인 이름과 모든 하위 도메인 이름 ('Wysiwyg 웹사이트'를 통해 이용할 수 있는 모든 컨텐츠를 포함하여 집합적으로 아래에 정의됨)을 사용 또는 방문하거나 이 웹사이트에서 제공되는 서비스를 사용하는 것으로 귀하는 http://www.Wysiwyg.com에 게시되고 여기에 참조로 명시되어 있는 약관('사용 약관' 또는 '계약')과 Wysiwyg의 개인정보보호정책 약관에 동의합니다. 이러한 조건 중 어느 하나에도 동의하지 않는 경우 Wysiwyg 웹사이트를 사용하지 마시기 바랍니다.
이러한 사용 약관의 목적상, Wysiwyg의 '하위 웹사이트'란 Wysiwyg이 제공하는 서비스의 일부 인 모든 웹사이트로 간주되며, 이러한 약관은 이러한 웹사이트의 이용에 적용되는 약관을 가리킵니다.
이 사용 약관은 계약은 Wysiwyg 서비스를 사용할 때 적용되는 법적 구속력을 지닌 약관이며, Wysiwyg 웹사이트에 또는 이 웹사이트를 통해 컨텐츠나 기타 자료 또는 서비스를 제공하는 사용자를 포함한 모든 Wysiwyg 웹사이트 사용자에게 적용됩니다. Wysiwyg 서비스를 사용하는 것으로 귀하는 이 계약을 준수하는 것에 동의하는 것이 됩니다. 귀하는 이 계약과 적용되는 모든 법률을 준수하기로 동의하는 경우에만 Wysiwyg 서비스를 사용할 수 있습니다(액세스 또는 사용이 의도한 것이든 아니든 이와 관계 없음). 이 계약 내용을 자세히 읽고 잘 저장해두십시오. 이 계약에 동의하지 않는 경우 Wysiwyg 웹사이트에서 나가고 즉시 Wysiwyg 서비스의 사용을 중지해야 합니다. 회원이 되어 Wysiwyg 서비스를 사용하려면 이 계약 내용을 읽고 등록 프로세스를 통해 이에 동의함을 표시해야 합니다.
특정 Wysiwyg 서비스에 참여하려는 경우 동의가 필요한 추가적인 약관이 있을 수 있습니다. 참여하기로 선택한 Wysiwyg.com 서비스에 적용되는 추가적인 약관이 달리 제공된 경우가 아니라면 이러한 추가적인 약관은 필수 부분으로 이 계약 내용에 포함됩니다.
Wysiwyg.com은 필요에 따라 이 계약을 수정할 수 있으며, 이러한 수정 사항은 Wysiwyg.com이 웹사이트에 게시하는 시점에 발효됩니다. 귀하는 이 계약의 수정 사항이 게시된 후 Wysiwyg 서비스를 사용할 때 이러한 변경 내용을 준수하는 것에 동의합니다. 따라서 주기적으로 이 계약서를 검토하여 모든 변경 내용을 제때에 숙지하도록 하는 것이 중요합니다.</p><br />

            <h4>제 3조 자격</h4>
            <p>&nbsp Wysiwyg 서비스는 회원 자격이 금지되어 있는 곳에서의 사용은 무효화됩니다. Wysiwyg 서비스를 사용하는 것으로, 귀하는 (a) 귀하가 제출하는 모든 등록 정보가 사실이고 정확하며, (b) 이러한 정보를 정확하게 유지하고, (c) 13세 이상이며, (d) Wysiwyg 서비스를 사용하는 것이 적용되는 법률과 규정을 위반하지 않음을 표현하고 보장합니다. 귀하가 13세 미만인 것으로 간주되는 경우 예고 없이 귀하의 프로필이 삭제되고 귀하의 회원 자격이 종료될 수 있습니다.
미성년자는 프리미엄 서비스/업그레이드된 서비스 또는 응용프로그램(아래의 정의 참조)을 구매할 수 없습니다. 따라서 이러한 서비스를 구매하는 것으로 사용자는 자신이 19세 이상이며 추가적인 승인이나 동의 없이 이러한 계약 행위를 수행할 수 있는 충분한 법적 능력을 가지고 있음을 선언하고 표현합니다.  </p><br />

            <h4>제 4조 제공된 서비스</h4>
            <p>&nbsp  이 사용 약관 계약에 따라, Wysiwyg은 이 웹사이트에서 자세히 설명한 특정 서비스('서비스')를 제공해야 합니다. 서비스에는 미디어 또는 문서 파일(텍스트, 사용자 의견, 메시지, 정보, 데이터, 그래픽, 사진, 이미지, 도해, 애니메이션, 소프트웨어, 오디오/비디오를 포함하며 이에 국한되지 않음. 집합적으로 '컨텐츠'라고도 함)의 구성, 설계, 저장, 관리, 공유, 링크 등이 포함되며 이에 국한되지는 않습니다. 이 서비스의 일부(또는 특수 기능)는 해당 서비스에 가입한 사용자에게만 제공될 수 있으며, Wysiwyg은 이러한 서비스에 요금을 부과할 수 있습니다. 서비스는 Wysiwyg AS IS가 제공하며, Wysiwyg은 사용자들에게 이 서비스를 제공하지 못하는 경우 일체 그 책임을 지지 않습니다.
Wysiwyg은 언제든지 자유 재량으로 특정 기능 또는 컨텐츠 부분의 가용성을 포함한 이 서비스 또는 컨텐츠의 일부 또는 전체를 변경하거나 그 게시/운영을 보류하거나 중단할 수 있습니다. 또한 Wysiwyg은 책임 또는 예고 없이 이 서비스의 일부 또는 전체에 제한을 둘 수도 있으며, 이 서비스의 일부 또는 전체에 대한 액세스를 제한할 수 있습니다. Wysiwyg은 이 서비스 또는 서비스의 일부를 사용하는 것에 대해 요금을 부과할 수 있으며, 달리 명시된 경우가 아니면 Wysiwyg 제품이나 이미지 또는, 사용자들이 만든 것을 포함한 웹사이트의 광고 또는 기타 상용 컨텐츠가 여기에 포함될 수 있습니다.
Wysiwyg이 제공하는 (이 웹사이트에 정의되어 있는) 프리미엄 서비스/업그레이드된 서비스는 이 웹사이트에 명시되어 있는 이 계약의 규정과 특정 상업 규정 및 정책(취소 약관, 환불 정책 등)에 따라 제공되며, 필요에 따라 수정 또는 변경될 수 있는 이러한 규정과 정책은 여기에 참조로 명시되어 있으며, 이 계약의 필수 부분으로 간주해야 합니다.
.</p><br />

			   <h4>제 5조 일반책임</h4>
            <p>&nbsp  귀하는 이 웹사이트를 통해 자신이 제공하거나 게시하거나 공유할 수 있는 모든 컨텐츠와 이 사이트에서 이루어진 자신의 활동을 포함하여 자신에 의한 이 웹사이트의 모든 사용 활동에 대해 전적인 책임을 집니다. 귀하는 절대 무단으로 또는 불법적인 용도로 Wysiwyg.com 서비스를 사용할 수 없습니다. 귀하는 저작권법을 포함하여(이에 국한되지는 않음) 해당 사법 관할 구역의 모든 법률을 준수하는 것에 대한 책임을 집니다. 귀하는 바이러스, 웜 또는 안전하지 않은 그 외의 모든 코드를 업로드하거나 전달하지 않습니다. </p><br />


			   <h4>제 6조 Wysiwyg웹사이트</h4>
            <p>&nbsp  Wysiwyg 웹사이트에는 Wysiwyg가 소유하거나 관리하지 않는 제3자의 컨텐츠와  웹사이트 링크가 포함되어 있을 수 있습니다. Wysiwyg은 제3자의 컨텐츠, 개인정보보호정책, 웹사이트 에 대한 제어권을 가지지 않으며, 이에 대한 책임도 일체 지지 않습니다. 또한 Wysiwyg은 제3자 사이트의 컨텐츠를 삭제하거나 편집하지 않으며 그럴 수도 없습니다. 귀하가 제3자의 웹사이트를 사용하여 발생하는 모든 책임으로부터 Wysiwyg을 명시적으로 배제하는 것이 됩니다. 따라서 당사는 귀하가 Wysiwyg 웹사이트에서 나가는 시점을 기억하고, 방문하는 다른 모든 웹사이트의 약관과 개인정보보호정책을 읽을 것을 권고합니다.</p><br />

			   <p> <h4>제 7조 웹사이트 액세스</h4>
            <ul></li>
            	<li>Wysiwyg은 (i) 귀하가 이 웹사이트를 원래의 용도 또는 Wysiwyg이 허용하는 방식으로 사용하기 위해 필요한 경우를 제외하고는 이 웹사이트를 변경 또는 수정하지 않으며, (ii) 이러한 사용 약관의 조건을 준수하는 경우에 한하여, 귀하에게 이러한 사용 약관에 명시되어 있는 이 웹사이트를 사용할 수 있는 권한을 부여합니다.</li>
            	<li>이 웹사이트의 일부 기능에 액세스하려면 계정을 만들어야 합니다. 다른 사람의 계정은 무단으로 사용할 수 없습니다. 계정을 만들 때 정확하고 완전한 정보를 제공해야 합니다. 귀하는 귀하의 계정에서 발생하는 활동에 대해 전적인 책임을 지며, 귀하의 계정 암호를 안전하게 유지해야 합니다. 귀하는 귀하의 암호를 안전하게 유지하는 것에 전적인 책임을 집니다. 귀하는 귀하 계정의 보안이 침해되었거나 계정의 무단 사용 건을 발견한 경우 즉시 Wysiwyg에 해당 사실을 알려야 합니다. Wysiwyg은 계정의 무단 사용으로 인한 귀하의 손해에 대해 책임을 지지 않지만 귀하는 이러한 무단 사용으로 발생한 Wysiwyg 또는 타인의 손해에 대한 책임을 져야 할 수 있습니다.</li>
            	</ul></p><br/>

			<p> <h4>제 8조 제 3자 컨텐츠</h4>
            <ul></li>
            	<li> 링크된 제3자 컨텐츠: Wysiwyg은 귀하가 제3자 웹사이트에서 호스팅하는 이미지, 애니메이션, 비디오, 오디오, 글꼴 또는 기타 컨텐츠('링크된 컨텐츠')를 링크할 수 있도록 허용합니다. 등록된 사용자인 귀하의 작업은 Wysiwyg이 저장하지만 이것은 '링크된 컨텐츠'와 별개의 것이며, Wysiwyg에 저장되어 있는 귀하의 작업은 어떠한 방식으로든 링크된 컨텐츠를 보거나 사용하는 기능에 영향을 미치지 않습니다. 링크된 컨텐츠를 사용자가 더 이상 사용하거나 이에 액세스할 수 없게 된 경우 링크된 컨텐츠를 참조하는 귀하의 작업 부분은 작동하지 않습니다.
Wysiwyg은 사용자에게 제3자가 소유하거나 제3자가 Wysiwyg이 만든 컨텐츠에 제공한 이미지, 애니메이션, 비디오, 오디오, 글꼴, 기타 컨텐츠를 게시할 수 있는 기능을 제공할 수 있습니다. 이 경우 이러한 제3자 컨텐츠를 사용하는 것으로, 이러한 사용 약관의 규정과, 사용된 컨텐츠를 소유하거나 제공한 제3자의 사용 약관/최종 사용자 사용권 계약을 준수해야 하는 책임이 발생합니다. Wysiwyg이 제공하는 모든 응용프로그램의 사용 약관은 아래의 10항에 명시되어 있는 특정 약관을 따라야 합니다.  </li>
            	<li> 제3자 컨텐츠: Wysiwyg은 사용자에게 제공되는 에디터 또는 템플릿에 있는 내용을 포함하여 이 웹사이트에 제3자 소유권이 적용되는 그림, 글꼴, 그래픽 항목과 같은 특정 컨텐츠('제3자 컨텐츠')를 제공할 수 있습니다. 귀하는 Wysiwyg이 언제든지 전적으로 (i) Wysiwyg 웹사이트에서 해당 제3자 컨텐츠를 제거하고 해당 제3자 컨텐츠에 대한 액세스를 비 활성화할 수 있는 권리 또는, (ii) 귀하가 모든 웹사이트에서 또는 Wysiwyg 웹사이트에 만들거나 게시한 기타 웹 플랫폼에서 해당 제3자 컨텐츠('귀하의 Wysiwyg 컨텐츠')를 즉시 제거하도록 요구할 수 있는 권리를 가진다는 조건을 인정하고 이에 동의합니다. 이러한 지시를 따르지 않고 Wysiwyg이 귀하에게 관련 통지를 보낸 시점으로부터 24시간 이내에 귀하의 Wysiwyg 컨텐츠에서 해당 제3자 컨텐츠를 제거하지 않을 경우 Wysiwyg은 Wysiwyg에 대한 일체의 책임 없이 당사의 자유재량으로, 귀하의 Wysiwyg 컨텐츠에 대한 액세스를 비활성화하거나 이러한 컨텐츠를 삭제할 수 있는 권리를 가지며, 귀하는 귀하가 Wysiwyg에 지불한 금액을 일체 돌려받을 수 없습니다.
모든 사항을 분명히 하기 위해 위 조항의 규정이 이 웹사이트에서 사용자들에게 제공된 모든 컨텐츠에 적용되어야 하며, Wysiwyg은 어떤 이유로든 불분명한 사항을 제거해야 한다는 것이 여기에 명시되어 있습니다.  
귀하는 (i) 사용자들이 다운로드할 수 있도록 제3자 컨텐츠를 리버스 엔지니어링, 디컴파일 또는 디스어셈블할 수 없고, (ii) Wysiwyg이 특별히 제공하고 허용한 경우를 제외하고는 제3자 컨텐츠의 전송, 판매 또는 기타 사용을 통해 이러한 컨텐츠의 수정, 복제, 배포, 표시, 재사용 허락, 재전송, 재생, 파생물 생성 등을 할 수 없으며, (iii) 이 웹사이트에 명시되어 있으며 종종 업데이트될 수 있는 제약 조건을 준수하는 방식으로 이러한 제3자 컨텐츠를 사용할 수 있습니다.       </li>
            </ul></p><br/>

			   <h4>제 9조 제3자 서비스를 통한 온라인 공유</h4>
            <p>&nbsp   Wysiwyg은 귀하가 제3자 웹사이트, 블로그 또는 이메일 시스템을 통해 귀하의 작성 컨텐츠 또는 사용자 컨텐츠(아래에 명시)를 공유할 수 있도록 허용합니다. 제3자 서비스를 통해 귀하의 작성 컨텐츠를 공유할 때 귀하는 계속해서 이 계약의 모든 규정을 준수해야 합니다. 또한 귀하는 귀하의 작성 컨텐츠를 공유하는 수단인 모든 서비스의 약관도 준수해야 합니다.</p><br />

			   <h4>제 10조 제3자 서비스</h4>
            <p>&nbsp   귀하는 귀하가 귀하의 Wysiwyg 웹 컨텐츠에서 또는 이를 통해 사용하는 결제 및 전자 상거래 서비스 등의 제3자 서비스와 관련하여 Wysiwyg은 일체의 책임 또는 의무를 지지 않으며, 이러한 제3자 서비스를 사용하는 것은 전적으로 귀하의 책임입니다. 또한 귀하는 이러한 서비스에 대한 기술적 링크 기능(예: 'PayPal' 단추 기능)이 이러한 서비스의 일부로만 제공되지만 이것이 Wysiwyg을 대신한 책임을 발생시키는 것으로 간주되어서는 안 된다는 조건을 인정합니다.</p><br />

			   <h4>제 11조 응용프로그램 (앱)</h4>
            <p> <ul><li> 일반: Wysiwyg은 사용자들에게 이 웹사이트(Wysiwyg에서 제공하는 템플릿의 일부 그리고 Wysiwyg 앱 마켓 >> ADD URL <<('앱 마켓')에서 제공하는 품목의 일부를 포함)를 통해 사용자들이 만든 웹 컨텐츠 또는 이러한 웹 컨텐츠의 일부를 사용할 수 있는 다양한 응용프로그램과 전문 서비스('응용프로그램')를 제공할 수 있습니다.    응용프로그램은 Wysiwyg이 또는 Wysiwyg와 협력 관계를 맺지 않은 제3자가 제공하고 운영할 수 있습니다. 각 응용프로그램의 제공자는 이 웹사이트에서 명확하게 식별되며, 응용프로그램이 템플릿에 포함된 경우 사용자들이 이러한 제공자를 손쉽게 식별할 수 있습니다. 귀하는 Wysiwyg이 아닌 다른 곳에서 제공하는 경우 이러한 응용프로그램에 대해 Wysiwyg은 일체 그 책임을 지지 않는다는 점에 동의합니다.
또한 일부 응용프로그램은 사용자들이 무료로 이용할 수 있지만 일부 응용프로그램 또는 응용프로그램의 특정 기능은 유료로 사용할 수 있습니다. 응용프로그램의 구매 또는 사용은 Wysiwyg 사용자들에게만 허용됩니다. 따라서 Wysiwyg 사용자로 등록하지 않았거나 Wysiwyg 계정이 일시 정지 중인 경우 응용프로그램을 구매하거나 사용할 수 없습니다.
응용프로그램은 Wysiwyg 웹사이트에 제공되는 템플릿의 필수 부분으로 Wysiwyg이 사용자들에게 제공할 수 있습니다. 이러한 경우 해당 템플릿을 사용하는 사용자에게는 Wysiwyg의 판단에 따라, 여기에 제3자 응용프로그램이 포함되어 있고, 이러한 템플릿 사용 시 해당 응용프로그램을 구매하거나 해당 응용프로그램의 제공자가 규정한 사용 약관에 동의해야 할 수 있다는 내용이 통지됩니다.</li>
            	<li> 응용프로그램의 가용성: Wysiwyg은 자유재량으로(법적 계약, 법률, 규정 또는 정책 위반 시를 포함하지만 이에 국한되지 않음) 응용프로그램 (또는 응용프로그램의 기능이나 구성요소)의 제공(가용성)을 영구적 또는 일시적으로 중단할 수 있는 권리를 보유하며, 이를 통지할 의무도 지지 않습니다. 귀하는 이러한 경우 Wysiwyg이 이러한 응용프로그램의 제공 중단에 더하여 Wysiwyg 컨텐츠에서 이러한 응용프로그램을 원격으로 제거할 수 있는 권리를 가진다는 점에 동의합니다. 이 경우 귀하는 데이터 또는 기타 컨텐츠의 손실에 대해 Wysiwyg에 어떠한 클레임도 제기할 수 없습니다.</li>

				<li>응용프로그램 구매 약관. 응용프로그램 구매에 대한 약관은 앱 마켓을 포함하여 Wysiwyg 웹사이트에 제공된 해당 응용프로그램의 제공자(Wysiwyg 또는 제3자)가 결정한 것이어야 합니다('앱 약관'). 응용프로그램을 구매하거나 다운로드하는 것으로 귀하는 해당 응용프로그램의 앱 약관에 구속되며 이에 동의하는 것이 됩니다. 귀하는 해당 앱 약관에 따라 모든 응용프로그램 구매 관련 비용을 전적으로 부담하는 것에 동의합니다. 귀하는 (a) 앱 약관과 (b) 적용되는 법률과 규정이 허용하는 용도로만 응용프로그램을 사용하는 것에 동의합니다.</li>

				<li> 책임 및 의무: 귀하는 Wysiwyg이 제공하는 응용프로그램을 제외하고, 모든 응용프로그램이 있는 그대로 제공되며 Wysiwyg이 해당 응용프로그램의 올바른 기능 또는 가용성에 대해 일체 그 책임을 지지 않는다는 것에 동의합니다. 응용프로그램을 제공하는 조직 또는 사람은 응용프로그램의 가용성, 유지 관리, 버그 수정, 지원(해당 응용프로그램 링크로 제공되는 항목 포함) 그리고, 각 응용프로그램의 올바른 기능에 대해 배타적이고 전적인 책임을 집니다. 귀하는 귀하의 앱 마켓 또는 응용프로그램 사용, 앱 약관의 의무 사항 위반, (Wysiwyg이 입을 수 있는 모든 형태의 손실 또는 손해를 포함하여) 이러한 위반에 따른 결과에 대해 귀하가 전적인 책임을 지며 Wysiwyg은 귀하나 제3자를 대상으로 일체 그 책임을 지지 않는다는 것에 동의합니다. 웹사이트에 달리 명시된 경우를 제외하고, 유료 서비스(아래 정의 참조)를 구매하여 Wysiwyg 컨텐츠를 업그레이드하는 것에는 응용프로그램의 다른 서비스나 업그레이드 구매는 일체 포함되지 않습니다. </li>
				<li>권리의 소유권. 응용프로그램을 제공하는 Wysiwyg 또는 해당 제3자는 응용프로그램에 적용되는 모든 지적재산권을 포함하여(이에 국한되지 않음) 이 앱 마켓과 사용자들에게 제공되는 응용프로그램의 그리고 이에 대한 모든 권리, 자격, 소유권을 보유합니다.</li>
            	
            </ul> </p><br />

			   <h4>제 12조 요금과 결제</h4>
            <p>&nbsp 이 웹사이트에 제공되는 일부 서비스에는 사용 요금이 발생합니다('유료 서비스'). 유료 서비스에 등록하기로 한 경우 귀하는 귀하가 선택한 유료 서비스와 관련하여 이 웹사이트에 명시되어 있는 모든 요금을 지불해야 합니다. Wysiwyg은 언제든지 서비스 요금(가격)을 변경할 수 있는 권리를 가집니다. 귀하는 Wysiwyg에 직접 또는 제3자를 통해 Wysiwyg이 이러한 서비스 등록 시 귀하가 제공한 귀하의 계정과 재무 정보를 확인하는 데 필요한 것으로 간주하는 모든 질문을 할 수 있는 권한을 부여합니다.
내부 계약에 따라, Wysiwyg.com은 유료 서비스에 대해 사용자들로부터 요금을 징수하여 결제 또는 환불을 처리하거나 유료 서비스 요금 징수와 관련하여 필요한 모든 요금 청구 업무를 수행할 수 있는 권리를 가집니다.    
모든 요금에는 세무 기관에서 부과하는 제세금 또는 관세가 제외되며, 귀하는 이러한 모든 제세금 또는 관세를 지불할 의무를 집니다. 귀하는 이 서비스의 사용과 Wysiwyg에 지불한 금액에 적용될 수 있는 모든 세금을 납부하는 것에 동의합니다.
유료 서비스의 사용과 관련된 모든 요금은 이 웹사이트에 정해진 결제 방법을 통해 자동으로 청구됩니다. Wysiwyg이 Wysiwyg 웹사이트의 프리미엄 섹션을 통해 유료 서비스 해지에 관한 사용자의 요청을 받지 못한 경우 귀하는 귀하의 계정이 활성으로 유지되는 한 이 유료 서비스의 사용 여부와 상관없이 이 서비스에 대해 Wysiwyg이 계속 요금을 청구한다는 점을 이해하고 이에 동의합니다.
언제든지 귀하가 은행 또는 신용카드사에 연락하여 지불할 요금의 청구를 거부하거나 달리 거절하는 경우 이 행위는 이 계약에 의거하여 귀하의 의무 위반으로 간주되며, 귀하의 유료 서비스 사용은 자동으로 종료됩니다. 귀하가 해당 유료 서비스에 다시 가입하기 전에는 귀하의 유료 서비스 사용은 재개되지 않습니다.
유료 서비스를 구매하는 사용자는 이러한 서비스에 적용되는 모든 요금을 지불해야 합니다.  모든 요금은 달리 명시된 근거가 있는 경우를 제외하고는 이러한 유료 서비스가 서비스 기간이 끝나기 전에 잠정 중지되었거나 종료되었거나 이전된 경우에도 환불이 불가능합니다. Wysiwyg은 명시적으로 언제든지 서비스 요금과 가격을 변경하거나 수정할 수 있는 권리를 가지며, 이러한 변경 또는 수정 내용은 이 웹사이트에 온라인으로 게시되고, 사용자에게 추가로 통지할 필요 없이 즉시 발효됩니다.  모든 가격/요금의 변경 또는 수정 내용은 아래에 추가로 명시되어 있듯이 해당 서비스의 갱신일이 도래하는 시점에 발효됩니다. 
귀하가 서비스의 방해를 받거나 그로 인한 손해를 입지 않도록 하기 위해 대부분의 서비스는 자동 갱신 옵션을 제공합니다.  자동 갱신 옵션은 원래 서비스 기간과 동일한 갱신 기간으로 적용되는 서비스를 자동으로 갱신합니다. 예를 들어, 원래 서비스 기간이 1년이라면 갱신 기간도 1년이 됩니다.  자동 갱신 옵션의 세부 사항은 서비스 간에 차이가 있지만 자동 갱신 옵션을 제공하는 서비스는 이를 기본 설정으로 간주합니다.  따라서 가입을 취소하지 않는 한 Wysiwyg은 갱신일이 도래하면 적용되는 서비스를 자동으로 갱신하고, Wysiwyg의 당시 요율로 Wysiwyg에 정해 놓은 결제 방법을 통해 요금을 징수하며, 귀하가 이해하고 동의한 이 요율은 원래 서비스 기간의 요율보다 높거나 낮을 수 있습니다. 귀하는 언제든지 자동 갱신 전에 이러한 서비스의 가입을 취소할 수 있습니다.  이러한 경우 서비스는 귀하가 요금을 지불한 해당 기간의 만료 시 종료되며, 귀하는 Wysiwyg에 이 서비스의 종료에 관한 일체의 클레임을 제기할 수 없습니다.   </p><br />

			   <h4>제 13조 컨텐츠의 소유권</h4>
            <p>&nbsp  Wysiwyg은 이 웹사이트에 만들어지거나 업로드된 컨텐츠의 실제 소유자를 확인할 수 있는 방법이 없습니다.</br>
			따라서: <ul>
			<li>무료 사용자가 이 웹사이트에 만들거나 업로드한 컨텐츠(와 Wysiwyg에 요금을 지불하지 않은 컨텐츠)(예: 웹사이트, 웹 페이지, 위젯)의 경우 이러한 컨텐츠의 소유자는 이 웹사이트에 컨텐츠를 만들거나 업로드한 Wysiwyg 계정의 소유자로 등록된 Wysiwyg 사용자로 간주됩니다.</li>
            	<li>Wysiwyg의 웹사이트에 만들어진 웹사이트와 외부 URL(즉, '프리미엄 업그레이드'의 일부로 가져오거나 구매한 도메인 이름)이 들어 있는 웹사이트의 경우 Wysiwyg은 도메인의 소유자로 등록된 사람 또는 조직으로 간주합니다. 모든 사항을 분명하게하기 위해 Wysiwyg에 유료 서비스 요금을 지불한 사람 또는 조직의 신원은 Wysiwyg이 이러한 웹사이트에 또는 이와 관련하여 소유권이나 기타 권리를 생성하는 것으로 간주하면 안 됩니다.
Wysiwyg은 위에서 확인된 이러한 컨텐츠의 소유자가 아닌 이 웹사이트에 만들거나 업로드한 모든 컨텐츠에 관한 정보 또는 세부 사항을 제공할 수 없습니다.     </li></ul>
			</p><br />

			   <h4>제 14조 취소 &환불</h4>
            <p>&nbsp   Wysiwyg 유료 서비스는 선불 조건으로 제공됩니다. Wysiwyg 사용자는 언제든지 유료 서비스의 사용을 중지하도록 결정할 수 있습니다. 이러한 취소는 사용자 자신이 Wysiwyg 웹사이트에서 여기에 게시된 지침에 따라 진행합니다. 유료 서비스 사용의 취소 시간과 날짜는 사용자가 Wysiwyg 웹사이트에서 취소 절차를 완료한 시점의 시간과 날짜입니다.
Wysiwyg은 Wysiwyg의 환불 보장 정책에 의해서만 귀하에게 환불을 합니다. Wysiwyg은 14일의 환불 보장 기간('보장 기간')을 제공합니다. 구매한 유료 서비스에 만족하지 못하여 취소 통지를 보낸 경우 전액 환불을 받으려면 수시로 수정될 수 있는 당사의 환불 보장 정책에 따라 환불 보장 기간 내에 환불 요청을 제출하면 됩니다. Wysiwyg은 환불 보장 기간이 지난 후에는 지불된 요금을 일체 환불하지 않습니다.
귀하는 이 웹사이트에서 또는 이 웹사이트를 통해 (구매한 응용프로그램을 포함하여) 구매한 일부 서비스가 환불 대상이 되지 않을 수 있다는 점에 동의합니다. 구매한 각 서비스 또는 응용프로그램의 약관은 이 웹사이트에 또는 이러한 서비스나 응용프로그램 구매 프로세스의 일부로 또는 구매 프로세스 중에 정해집니다. 모든 유료 서비스를 구매하기 전에 서비스를 취소할 수 있는 수단을 확인하는 것은 귀하의 책임입니다. Wysiwyg은 환불 대상이 아닌 유료 서비스의 지불 요금은 일체 환불하지 않습니다. </p><br />

			<h4>제 15조 지적재산권</h4>
            <p>&nbsp 모든 사용자 컨텐츠(아래에 명시된)를 제외한Wysiwyg 웹사이트의 컨텐츠(위에 명시된)에는 해당 지역과 국제법 협정에 따른 저작권과 그 외 지적재산권이 적용됩니다. Wysiwyg은 이해하고 있는 최대한도로, 해당 저작권 및 기타 지적재산권의 소유자가 사용하도록 허용하고 허락한 컨텐츠만 사용합니다. 이 웹사이트의 컨텐츠는 있는 그대로만 귀하에게 제공되며, 해당 소유자의 사전 서면 동의 없이는 다른 어떠한 용도로도 사용하거나 복사하거나 재생하거나 배포하거나 전송하거나 방송하거나 표시하거나 판매하거나 사용권을 주거나 달리 이용할 수 없습니다(이러한 컨텐츠가 필요한 경우) Wysiwyg은 이 웹사이트와 컨텐츠에 명시적으로 부여되지 않은 모든 권리를 가집니다. 귀하는 상업적 용도로 이 웹사이트를 통해 얻은 제3자의 사용자 컨텐츠의 사용, 복사 또는 배포를 포함하여 여기에 명시적으로 허용되지 않은 컨텐츠의 사용, 복사 또는 배포에 참여하지 않는다는 것에 동의합니다. 귀하는 Wysiwyg 웹사이트의 보안 관련 기능 또는, 컨텐츠의 사용이나 복사를 방지 또는 제한하거나 Wysiwyg 웹사이트 또는 컨텐츠의 사용을 강제로 제한하는 기능을 피해가거나 비활성화하거나 달리 방해하지 않는다는 것에 동의합니다.  </p><br />
			
			<h4>제 16조 사용자 컨텐츠</h4>
            <p>  <ul><li>Wysiwyg 웹사이트는 귀하와 다른 사용자들이 제출한 컨텐츠('사용자 컨텐츠')의 업로드/제출과, 이러한 사용자 컨텐츠의 호스팅, 공유 또는 게시를 허용합니다. 귀하는 이러한 사용자 컨텐츠의 게시 여부와 관계없이 Wysiwyg이 이러한 모든 사용자 컨텐츠에 관한 보호를 보장하지 않는다는 것에 동의합니다.</li>
            	<li>귀하는 모든 사용자 컨텐츠가 이러한 컨텐츠를 업로드하는 사용자의 전적인 책임이라는 것에 동의합니다. Wysiwyg이 아닌 귀하는 귀하가 업로드하거나 게시하거나 전송하거나 달리 이 서비스를 통해 사용할 수 있게 하는 모든 컨텐츠에 대해 전적인 책임을 집니다. Wysiwyg은 이 서비스를 통해 게시된 컨텐츠를 관리/제어하지 않으며 따라서, 이러한 컨텐츠의 정확성, 무결성 또는 품질과, 이러한 컨텐츠의 업로드가 제3자의 권리를 침해하지 않음을 보장하지 않습니다.</li>
            	<li>Wysiwyg은 사용자 컨텐츠에 대한 책임이 없고 이러한 컨텐츠를 검토하지는 않지만 어떤 이유로든 설명이 필요 없이 Wysiwyg의 독자적인 판단으로, 인종 차별적이거나 남에게 피해를 주거나 악용되거나 불법이거나 용인되지 않는 것으로 간주하는 모든 사용자 컨텐츠를 삭제할 수 있는 권리를 가집니다.</li>
            	<li> Wysiwyg은 사용자 컨텐츠에 대한 지적재산권을 주장하지 않으며, 이러한 모든 컨텐츠에는 Wysiwyg 웹사이트의 해당 선택에서 저작권에 대한 사용자 선택에 따라 해당 권리가 부여된 것으로 간주됩니다. 귀하가 Wysiwyg 웹사이트의 공개 액세스 가능 영역에 제출하거나 여기에 포함되도록 설정하는 컨텐츠는 Wysiwyg 웹사이트와 서비스의 공개 액세스 가능 영역에 있는 이러한 컨텐츠를 사용하고 배포하고 재생하고 수정하고 개정하고 공개적으로 실행하고 표시할 수 있는 사용권으로 간주되며, 이러한 사용자 컨텐츠는 다른 웹사이트에서 액세스할 수도 있습니다. 귀하가 제출하거나 Wysiwyg 웹사이트의 다른 사용자들이 편집할 수 있도록 설정하는 컨텐츠의 업로드는 Wysiwyg 웹사이트와 서비스의 공개 액세스 가능 영역에 있는 이러한 컨텐츠를 사용하고 배포하고 재생하고 수정하고 개정하고 공개적으로 실행하고 표시할 수 있는 사용권으로 간주되며, 이러한 컨텐츠는 다른 웹사이트에서 액세스할 수도 있습니다. 이러한 사용권은 해당 사용자 컨텐츠를 제거한 경우(사용자 또는 Wysiwyg이)에만 종료됩니다.</li>
            	<li>사용자 컨텐츠에 관하여 귀하는 추가로, (i) 귀하가 이러한 권리의 소유자가 아니거나 정당한 소유자로부터 이러한 자료를 게시하고 Wysiwyg 또는 그 사용자에게 여기에 명시된 모든 사용권을 부여할 수 있는 권한을 가진 경우가 아니면 저작권이 설정되어 있거나 달리 개인정보보호권과 퍼블리시티권을 포함한 제3자 소유권이 적용되는 자료를 제출하거나, (ii) Wysiwyg 또는 제3자에게 손해를 입힐 수 있는 허위 또는 잘못된 내용을 게시하거나, (iii) 불법, 음란, 비방, 명예 훼손, 협박, 아동 포르노, 괴롭힘, 증오, 인종 또는 윤리적 차별 요소가 있거나 형사상 범죄로 간주되거나 민사 책임을 유발하거나 법률을 위반하거나 약물 또는 알코올의 사용을 권장하거나 달리 부적절한 행위를 권장하는 자료를 제출하거나, (iv) 다른 사람을 사칭할 수 없습니다.
귀하가 다른 사람의 Wysiwyg 서비스 악용 사례를 알게 된 경우 (아래 24항의 연락처 정보에 따라) 또는 이메일 abuse@Wysiwyg.com으로 Wysiwyg에 알려주십시오.
Wysiwyg은 사용자 컨텐츠 또는, 여기에 표현되어 있는 의견, 권고 또는 조언을 일체 지지하지 않으며, 명시적으로 사용자 컨텐츠와 관련된 모든 책임을 일체 거부합니다.</li>
				<li>귀하는 귀하가 Wysiwyg 웹사이트를 사용할 때 다양한 소스의 사용자 컨텐츠에 노출되며, Wysiwyg은 이러한 사용자 컨텐츠의 또는 이와 관련된 정확성, 유용성, 안전성 또는 지적재산권에 대해 그 책임을 지지 않는다는 것에 동의합니다. 또한 귀하는 부정확하거나 유해하거나 부적절하거나 불쾌한 사용자 컨텐츠에 노출될 수 있다는 점을 이해하고 이에 동의하며, 이에 관해 Wysiwyg을 상대로 대응하거나 대응할 수 있는, 적법하거나 정당한 모든 권리 또는 구제 수단을 포기하는 것에 동의하고 이를 포기하며, 해당 사이트의 사용과 관련된 모든 문제에 적용되는 법률이 허용하는 최대 한도로 Wysiwyg, 그 소유자/운영자, 계열사를 보호하고 이에 손해가 발생하지 않도록 유지한다는 것에 동의합니다.</li>
				
            </ul></p><br />


			<h4>제 17조 추가적인 금지용도</h4>
            <p>&nbsp  위의 모든 금지 항목 외에, 귀하는 특히 다음 목적에 고의로 이 서비스를 사용하지 않는다는 것에 동의합니다. <ul>
            	<li>어떤 방식으로든 미성년자에게 위해를 가하는 행위</li>
            	<li>다른 사람 또는 그룹을 대신하거나 다른 사람 또는 그룹과 함께 하는 활동을 잘못 설명하거나 달리 잘못 표현하는 행위</li>
            	<li>법률 또는 계약 또는 수탁 관계에 의거하여 해당 권리가 없는 컨텐츠(예: 고용 관계의 일부로 또는 비공개 계약을 통해 얻거나 공개된 내부 정보, 소유권, 기밀 정보)를 업로드, 게시, 이메일,  전송하거나  달리 사용할 수 있게 하는 행위</li>
            	<li>원치 않는 광고 또는 무단 광고, 판촉 자료, '정크 메일', '스팸', '행운의 편지', 다단계 판매' 또는 기타 모든 형태의 유인 수단을업로드, 게시, 이메일,  전송하거나 달리 사용할 수 있게 하는 행위</li>
				<li>웹사이트 또는 컨텐츠를 홍보하기 위한 '스팸' 행위 또는, CAN-SPAM Act of 2003을 준수하지 않는 컨텐츠 또는 이메일 전송을 포함하여 어떤 식으로든 '스팸' 형태로 연결된 비윤리적인 마케팅, 광고 또는 기타 모든 관행에 참여하는 행위</li>
				<li>컴퓨터 소프트웨어나 하드웨어 또는 통신 장비의 기능을 방해하거나 파괴하거나 제한하도록 설계된 소프트웨어 바이러스, 다른 모든 컴퓨터 코드, 파일 또는 프로그램이 들어 있는 자료를 업로드하거나 게시하거나 이메일로 보내거나 전송하거나 달리 사용할 수 있게 하는 행위</li>
				<li>고의로 또는 우발적으로 적용되는 모든 ICANN 규정 또는 정책을 위반하거나 위반하려고 시도하거나 회피하는 행위
귀하는 귀하 또는 다른 제3자에게 손해를 야기하는 이 서비스의 사용으로 발생하는 모든 클레임으로부터 Wysiwyg을 보호하고 이에 손해가 발생하지 않도록 유지한다는 것에 동의합니다. Wysiwyg은 언제든지 귀하, 귀하의 비즈니스 또는 귀하의 소유자, 경영자, 이사, 관리자, 그 외 주요 단체장, 귀하의 사이트, 이러한 사이트를 포함한 자료를 조사할 수 있는 권리를 가집니다. 이러한 조사는 귀하나 다른 제3자가 아닌, Wysiwyg의 이익만을 위해서 실시됩니다. 이 조사에서 Wysiwyg의 단독 견해로 지역 또는 외국 법률 또는 규정 또는 이러한 사용 약관의 위반을 구성하는 정보, 행위 또는 태만이 밝혀지는 경우 Wysiwyg은 즉시 사이트를 폐쇄하고 이 조치를 귀하에게 알릴 수 있습니다. 귀하는 모든 소송의 원인 또는 이러한 소송에 대해 Wysiwyg을 상대로 대응할 수 있는 클레임을 포기한다는 것에 동의합니다.</li>
				
            </ul> </p><br />

			<h4>제 18조 보안</h4>
			<p>&nbsp 귀하는 귀하의 계정과 컨텐츠에 대한 보안을 유지하는 책임을 지며, 이 계정에서 발생하는 모든 활동과 이 웹사이트와 관련하여 취해지는 다른 모든 조치에 대한 전적인 책임을 집니다. 귀하는 Wysiwyg에 즉시 서면으로 귀하 계정의 무단 사용 또는 그 외의 모든 보안 위반 사례에 대해 알리는 것에 동의합니다. Wysiwyg은 귀하가 이 보안 의무를 준수하지 못하여 발생하는 모든 손해 또는 손상에 대한 책임을 질 수 없으며 지지도 않습니다.
귀하는 어떠한 경우에도 Wysiwyg이 어떤 방식으로든 Wysiwyg 사용자 또는 다른 제3자의 행위 또는 태만의 결과로 발생하는 모든 형태의 손해를 포함하여 이러한 모든 행위 또는 태만에 대해 책임을 지지 않는다는 것을 이해하고 이에 동의합니다. </p> <br/>

			<h4>제 19조 보증 고지 사항 &책임 제한</h4>
			<p>
			 <ul>
            	<li>귀하는 귀하가 Wysiwyg 웹사이트를 사용하는 것이 전적으로 귀하의 책임이라는 것에 동의합니다. 법률이 허용하는 최대 한도로, Wysiwyg, 그 경영자, 이사, 직원, 그 대리인은 이 웹사이트 및 이 웹사이트의 사용과 관련하여 명시적이거나 묵시적인 모든 보증을 거부합니다. Wysiwyg은 Wysiwyg 웹사이트 컨텐츠 또는 Wysiwyg 웹사이트에 링크되어 있는 모든 사이트 컨텐츠의 정확성이나 완전성에 관하여 어떤 보증이나 표현도 하지 않습니다.</li>
            	<li> 어떠한 경우에도 Wysiwyg, 그 경영자, 이사, 직원 또는 그 대리인은 무엇이든 모든 (I) 컨텐츠의 오류, 실수 또는 잘못, (II) 종류와 관계 없이 당사 웹사이트 액세스와 사용에 따른 모든 사람의 신체적 부상 또는 재산상의 손해, (III) 당사의 보안 서버, 모든 개인 정보 또는 여기에 저장된 기타 정보에 대한 모든 무단 액세스/사용, (IV) 당사 웹사이트로 또는 그 반대로 이루어지는 모든 전송의 방해 또는 중지, (IV) 제3자가 당사 웹사이트로 또는 당사 웹사이트를 통해 보낼 수 있는 모든 버그, 바이러스, 트로이 목마 또는 기타 악성 코드, (V) Wysiwyg 웹사이트를 통해 게시되거나 이메일로 보내거나 전송하거나 달리 사용할 수 있게 만들어놓은 컨텐츠를 사용하여 발생한 모든 종류의 손해나 손상, 컨텐츠의 오류 또는 누락 등으로부터 발생하는 직접/간접적, 우발적, 특수한, 징벌적 또는 결과적인 모든 손해에 대해 일체 그 책임을 지지 않습니다. 앞의 책임 제한 조항은 해당 사법 관할 구역에서 법률이 허용하는 최대한도로 적용됩니다.</li>
            	<li>귀하는 Wysiwyg이 사용자 컨텐츠 또는 제3자에 의한 비방, 모욕 또는 불법 행위에 대한 책임을 지지 않으며, 앞의 원인으로 발생하는 모든 손해 또는 손상이 전적으로 귀하의 책임이라는 것을 특히 인정합니다.</li>
            	<li>Wysiwyg은 Wysiwyg 웹사이트나 다른 모든 하이퍼링크 웹사이트를 통해 또는 배너나 기타 광고에 실려 있는 제3자가 홍보하거나 제공한 모든 제품이나 서비스를 보증, 지지 또는 보장하거나 그 책임을 지지 않으며, 귀하와 제품 또는 서비스의 타 제공자 간 거래와 일체 무관하며 이러한 거래를 모니터링하는 책임을 지지 않습니다. 어떤 미디어를 통해서 제공된 것이든 또는 어떤 환경에서 제공된 것이든 제품 또는 서비스를 구매할 때 귀하는 최선의 선택을 하고 합당한 주의를 기울여야 합니다.</li>
				<li> Wysiwyg은 개인 컨텐츠를 호스팅하는 목적으로 이 사이트를 사용하는 것을 권장하지 않으며, 모든 사용자 컨텐츠의 침해와 손상과 관련하여 일체 그 보안 위험에 대한 책임을 지지 않습니다. </li>
				<li>Wysiwyg은 일체 Wysiwyg 웹사이트가 전 세계 모든 지역에서 사용할 수 있고 전 세계 모든 지역에서 사용하기에 적절한 것으로 표현하지 않습니다. 사용이 금지된 사법 관할 구역에 거주하면서 Wysiwyg 웹사이트에 액세스하거나 이 웹사이트를 사용하는 사용자는 자신의 판단으로 사용을 결정하며, 해당 지역 법률을 준수해야 하는 책임을 집니다.</li>
				

            </ul>
			</p> <br/>

			<h4>제 20조 면책</h4>
			<p>&nbsp 귀하는 (i) 귀하의 Wysiwyg 웹사이트 액세스/사용, (ii) 귀하에 의한 이러한 사용 약관의 위반, (iii) 귀하에 의한 모든 저작권, 자산, 사생활보호권을 포함한 제한 없는 제3자 권리의 침해 또는, (iv) 귀하의 사용자 컨텐츠가 유발한 제3자의 손해에 대한 모든 클레임 등이 원인이 되어 발생하는 모든 클레임, 손상, 책임, 손해, 채무, 비용 또는 지출(변호사 수임료를 포함하지만 이에 국한되지 않음)에 대해 Wysiwyg, 그 모회사, 경영자, 이사, 직원, 대리인을 방어 및 보호하고 이에 손해가 발생하지 않도록 유지한다는 것에 동의합니다. 이 방어 및 면책 의무는 이러한 사용 약관과 귀하의 Wysiwyg 웹사이트 사용에 유효합니다. </p> <br/>

			<h4>제 21조 통제 범위를 벗어난 사고</h4>
			<p> &nbsp 어떠한 경우에도 Wysiwyg은 인터넷 실패, 장비 고장, 정전, 파업, 노동쟁의, 폭동, 반란, 소요 사태, 노동력 또는 자재의 부족, 화재, 홍수, 폭풍우, 지진, 폭발, 불가항력, 전쟁, 테러 행위, 우주 전쟁, 정부의 조치, 법원/정부기관/재판소의 명령 또는 제3자의 불이행을 포함하여 제한 없이 Wysiwyg의 합리적인 통제 범위를 벗어난 사고가 원인이거나 이로부터 발생하거나 이와 관련되어 발생하는 직/간접적인 모든 이 웹사이트/서비스 또는 이 웹사이트 정보의 지연 또는 중단에 대해 일체 그 책임을 지지 않습니다. 이 절의 규정은 앞에서 명시한 책임 제한 조항에 대한 추가적인 규정이며 앞의 책임 제한 조항을 제한하거나 수정하는 효력을 갖지 않습니다.</p> <br/>

			<h4>제 22조 양도</h4>
			<p> &nbsp 이러한 사용 약관과 여기에 명시된 모든 권리와 사용권은 귀하가 이전하거나 양도할 수 없지만 Wysiwyg은 아무런 제한이나 책임 없이 양도할 수 있습니다.</p> <br/>

			<h4>제 23조 베타 테스트 경고</h4>
			<p>&nbsp  이 웹사이트는 현재 베타 버전이며 베타 테스트를 받고 있는 중입니다. 귀하는 아직도 이 서비스에 소프트웨어 버그가 들어 있을 수 있고, 서비스의 중단 또는 장애가 발생할 수 있으며, 이 서비스가 원래의 의도 또는 설계대로 작동하지 않을 수 있다는 점을 이해하고 이에 동의합니다. 이 단계에서 귀하가 이 서비스를 사용하는 것은 귀하가 이 서비스 베타 테스트에 참여하는 것을 이해하고 이에 동의함을 표시하는 것입니다.</p> <br/>

			<h4>제 24조 고객 서비스 연락처</h4>
			<p>&nbsp 아래의 옵션을 사용해 당사의 고객지원 센터에 문의하시기 바랍니다:</br>
1. 이메일: support@Wysiwyg.com</br>
2. 전화: 정상 영업 시간(월요일 - 금요일, 오전 9시 - 오후 5시) 02-1111-1234로 전화해주십시오.</br>
3. 우편: Wysiwyg.com Inc. 서울시 광진구 화양동 </p> <br/>

			
                      
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