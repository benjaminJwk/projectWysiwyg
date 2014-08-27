<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html> <!--<![endif]-->  
<script type="text/javascript" src="<%=request.getContextPath()%>/libs/jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		var bno=0;
		$("#closeBtn").click(function(){
			location.href=location.href;
		})
		$("#writeForm").hide();
		$(document).on("click",".bb",function(){
			if(bno!=0)
			{
				var ss="#bb"+bno;
				$(ss).slideToggle("fast");
			}
			var s= "#bb"+$(this).attr("name");
			$(s).slideToggle("fast");
			bno=$(this).attr("name");
		});
		
		$("#wBtn").click(function(){
			alert("멍미?")
			 location.href="makeProject.do";
		});
	
		$(document).on("click","[id^=dBtn]",function(){
			var s=$(this).attr("id").substr(4,$(this).attr("id").length-4);
			alert(s);
			
			$.ajax({
				url: "showDelete.do",
				type: "post",
				dataType: "text",
				data: {pId: s, pName: $(this).attr("name")}, 
				success: function(result){
					if(result=="success")
					{
						alert("게시글 삭제 완료");
						location.href=location.href;
					}
					else
						alert("실패");
				},
				error: function(err){
				}
			});
			
		});
		$.ajax({
			url: "showSelect.do",
			type: "post",
			dataType: "json",
			success : function(result){
				var table ="";
				$("#boardTable tr:gt(0)").remove();
				
				$(result.list).each(function(index,item){
					
					alert(item.pageId)
					  table += "<tr>";
					  table += "<td>";
					  table += item.pageId;
					  table += "</td>";
					  table += "<td>";
				 	  table += "<a href='makePage.do?pageName="+ item.pageName +"' style='cursor: pointer' name='"+item.pageId+"' class='bb' id='bbb'"+item.pageName+"' >" + item.pageName+"</a>"
				 	  table += "</td>";
				 	  table += "<td>";
					  table += item.templteName;
					  table += "</td>";
					  table += "<td>";
					  table += "<button id='dBtn"+item.pageId+"' name='"+item.pageName+"'>삭제</button>";
					  table += "</td>";
				 	  table += "</tr>";
					});
				  $("#boardTable tr:eq(0)").after(table);
				
			},
			error : function(err){
				alert(err);
			}
		});	
	});
</script>
<head>
    <title>Wysiwyg | blink</title>

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
    
    <!-- CSS Theme -->    
    <link rel="stylesheet" href="assets/css/themes/default.css" id="style_color">
    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">
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
                    <li><a href="login.do">Login</a></li>   
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
                    <a class="navbar-brand" href="indexPage.html">
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
	
    
            <!-- Begin Content -->
            <div class="col-md-9"  style="padding-top: 100px; padding-left: 20%;">
                <!--Basic Table Option (Spacing)-->
                <div class="panel panel-red margin-bottom-40">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-user"></i> 템플릿목록 </h3>
                    </div>
                    <div class="panel-body" >
                        <table class="table" style="text-align: center;" id="boardTable" >
                            <thead>
                                <tr>
                                    <th class="hidden-sm" width="10" style="text-align: center;">#</th>
                                    <th class="hidden-sm" width="10" style="text-align: center;">pageName</th>
                                    <th class="hidden-sm" width="10" style="text-align: center;">template</th>
                                    <th class="hidden-sm" width="10" style="text-align: center;">delete</th>
                                </tr>
                            </thead>
                            
                            <tbody>
                            </tbody>
                        </table>
                         <div  style="text-align: right;padding-right: 50px" >
                        	<button class="btn-u" id="wBtn">New Page</button>
                        </div>
                    </div>                      
                </div>
                <!--End Basic Table-->
            </div>
            <!-- End Content -->    
    </div><!--/container-->
                    <!-- write -->
			<div class="modal-content" id="writeForm">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">Write Form</h4>
				</div>
				<div class="modal-body">
					<form method="post" id="inForm" class="sky-form">
						<header>Form</header>
						<fieldset>							
							<input type="text" value="1" style="display: none;" id="boardId">
						</fieldset>
						
					</form>
				</div>
			</div>

			<!-- end write -->
    <!--=== End Content Part ===-->
</div><!--/End Wrapepr-->

<!-- JS Global Compulsory -->           
<script type="text/javascript" src="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.js"></script> 
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/forms/contact.js"></script>
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