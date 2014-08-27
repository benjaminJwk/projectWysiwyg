<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html> <!--<![endif]-->  
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
			$(".col-md-9").hide();
			$("#sideb").hide();
			$("#writeForm").show();
		})
		$("#writeButton").click(function(){
			$.ajax({
				url: "boardWrite.do",
				type: "post",
				dataType: "text",
				data : $("#inForm").serialize(),
				success : function(result){
					if(result == "success")
					{
						alert("게시글 등록 완료");	
					}
					else
						alert("등록 실패");
					location.href=location.href;
				},
				error : function(err){
					alert(err);
				}
			});
		});
		$(document).on("click","#dBtn",function(){
			$.ajax({
				url: "boardDelete.do",
				type: "post",
				dataType: "text",
				data: { bId: $("#boardId").attr("value"), bNo: bno}, 
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
					alert(err);
				}
			});
		});
		
		$.ajax({
			url: "boardSelect.do",
			type: "post",
			dataType: "json",
			data: "bId="+$("#boardId").attr("value"),
			success : function(result){
				var table ="";
				$("#boardTable tr:gt(0)").remove();
				
				$(result.list).each(function(index,item){
					
					  table += "<tr>";
					  table += "<td>"+item.boardNo+"</td>";
				 	  table += "<td>"+item.boardWriter+"</td>";
				 	  table += "<td>";
				 	  table += "<a style='cursor: pointer' name='"+item.boardNo+"' class='bb' id='bbb'"+item.boardNo+"'>" + item.boardSubject +"</a>"
				 	  table += "<div style='display: none;' id='bb"+item.boardNo+"'>"; 
				 	  table += item.boardContents + "<br>";
				 	  table += "<input type='text' id='cText"+item.boardNo+"'><button id='cBtn"+item.boardNo+"'>comment</button><br>"
				 	  table += "<hr>";
				 	  for(var i=0; i<item.comments.length; i++)
				      {
				 		 table+="#"+item.comments[i].commentNo + " "+item.comments[i].commentWriter + "<br>";
				 		 table+="내용 : "+item.comments[i].commentContents+"<br>";
				      }
				 	  table += "<hr>";
				 	  table += "<button class='btn-u' id='dBtn'>delete</button>";
				 	  table += "</div>";
				 	  table += "</td>";
					  table += "<td>"+item.boardDate+"</td>";
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
    
        <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">공지사항</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index">홈</a></li>
                <li>고객지원</li>
				<li class="active">공지사항</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!-- 시작하기 -->
    
    <div class="container content">
			<div class="row" id="sideb">
				<!-- Begin Sidebar Menu -->
				<div class="col-md-3"  style="padding-top: 30px; padding-bottom:300px">
					<ul class="list-group sidebar-nav-v1" id="sidebar-nav">
					
						<li class="list-group-item">
							<a  href="noticeBoardTable.do">공지사항</a>
						</li>
												
						<li class="list-group-item">
							<a href="freeBoardTable.do">자유게시판</a>
						</li>
					
						<li class="list-group-item ">
							<a   href="faq.do">FAQ</a>					
						</li>
						
						<li class="list-group-item ">
							<a  href="qnaBoardTable.do">QNA</a>					
						</li>
						
						
						</ul>
				</div>
	
    
            <!-- Begin Content -->
            <div class="col-md-9"  style="padding-top: 30px;">
                <!--Basic Table Option (Spacing)-->
                <div class="panel margin-bottom-40">
                    <div class="panel-heading">
                        <h3><i class="fa fa-user"></i> 공지사항 </h3>
                    </div>
                    <div class="panel-body" >
                        <table class="table table-bordered" " id="boardTable" >
                            <thead>
                                <tr>
                                    <th class="hidden-sm" width="20" ;>#</th>
                                    <th width="20">작성자</th>
                                    <th width="200">제목</th>
                                    <th width="80">게시일</th>
                                </tr>
                            </thead>
                            
                            <tbody>
                            </tbody>
                        </table>
                        <div  style="text-align: right;padding-right: 50px; margin-top:30px;'" >
                        	<button class="btn-u" id="wBtn"><i class="fa fa-pencil"></i> 글쓰기</button>
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
					<h4 class="modal-title" id="myModalLabel">게시글 작성</h4>
				</div>
				<div class="modal-body">
					<form method="post" id="inForm" class="sky-form">
						<header>공지사항</header>
						<fieldset>
							<section>
								<label class="label">제목</label> <label class="input">
									<i class="icon-append fa fa-tag"></i> <input type="text"
									name="boardSubject">
								</label>
							</section>
							<input type="text" value="0" style="display: none;" id="boardId">
							<section>
								<label class="label">내용</label> <label class="textarea">
									<i class="icon-append fa fa-comment"></i> <textarea rows="10"
										name="boardContents"></textarea>
								</label>
							</section>
						</fieldset>
						<footer style="text-align: center;">
							<button id="writeButton">등록</button>
						</footer>
					</form>
				</div>
				<div style="text-align: center;">
					<button type="button" id="closeBtn" class="btn-u btn-u-default">돌아가기</button>
				</div>
			</div>

			<!-- end write -->
    <!--=== End Content Part ===-->
        
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