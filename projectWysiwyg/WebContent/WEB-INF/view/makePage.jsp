<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
    <title>Wysiwyg | Welcome...</title>

    <!-- Meta -->
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
	 <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">

</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/libs/jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/libs/jquery/jquery-ui.min.js"></script>



<script type="text/javascript">


	$(document).ready(function() {
		$("#addTextBox1").hide();
		$("#addTextBox").hover(function() {
			$("#addTextBox1").show();
		}, function() {
			$("#addTextBox1").hide();
		});
	});

	$(document).ready(function() {
		$("#btnAdd1").hide();
		$("#btnAdd").hover(function() {
			$("#btnAdd1").show();
		}, function() {
			$("#btnAdd1").hide();
		});
	});

	$(document).ready(function() {
		$("#addTextArea1").hide();
		$("#addTextArea").hover(function() {
			$("#addTextArea1").show();
		}, function() {
			$("#addTextArea1").hide();
		});
	});

	$(document).ready(function() {
		$("#addRadio1").hide();
		$("#addRadio").hover(function() {
			$("#addRadio1").show();
		}, function() {
			$("#addRadio1").hide();
		});
	});

	$(document).ready(function() {
		$("#addSelect1").hide();
		$("#addSelect").hover(function() {
			$("#addSelect1").show();
		}, function() {
			$("#addSelect1").hide();
		});
	});

	$(document).ready(function() {
		$("#theme1").hide();
		$("#theme").hover(function() {
			$("#theme1").show();
		}, function() {
			$("#theme1").hide();
		});
	});

	$(document).ready(function() {
		$("#addText1").hide();
		$("#addText").hover(function() {
			$("#addText1").show();
		}, function() {
			$("#addText1").hide();
		});
	});

	$(document).ready(function() {
		$("#bgChange1").hide();
		$("#bgChange").hover(function() {
			$("#bgChange1").show();
		}, function() {
			$("#bgChange1").hide();
		});
	});

	$(document).ready(function() {
		$("#addImage1").hide();
		$("#addImage").hover(function() {
			$("#addImage1").show();
		}, function() {
			$("#addImage1").hide();
		});
	});

	$(document).ready(function() {
		$("#addCheckBox1").hide();
		$("#addCheckBox").hover(function() {
			$("#addCheckBox1").show();
		}, function() {
			$("#addCheckBox1").hide();
		});
	});

	$(document).ready(function() {
		$("#addBoard1").hide();
		$("#addBoard").hover(function() {
			$("#addBoard1").show();
		}, function() {
			$("#addBoard1").hide();
		});
	});

	$(document).ready(function() {
		$("#addMenu1").hide();
		$("#addMenu").hover(function() {
			$("#addMenu1").show();
		}, function() {
			$("#addMenu1").hide();
		});
	});

	$(document).ready(function() {
		$("#save1").hide();
		$("#save").hover(function() {
			$("#save1").show();
		}, function() {
			$("#save1").hide();
		});
	});

	$(document).ready(function() {
		$("#registration1").hide();
		$("#registration").hover(function() {
			$("#registration1").show();
		}, function() {
			$("#registration1").hide();
		});
	});

	$(function() {
		var btnId = 0;
		var tbId=0;
		var seId=0;
		var cbId=0;
		var taId=0;
		var rbId=0;
		var spId = 0;
		var imgId = 0;
		var target;
		var g_CurrFileName;
		var rClick = 0;
		var theme = "0";
		var ex;
		var ey;
		if ("<%=session.getAttribute("id")%>" != "null")
   		{
   			$("#loginBtn").html("<a href='logout.do'>Logout</a></li>");
   		}
		$(document).bind("contextmenu",function(e){
			return false;
		});
		$("#rightMenu").hide();
		
		var ssss="";
		$("#modifyModalText").keydown(function(){ 
			var text = $("#modifyModalText").val().replace(/\n/g,"<br>"); 
			ssss = text; 
		}); 
		
		$("#modify").click(function(){
			s = target.html();
			$("#modifyModalText").val(s);
			$("#rightMenu").hide();
		});
		$("#modifySpan").click(function(){
			target.html(ssss);
			
			$("#rightMenu").hide();
			$("#modifyModalText").val("");
		})
		
		$("#delete").click(function(){
			alert("삭제되었습니다.");
			target.remove();
			$("#rightMenu").hide();
		});
		$("#link").click(function(){
			var s = prompt("url을 입력하세요");
			var ss = target.html();
			target.html("<a href='"+s+"'>"+ss+"</a>");
			alert("링크가 걸렸습니다.");
			$("#rightMenu").hide();
		});
		//
		$(document).mousemove(function(e){
			ey = e.pageY;
		})
		//
		saveHtml=$("iframe").contents().find("#menu").html();
		$("#Inbtn").click(function(){
			
			var hstr="";
			var ul="";
			var tval="";
			g_CurrFileName = top.iframe.document.URL.substring(top.iframe.document.URL.lastIndexOf("/") + 1, top.iframe.document.URL.lastIndexOf("/") + 20);
			
			hstr=$("iframe").contents().find("#menu").html();
			
			tval=$("#menuName").val();
			
			ul=hstr;
			ul += "<li><a href="+tval+".html>"+tval+"</a></li>"
			saveHtml=$("iframe").contents().find("#menu").html(ul);
			
			
			$.ajax({
				url: "savePage2.do",
				type: "post",
				dataType: "text",
				data : {pName:"<%=request.getParameter("pageName")%>" , pageName: $('#menuName').val(), pageContents: $("iframe").contents().find("#menu").html(), pageHeader: $("iframe").contents().find("head").html()},
				success : function(result){
					
					alert("생성완료");
				},
				error : function(err){
					alert("err");
				}
			});
		});
		$("iframe").load(function(){//아이프레임 내부 이벤트주기
			
			$.ajax({
				url: "boardSelect.do",
				type: "post",
				dataType: "json",
				data: "bId="+$("iframe").contents().find("#boardId").attr("value"),
				success : function(result){
					
					var table ="";
					$("iframe").contents().find("#boardTable tr:gt(0)").remove();
					
					$(result.list).each(function(index,item){
						  table += "<tr>";
						  table += "<td>"+item.boardNo+"</td>";
					 	  table += "<td>"+item.boardWriter+"</td>";
					 	  table += "<td>";
					 	  table += item.boardContents
					 	  table += "</td>";
						  table += "<td>"+item.boardDate+"</td>";
						  table += "</tr>";
						});
					  $("iframe").contents().find("#boardTable tr:eq(0)").after(table);
					
				},
				error : function(err){
				}
			});	
			
			g_CurrFileName = (this.contentDocument).URL.substring((this.contentDocument).URL.lastIndexOf("/") + 1, (this.contentDocument).URL.lastIndexOf("/") + 20);
			$("iframe").contents().find("#menu").html(saveHtml);
			if(theme=="0")
			{
				theme=$("iframe").contents().find("#styleCss").attr("href").substr(9,1);
			}
			else
			{
				$("iframe").contents().find("#styleCss").attr("href","css/style"+theme+".css");
			}
			
			// 오른쪽 버튼 클릭시 기존 메뉴창 안뜨게
			$(this.contentDocument).bind("contextmenu",function(e){
				return false;
			})
			// 내가 설정한 메뉴창이 뜨게
			$(this.contentDocument).on("mousedown",function(e){
				if(e.which == 1)
				{
					if(rClick==1)
					{
						rClick=0;
						$("#rightMenu").hide();	
						target.css("border","");
					}
					target = $(e.target);
					
					if(target.get(0).tagName == "IMG")
					{
						target = target.parent();
					}
					{
						target.css("border","red solid 5px");
						target.draggable({
							start: function(){
								$(this).css("border","red solid 5px");
							},
							stop: function(){
								$(this).css("border","");
								
								
							}
						});
						target.resizable({
							autoHide: true,
							start: function(){
								$(this).css("border","red solid 5px");
							},
							stop: function(){
								$(this).css("border","");
								$(this).resizable("destroy");						
							}
						
						});
					}
					
				}
				if(e.which == 3)
				{
					if(rClick==1)
					{
						rClick=0;
						$("#rightMenu").hide();	
						target.css("border","");
					}
					target = $(e.target);
					$("#rightMenu").css("left",e.clientX+280).css("top",e.clientY).show();
					//$("#rightMenu").css("position","absolute").css("left",e.pageX+280).css("top",e.pageY).show();
					
					target.css("border","red solid 5px");
					rClick=1;
				}
				else
				{
					rclick=0;
					$("#rightMenu").hide();
					target.css("border","");
				}
			});
			$(this.contentDocument).on("mouseup",function(e){
				if(rClick==0)
					target.css("border","");
				
			})
		});
		
		$("button[id^='insertBtn']").click(function(){
			
			btnId=btnId+1;
			
			$("iframe").contents().find("body").prepend("<div id='btnDiv"+btnId+"' class='btnDi' ><button style='width:100%;height:100%' class='"+$(this).attr("class")+"' id='"+btnId+"' >새로운버튼</button></div>");
			$("iframe").contents().find("#btnDiv"+btnId).css("position","absolute").css("z-index",1);
			$("iframe").contents().find("#btnDiv"+btnId).draggable({
				/*	
				start: function(e,ui){
					$(this).css("position","absolute");
				}
					*/
			});
			$("iframe").contents().find("#btnDiv"+btnId).resizable({
					minWidth : 38,
					/*
					start: function(e,ui){
						$(this).css("position","absolute");
					},
					*/
					resize: function(e, ui){
						var size = $(this).attr("id").length;
						size = size-6;
						var s = $(this).attr("id").substr(6,size);
						$("iframe").contents().find("#"+s).css({"width":ui.size.width-12,"height":ui.size.height});						
						
					}
			});
			
		});
		
		$("#inSelect").click(function(){
			alert("클릭!!")
			seId=seId+1;
			
			$("iframe").contents().find("body").prepend("<div id='seDiv"+seId+"' class='seDi' style='width:10%;height:10%'><select id='"+seId+"' style='width:50%;height:50%'></select></div>");
			$("iframe").contents().find("#seDiv"+seId).css("position","absolute").css("z-index",1);
			$("iframe").contents().find("#seDiv"+seId).draggable({
				/*	
				start: function(e,ui){
					$(this).css("position","absolute");
				}
					*/
			});
			$("iframe").contents().find("#seDiv"+seId).resizable({
					minWidth : 38,
					/*
					start: function(e,ui){
						$(this).css("position","absolute");
					},
					*/
					resize: function(e, ui){
						var size = $(this).attr("id").length;
						size = size-6;
						var s = $(this).attr("id").substr(6,size);
						$("iframe").contents().find("#"+s).css({"width":ui.size.width-12,"height":ui.size.height});						
						
					}
			});
		});
		
		$("#inCb").click(function(){
			alert("클릭!!")
			cbId=cbId+1;
			
			$("iframe").contents().find("body").prepend("<div id='cbDiv"+cbId+"' class='cbDi' style='width:10%;height:10%'><input type='checkbox' id='"+cbId+"' style='width:100%;height:50%'></text></div>");
			$("iframe").contents().find("#cbDiv"+cbId).css("position","absolute").css("z-index",3);
			$("iframe").contents().find("#cbDiv"+cbId).draggable({
				/*	
				start: function(e,ui){
					$(this).css("position","absolute");
				}
					*/
			});
			$("iframe").contents().find("#cbDiv"+cbId).resizable({
					minWidth : 38,
					/*
					start: function(e,ui){
						$(this).css("position","absolute");
					},
					*/
					resize: function(e, ui){
						var size = $(this).attr("id").length;
						size = size-6;
						var s = $(this).attr("id").substr(6,size);
						$("iframe").contents().find("#"+s).css({"width":ui.size.width-12,"height":ui.size.height});						
						
					}
			});
		});
		
		$("#intextArea").click(function(){
			alert("클릭!!")
			taId=taId+1;
			
			$("iframe").contents().find("body").prepend("<div id='taDiv"+taId+"' class='taDi' style='width:50%;height:20%'><textarea id='"+taId+"' ></textarea></div>");
			$("iframe").contents().find("#taDiv"+taId).css("position","absolute").css("z-index",1);
			$("iframe").contents().find("#taDiv"+taId).draggable({
				/*	
				start: function(e,ui){
					$(this).css("position","absolute");
				}
					*/
			});
			$("iframe").contents().find("#taDiv"+taId).resizable({
					minWidth : 38,
					/*
					start: function(e,ui){
						$(this).css("position","absolute");
					},
					*/
					resize: function(e, ui){
						var size = $(this).attr("id").length;
						size = size-6;
						var s = $(this).attr("id").substr(6,size);
						$("iframe").contents().find("#"+s).css({"width":ui.size.width-12,"height":ui.size.height});						
						
					}
			});
		});
		$("#inRadio").click(function(){
			alert("클릭!!")
			rbId=rbId+1;
			
			$("iframe").contents().find("body").prepend("<div id='rbDiv"+rbId+"' class='rbDi'style='width:10%;height:10%' ><input type='radio' id='"+rbId+"' id='"+rbId+"' style='width:100%;height:50%'></input></div>");
			$("iframe").contents().find("#rbDiv"+rbId).css("position","absolute").css("z-index",1);
			$("iframe").contents().find("#rbDiv"+rbId).draggable({
				/*	
				start: function(e,ui){
					$(this).css("position","absolute");
				}
					*/
			});
			$("iframe").contents().find("#rbDiv"+rbId).resizable({
					minWidth : 38,
					/*
					start: function(e,ui){
						$(this).css("position","absolute");
					},
					*/
					resize: function(e, ui){
						var size = $(this).attr("id").length;
						size = size-6;
						var s = $(this).attr("id").substr(6,size);
						$("iframe").contents().find("#"+s).css({"width":ui.size.width-12,"height":ui.size.height});							
					}
			});
		});
		
		
		$("#intextBox").click(function(){
			alert("111클릭!!")
			tbId=tbId+1;
			
			$("iframe").contents().find("body").prepend("<div id='tbDiv"+tbId+"' class='tbDi' style='width:10%;height:10%' ><input type='text' id='"+tbId+"' id='"+tbId+"' style='width:100%;height:50%'></input></div>");
			$("iframe").contents().find("#tbDiv"+tbId).css("position","absolute").css("z-index",1);
			$("iframe").contents().find("#tbDiv"+tbId).draggable({
				/*	
				start: function(e,ui){
					$(this).css("position","absolute");
				}
					*/
			});
			$("iframe").contents().find("#tbDiv"+tbId).resizable({
					minWidth : 38,
					/*
					start: function(e,ui){
						$(this).css("position","absolute");
					},
					*/
					resize: function(e, ui){
						var size = $(this).attr("id").length;
						size = size-6;
						var s = $(this).attr("id").substr(6,size);
						$("iframe").contents().find("#"+s).css({"width":ui.size.width-12,"height":ui.size.height});						
						
					}
			});
		});

		var sss;
		$("#modalText").keydown(function(){ 
			var text = $("#modalText").val().replace(/\n/g,"<br>"); 
			sss = text; 
		}); 
		$("#insertSpan").click(function(){
			spId=spId+1;
			$("iframe").contents().find("body").prepend("<div ids='d"+spId+"' style='position:absolute;width:300px;height=300px;'>"+sss+"</div>");
			$("iframe").contents().find("#s"+spId).css("position","absolute").css("z-index",1);
			$("iframe").contents().find("#s"+spId).draggable({
				
			});
			$("iframe").contents().find("#s"+spId).resizable({
				start: function(e,ui){
				}
			});
			sss="";
			$("#modalText").val("");
		})
	
		
		<%session.setAttribute("page", request.getParameter("pageName"));%>
		$("#insertImg").click(function(){
			var formData = new FormData();
			formData.append("file",file.files[0]);
			
			$.ajax({
				url: "uploadImg.do",
				type: "post",
				dataType: "json",
				data : formData,
				processData: false,
				contentType: false,
				success : function(result){
					imgId = imgId+1;
					$("iframe").contents().find("body").prepend("<div style='width:50px; height:100px' id='idiv"+imgId+"'><img style='width:100%;height:100%' id='i"+imgId+"' src='saveImg/"+result.fName+"' ></div>");
					$("iframe").contents().find("#idiv"+imgId).css("position","absolute").css("z-index",1);
					$("iframe").contents().find("#idiv"+imgId).draggable({
						/*
						start: function(e,ui){
							$(this).css("position","absolute");
						}
						*/
					});
					$("iframe").contents().find("#idiv"+imgId).resizable({
						start: function(e,ui){
							/*
							$(this).css("position","absolute");
							*/
						}
					});
				},
				error : function(err){
					alert("adsfsafasd"+err);
				}
			});
		});
		$("[id^='changeTheme']").hover(function(){
			var s = $(this).attr("id").substr(11,1);
			theme = s;
			$("iframe").contents().find("#styleCss").attr("href","css/style"+s+".css");
		})
		
		$("#sizeUp").click(function(){
			var s = target.css("font-size").length-2;
			s = target.css("font-size").substr(0,s);
			var i = parseInt(s) + 2;
			target.css("font-size",i);
		});
		
		$("#sizeDown").click(function(){
			var s = target.css("font-size").length-2;
			s = target.css("font-size").substr(0,s);
			var i = parseInt(s) - 2;
			target.css("font-size",i);
		});
		
		$("[id^=mfont]").hover(function(){
			var s = $(this).text();
			target.css("font-family",s);
		});
		$("[id^=mfont]").click(function(){
			$("#rightMenu").hide();
		});
		$("[id^=mAlign]").click(function(){
			var s = $(this).text();
			target.css("text-align",s);
		});
		$("[id^=mColor]").click(function(){
			var s = $(this).text();
			target.css("color",s);
			target.css("border","");
			$("#rightMenu").hide();
		})
		$("[id^=mBack]").click(function(){
			var s = $(this).text();
			target.css("background-color",s);
			target.css("border","");
			$("#rightMenu").hide();
		})
		$("#changeBg").click(function(){
			var formData = new FormData();
			formData.append("file",file2.files[0]);
			
			$.ajax({
				url: "changeBg.do",
				type: "post",
				dataType: "json",
				data : formData,
				processData: false,
				contentType: false,
				success : function(result){
					
					$("iframe").contents().find("body").css("background-image","url('<%=request.getContextPath()%>/saveImg/"+result.fName+"')");
					$("iframe").contents().find("body").css("background-repeat","no-repeat");
					
				},
				error : function(err){
					alert("adsfsafasd"+err);
				}
			});
		});
		$("#insertPage").click(function(){
			var pn = prompt("페이지 이름");
			var fn = prompt("파일 이름");
			
		});
		$("#savePage").click(function(){
			g_CurrFileName = top.iframe.document.URL.substring(top.iframe.document.URL.lastIndexOf("/") + 1, top.iframe.document.URL.lastIndexOf("/") + 20);
			
			$("iframe").contents().find("#maxDiv").attr("value",spId);
			$("iframe").contents().find("#maxImg").attr("value",imgId);
			$("iframe").contents().find("#maxBtn").attr("value",btnId);
			$.ajax({
				url: "savePage.do",
				type: "post",
				dataType: "text",
				data : {pName:"<%=request.getParameter("pageName")%>" , pageName: g_CurrFileName, pageContents: $("iframe").contents().find("html").html()},
				success : function(result){
					
					alert("저장완료")
				},
				error : function(err){
					alert("err");
				}
			});
		});
		$("#createBoard").click(function(){
			$.ajax({
				url:"createBoard.do",
				type: "post",
				dataType:"text",
				success:function(result){
					
					
					var s = "<div class='col-md-9' style='position:absolute; z-index=2'>";
					s += "<div class='panel panel-red margin-bottom-40'>"
					s += "<h3 class='panel-title'>공지사항</h3>"
					s += "<table class='table' style='text-align: center;' id='boardTable'>"
					s += "<thead>"
					s += "<tr><th class='hidden-sm' width='20'>#</th>"
					s += "<th width='20'>작성자</th><th width='200'>내용</th><th width='80'>게시일</th></tr></thead>"
					s += "<tbody></tbody></table>"
					s += "<div style='text-align: right; padding-right: 50px'>"
					s += "<input id='boardId' style='display:none' value='"+result+"'>"
					s += "<input type='text' id='writerBox' style='float:left; width:100px;'>";
					s += "<input type='text' id='contentsBox' style='float:left; width:400px;'>";
					s += "<button class='btn-u' id='wBtn'>Write</button></div></div>"
					s += "</div>";
					$("iframe").contents().find("body").prepend(s);
				}
				
			})
			
		});
		$("#makeUrl").click(function(){
			var userUrl = prompt("/projectWysiwyg/home/cafe/########");
			$.ajax({
				url:"makeUrl.do",
				type:"post",
				dataType:"text",
				data:{url:userUrl,pageName:"${param.pageName}"},
				success:function(result){
					alert("성공");
				},
				error:function(err){
					alert("실패");
				}
			})
		})
		
	});
</script>
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
    
    <div class="row" style="position:fixed">
		<div class="col-md-3">
			<ul class="list-group sidebar-nav-v1" id="sidebar-nav">
			
				<li class="list-unstyled" id="theme">
					<button class="btn-u btn-brd rounded-2x btn-u-light-green" type="button">
						<a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-changeTheme"> 
							<i class="fa fa-picture-o"	style="float: left;"></i>
								<div id="theme1">&nbsp;테마변경</div>
						</a>
					</button>
					<ul id="collapse-changeTheme" class="collapse" style="width: 160px;">
						<li><a id="changeTheme1">테마1</a></li>
						<li><a id="changeTheme2">테마2</a></li>
						<li><a id="changeTheme3">테마3</a></li>
					</ul>
				</li>
				
				<li class="list-unstyled" id="btnAdd">
					<button class="btn-u btn-brd rounded-2x btn-u-light-green" type="button">
						<a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-insertBtn">
							<i class="fa fa-tasks"	style="float: left;"></i>
								<div id="btnAdd1">&nbsp;버튼추가</div>
						</a>
					</button>
					<ul id="collapse-insertBtn" class="collapse" style="width: 160px;">
						<li><button id="insertBtn" class="btn-u">버튼01</button>
							<button id="insertBtn2" class="btn-u btn-u-blue">버튼02</button>
							<button id="insertBtn3" class="btn-u btn-u-yellow">버튼03</button>
							<button id="insertBtn3" class="btn-u btn-u-red">버튼04</button></li>
						<li><button id="insertBtn" class="btn-u btn-u-orange">버튼05</button>
							<button id="insertBtn2" class="btn-u btn-u-sea">버튼06</button>
							<button id="insertBtn3" class="btn-u btn-u-dark">버튼07</button>
							<button id="insertBtn3" class="btn-u btn-u-default">버튼08</button>
						</li>
						<li><button id="insertBtn" class="btn-u btn-u-purple">버튼09</button>
							<button id="insertBtn2" class="btn-u btn-u-aqua">버튼10</button>
							<button id="insertBtn3" class="btn-u btn-u-brown">버튼11</button>
							<button id="insertBtn3" class="btn-u btn-u-light-green">버튼12</button>
						</li>
					</ul>
				</li>
				<li class="list-unstyled" id="addText">
					<button class="btn-u btn-brd rounded-2x btn-u-light-green"
						type="button">
						<a data-toggle="modal" data-target="#myModal"
							href="#collapse-insertSpan"> <i
							class="glyphicon glyphicon-text-width" style="float: left;"></i>
							<div id="addText1">&nbsp;글추가</div></a>
					</button>
				</li>
				<li class="list-unstyled" id="addTextBox">
					<button class="btn-u btn-brd rounded-2x btn-u-light-green" type="button">
						<a id="intextBox">
							<i class="fa fa-file-word-o" style="float: left;"></i>
							<div id="addTextBox1">&nbsp;텍스트박스추가</div>
						</a>
					</button>
				</li>
				<li class="list-unstyled" id="addTextArea">
					<button class="btn-u btn-brd rounded-2x btn-u-light-green"
						type="button">
						<a id="intextArea"> <i class="fa fa-comment"
							style="float: left;"></i>
							<div id="addTextArea1">&nbsp;텍스트에어리어추가</div></a>
					</button>
				</li>
				<li class="list-unstyled" id="addRadio">
					<button class="btn-u btn-brd rounded-2x btn-u-light-green"
						type="button">
						<a id="inRadio"> <i class="fa fa-dot-circle-o"
							style="float: left;"></i>
							<div id="addRadio1">&nbsp;라디오버튼추가</div></a>
				</li>
				<li class="list-unstyled" id="addSelect">
					<button class="btn-u btn-brd rounded-2x btn-u-light-green"
						type="button">
						<a id="inSelect"> <i class="fa fa-circle-o"
							style="float: left;"></i>
							<div id="addSelect1">&nbsp;select박스 추가</div></a>
					</button>
				</li>
				<li class="list-unstyled" id="addCheckBox">
					<button class="btn-u btn-brd rounded-2x btn-u-light-green"
						type="button">
						<a id="inCb"> <i class="fa fa-check-square-o"
							style="float: left;"></i>
							<div id="addCheckBox1">&nbsp;체크박스추가</div></a>
					</button>
				</li>
				<li class="list-unstyled" id="bgChange">
					<button class="btn-u btn-brd rounded-2x btn-u-light-green"
						type="button">
						<a data-toggle="collapse" data-parent="#sidebar-nav"
							href="#collapse-changeBg"> <i class="fa fa-picture-o"
							style="float: left;"></i>
							<div id="bgChange1">&nbsp;배경화면 변경</div></a>
					</button>
					<ul id="collapse-changeBg" class="collapse" style="width: 160px;">
						<li>파일 첨부 : <input type="file" name="file2" id="file2" />
							<button id="changeBg">사진 업로드</button>
						</li>
					</ul>
				</li>
				<li class="list-unstyled" id="addImage">
					<button class="btn-u btn-brd rounded-2x btn-u-light-green"
						type="button">
						<a data-toggle="collapse" data-parent="#sidebar-nav"
							href="#collapse-insertImg"> <i class="fa fa-file-image-o"
							style="float: left;"></i>
							<div id="addImage1">&nbsp;이미지 추가</div></a>
					</button>
					<ul id="collapse-insertImg" class="collapse" style="width: 160px;">
						<li>
							<form method="post" enctype="multipart/form-data" id="imgForm">
								파일 첨부 : <input type="file" name="file" id="file" />
							</form>
							<button id="insertImg">사진 업로드</button>
						</li>
					</ul>
				</li>
				<li class="list-unstyled" id="addBoard">
					<button class="btn-u btn-brd rounded-2x btn-u-light-green"
						type="button">
						<a id="createBoard"> <i class="fa fa-copy"
							style="float: left;"></i>
							<div id="addBoard1">&nbsp;게시판 추가</div></a>
					</button>
				</li>
				<li class="list-unstyled" id="addMenu">
					<button class="btn-u btn-brd rounded-2x btn-u-light-green"
						type="button">
						<a data-toggle="collapse" data-parent="#sidebar-nav"
							href="#collapse-insertPage"> <i class="fa fa-list"
							style="float: left;"></i>
							<div id="addMenu1">&nbsp;메뉴추가</div></a>
					</button>
					<ul id="collapse-insertPage" class="collapse" style="width: 160px;">
						<input type="text" id="menuName">
						<button class="btn btn-primary btn-lg" id="Inbtn">메뉴추가</button>
					</ul>
				</li>
				<li class="list-unstyled" id="save">
					<button class="btn-u btn-brd rounded-2x btn-u-light-green"
						type="button">
						<a id="savePage"> <i class="fa fa-floppy-o"
							style="float: left;"></i>
						<div id="save1">&nbsp;저장</div></a>
					</button>
				</li>
				<li class="list-unstyled" id="registration">
					<button class="btn-u btn-brd rounded-2x btn-u-light-green"
						type="button">
						<a id="makeUrl"> <i class="fa fa-plus-square-o"
							style="float: left;"></i>
						<div id="registration1">&nbsp; 등록</div></a>
					</button>
				</li>

			</ul>
		</div>
	</div>
	
	<iframe name="iframe" style="position: absolute; left:300px; top: 80px;" height="1000px" width="1280px" src="<%=request.getContextPath()%>/savePage/<%=session.getAttribute("id")%>/<%=request.getParameter("pageName")%>/index.html">
	</iframe>
	
		<div id="rightMenu" class="col-md-6" style="position: absolute;" >
		<ul class="list-unstyled">
			<li>
				<button style="background-color: white;" class="btn-u btn-brd rounded btn-u-red glow btn-u-xs" type="button">
				<a style="cursor: pointer;" id="modify" data-target="#modifyModal" data-toggle="modal">
				<i class="fa fa-cogs "></i> 수정하기</a></button>
			</li>
			
			<li>
				<button style="background-color: white;" class="btn-u btn-u-xs btn-brd rounded btn-u-orange glow " type="button">
				<a style="cursor: pointer;" id="delete">
				<i class="fa fa-trash-o"></i> 삭제하기</a></button>
			</li>
			
			<li>
				<button style="background-color: white;" class="btn-u btn-brd rounded btn-u-yellow glow btn-u-xs " type="button">
				<a style="cursor: pointer;" id="link">
				<i class="fa fa-unlink"></i> 링크설정</a></button></li>
			<li>
			<button style="background-color: white;" class="btn-u btn-brd rounded btn-u-light-green glow btn-u-xs" type="button">
			<a style="cursor: pointer;" data-toggle="collapse" data-parent="#rightMenu" href="#changeFont">
			<i class="glyphicon glyphicon-font"></i> 폰트변경</a></button>
				<ul id="changeFont" class="collapse" style="background-color: white; width: 120px;" >
					<li><a style="font-family: default" id="mfontDefault">default</a></li>
					<li><a style="font-family: serif" id="mfontSerif">serif</a></li>
					<li><a style="font-family: sans-serif" id="mfontSans=serif">sans-serif</a></li>
					<li><a style="font-family: cursive" id="mfontCursive">cursive</a></li>
					<li><a style="font-family: fantasy" id="mfontFantasy">fantasy</a></li>
					<li><a style="font-family: monospace" id="mfontMonospace">monospace</a></li>
				</ul>
			</li>
			<li>
			<button style="background-color: white;" class="btn-u btn-brd rounded btn-u-aqua glow btn-u-xs" type="button">
			<a style="cursor: pointer;" data-toggle="collapse" data-parent="#rightMenu" href="#changeSize">
			<i class="glyphicon glyphicon-text-height"></i > 글자크기변경</a></button>
				<ul id="changeSize" class="collapse" style="background-color: white; width: 120px;">
					<button id="sizeUp" style="cursor: pointer;">+</button>
					<button id="sizeDown" style="cursor: pointer;">-</button>
				</ul>
			</li>
			<li>
			<button style="background-color: white;" class="btn-u btn-brd rounded btn-u-dark-blue glow btn-u-xs " type="button">
			<a style="cursor: pointer;" data-toggle="collapse" data-parent="#rightMenu" href="#textAlign"> 
			<i class="glyphicon glyphicon-align-justify"></i>글자정렬</a></button>
				<ul id="textAlign" class="collapse" style="background-color: white; width: 120px;">
					<a id="mAlignLeft" style="cursor: pointer;">left</a>
					<a id="mAlignCenter" style="cursor: pointer;">center</a>
					<a id="mAlignRight" style="cursor: pointer;">right</a>
				</ul>
			</li>
			<li>
				<button style="background-color: white;" class="btn-u btn-brd rounded btn-u-purple glow btn-u-xs" type="button">
				<a style="cursor: pointer;" data-toggle="collapse" data-parent="#rightMenu" href="#textColor"> 
				<i class="fa fa-pencil"></i>글자색깔</a></button>
				<ul id="textColor" class="collapse" style="background-color: white; width: 120px;">
					<a id="mColorWhite" style="cursor: pointer; color: black;">white</a>
					<a id="mColorBlack" style="cursor: pointer; color: black;">black</a>
					<a id="mColorBlack" style="cursor: pointer; color: yellow;">yellow</a>
					<a id="mColorRed" style="cursor: pointer; color:red;">red</a><br>
					<a id="mColorGreen" style="cursor: pointer; color:green;">green</a>
					<a id="mColorBlue" style="cursor: pointer; color: blue;">blue</a>
					<a id="mColorGray" style="cursor: pointer; color: gray;">gray</a>
				</ul>
			</li>
			<li>
				<button style="background-color: white;" class="btn-u btn-brd rounded btn-u-default glow btn-u-xs" type="button">
				<a style="cursor: pointer;" data-toggle="collapse" data-parent="#rightMenu" href="#backColor"> 
				<i class="fa fa-picture-o"></i>배경색</a></button>
				<ul id="backColor" class="collapse" style="background-color: white; width: 120px;">
					<a id="mBackWhite" style="cursor: pointer; color: black;">white</a>
					<a id="mBackBlack" style="cursor: pointer; color: black;">black</a>
					<a id="mBackBlack" style="cursor: pointer; color: yellow;">yellow</a>
					<a id="mBackRed" style="cursor: pointer; color:red;">red</a><br>
					<a id="mBackGreen" style="cursor: pointer; color:green;">green</a>
					<a id="mBackBlue" style="cursor: pointer; color: blue;">blue</a>
					<a id="mBackGray" style="cursor: pointer; color: gray;">gray</a>
				</ul>
			</li>
		</ul>
	</div>
	<!-- insert Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title">글을 입력해주세요</h4>
				</div>
				<div class="modal-body">
					<textarea id="modalText" style="width: 550px; height: 300px;"></textarea>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="insertSpan">insert</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
	<!-- modify Modal -->
	<div class="modal fade" id="modifyModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title">글을 입력해주세요</h4>
				</div>
				<div class="modal-body">
					<textarea id="modifyModalText" style="width: 550px; height: 300px;"></textarea>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="modifySpan">insert</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</body>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<!-- JS Implementing Plugins -->
</html>
