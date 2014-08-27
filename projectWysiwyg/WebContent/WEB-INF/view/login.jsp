<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html> <!--<![endif]-->  
<head>
    <title>Wysiwyg | Login Page..</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/plugins/font-awesome/css/font-awesome.min.css">

    <!-- CSS Page Style -->    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/pages/page_log_reg_v2.css">    

    <!-- CSS Theme -->    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/themes/default.css" id="style_color">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/custom.css">
</head> 
<script type="text/javascript" src="<%=request.getContextPath()%>/libs/jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		$("#btn").click(function(){			
			$.ajax({
				url: "loginOk.do",
				type: "post",
				dataType: "text",
				data: $("#inForm").serialize(),
				success : function(result){
					if(result == "ok"){
						alert("로그인 되었습니다.");
						location.href="index";
						
					}
					else{
						alert("다시입력해주세요.");
					}
				},
				error : function(err){
					alert("다시입력해주세요");
				}
			});
		});
			
	});
</script>

<body>
<!--=== Content Part ===-->    
<div class="container">
    <!--Reg Block-->
    <div class="reg-block">
        <div class="reg-block-header">
       		<a href="index"><img src="<%=request.getContextPath()%>/img/mainLogo.png" width="71" heigt="26" alt=""></a>
            <h2>로그인</h2>
            <p>Blink가 처음이신가요?<br><a class="color-green" href="registration.do"><h3 style="text-align: center;">회원가입</h3></a></p>
            <p>을 하시면 바로 이용하실 수 있습니다.</p>            
        </div>

		<form id="inForm" method="post">
	        <div class="input-group margin-bottom-20">
	            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
	            <input type="text" class="form-control" placeholder="이메일" name="userMail">
	        </div>
	        <div class="input-group margin-bottom-20">
	            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
	            <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" style="font-family:arial;color:black;" >
	        </div>
        </form>
        <hr>

                                
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <button class="btn-u btn-block" id="btn">로그인</button>
            </div>
        </div>
    </div>
    <!--End Reg Block-->
</div><!--/container-->
<!--=== End Content Part ===-->

<!-- JS Global Compulsory -->           
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/plugins/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/plugins/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<!-- JS Implementing Plugins -->           
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/plugins/countdown/jquery.countdown.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/plugins/backstretch/jquery.backstretch.min.js"></script>
<script type="text/javascript">
    $.backstretch([
      "<%=request.getContextPath()%>/assets/img/bg/5.jpg",
      "<%=request.getContextPath()%>/assets/img/bg/4.jpg",
      ], {
        fade: 1000,
        duration: 7000
    });
</script>
<!-- JS Page Level -->           
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/app.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
    });
</script>
<!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/assets/plugins/respond.js"></script>
    <script src="<%=request.getContextPath()%>/assets/plugins/html5shiv.js"></script>
<![endif]-->

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