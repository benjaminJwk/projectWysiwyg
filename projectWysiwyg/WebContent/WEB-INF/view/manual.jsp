<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>Blink | Welcome...</title>
<script type="text/javascript" src="libs/jquery/jquery-1.11.1.min.js"></script>
<!-- Meta -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- CSS Global Compulsory -->
<link rel="stylesheet"	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/plugins/sky-forms/version-2.0.1/css/custom-sky-forms.css">
<link rel="stylesheet" href="assets/plugins/scrollbar/src/perfect-scrollbar.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="assets/css/themes/default.css" id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="assets/css/custom.css">


<script type="text/javascript">
$(document).ready(function(){
	if( "<%=session.getAttribute("id")%>" != "null")
		{
			$("#loginBtn").html("<a href='logout.do'>Logout</a></li>");
		}
	
	$("#1").click(function(){
		
		$("#1-1").hide();$("#1-2").hide(); $("#1-3").hide(); $("#1-4").hide();
		$("#2-1").hide();$("#2-2").hide(); $("#2-3").hide(); $("#2-4").hide();
		$("#3-1").hide();$("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();
		$("#4-1").hide();$("#4-2").hide(); $("#4-3").hide(); $("#4-4").hide();
		$("#5-1").hide();$("#5-2").hide(); $("#5-3").hide(); $("#5-4").hide();
		$("#6-1").hide();$("#6-2").hide(); $("#6-3").hide(); $("#6-4").hide(); $("#6-5").hide(); $("#6-6").hide(); $("#6-7").hide();
		$("#7-1").hide();$("#7-2").hide(); $("#7-3").hide(); $("#7-4").hide();
		$("#8-1").hide();$("#8-2").hide(); $("#8-3").hide(); $("#8-4").hide();
		$("#10-1").hide();$("#10-2").hide(); $("#10-3").hide(); $("#10-4").hide();
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();
		$("#12-1").hide();$("#12-2").hide(); $("#12-3").hide(); $("#12-4").hide();
		$("#13-1").hide();$("#13-2").hide(); $("#13-3").hide(); 
		$("#14-1").hide();$("#14-2").hide(); $("#14-3").hide(); $("#14-4").hide();
		$("#15-1").hide();$("#15-2").hide(); $("#15-3").hide(); $("#15-4").hide();
	
		$("#9-1").show(); $("#9-2").show(); $("#9-3").show(); $("#9-4").show();
		
	});
	
});

$(document).ready(function(){
	$("#1-1").hide();$("#1-2").hide();$("#1-3").hide();$("#1-4").hide();
	
	$("#2").click(function(){
		
		
		
		$("#2-1").hide();$("#2-2").hide(); $("#2-3").hide(); $("#2-4").hide();
		$("#3-1").hide();$("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();
		$("#4-1").hide();$("#4-2").hide(); $("#4-3").hide(); $("#4-4").hide();
		$("#5-1").hide();$("#5-2").hide(); $("#5-3").hide(); $("#5-4").hide();
		$("#6-1").hide();$("#6-2").hide(); $("#6-3").hide(); $("#6-4").hide(); $("#6-5").hide(); $("#6-6").hide(); $("#6-7").hide();
		$("#7-1").hide();$("#7-2").hide(); $("#7-3").hide(); $("#7-4").hide();
		$("#8-1").hide();$("#8-2").hide(); $("#8-3").hide(); $("#8-4").hide();
		$("#9-1").hide();$("#9-2").hide(); $("#9-3").hide(); $("#9-4").hide();
		$("#10-1").hide();$("#10-2").hide(); $("#10-3").hide(); $("#10-4").hide();
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();
		$("#12-1").hide();$("#12-2").hide(); $("#12-3").hide(); $("#12-4").hide();
		$("#13-1").hide();$("#13-2").hide(); $("#13-3").hide(); 
		$("#14-1").hide();$("#14-2").hide(); $("#14-3").hide(); $("#14-4").hide();
		$("#15-1").hide();$("#15-2").hide(); $("#15-3").hide(); $("#15-4").hide();
	
		$("#1-1").show(); $("#1-2").show(); $("#1-3").show(); $("#1-4").show();
		
	});
	
});

$(document).ready(function(){
	$("#2-1").hide();$("#2-2").hide();$("#2-3").hide();$("#2-4").hide();
	
	$("#3").click(function(){
		
		
		
		$("#1-1").hide();$("#1-2").hide(); $("#1-3").hide(); $("#1-4").hide();
		$("#3-1").hide();$("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();
		$("#4-1").hide();$("#4-2").hide(); $("#4-3").hide(); $("#4-4").hide();
		$("#5-1").hide();$("#5-2").hide(); $("#5-3").hide(); $("#5-4").hide();
		$("#6-1").hide();$("#6-2").hide(); $("#6-3").hide(); $("#6-4").hide(); $("#6-5").hide(); $("#6-6").hide(); $("#6-7").hide();
		$("#7-1").hide();$("#7-2").hide(); $("#7-3").hide(); $("#7-4").hide();
		$("#8-1").hide();$("#8-2").hide(); $("#8-3").hide(); $("#8-4").hide();
		$("#9-1").hide();$("#9-2").hide(); $("#9-3").hide(); $("#9-4").hide();
		$("#10-1").hide();$("#10-2").hide(); $("#10-3").hide(); $("#10-4").hide();
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();
		$("#12-1").hide();$("#12-2").hide(); $("#12-3").hide(); $("#12-4").hide();
		$("#13-1").hide();$("#13-2").hide(); $("#13-3").hide(); 
		$("#14-1").hide();$("#14-2").hide(); $("#14-3").hide(); $("#14-4").hide();
		$("#15-1").hide();$("#15-2").hide(); $("#15-3").hide(); $("#15-4").hide();
	
		$("#2-1").show(); $("#2-2").show(); $("#2-3").show(); $("#2-4").show();
		
	});
	
});

$(document).ready(function(){
	$("#3-1").hide(); $("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();
	
	$("#8").click(function(){
		
		
		$("#1-1").hide();$("#1-2").hide(); $("#1-3").hide(); $("#1-4").hide();
		$("#2-1").hide();$("#2-2").hide(); $("#2-3").hide(); $("#2-4").hide();		
		$("#4-1").hide();$("#4-2").hide(); $("#4-3").hide(); $("#4-4").hide();
		$("#5-1").hide();$("#5-2").hide(); $("#5-3").hide(); $("#5-4").hide();
		$("#6-1").hide();$("#6-2").hide(); $("#6-3").hide(); $("#6-4").hide(); $("#6-5").hide(); $("#6-6").hide(); $("#6-7").hide();
		$("#7-1").hide();$("#7-2").hide(); $("#7-3").hide(); $("#7-4").hide();
		$("#8-1").hide();$("#8-2").hide(); $("#8-3").hide(); $("#8-4").hide();
		$("#9-1").hide();$("#9-2").hide(); $("#9-3").hide(); $("#9-4").hide();
		$("#10-1").hide();$("#10-2").hide(); $("#10-3").hide(); $("#10-4").hide();
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();
		$("#12-1").hide();$("#12-2").hide(); $("#12-3").hide(); $("#12-4").hide();
		$("#13-1").hide();$("#13-2").hide(); $("#13-3").hide(); 
		$("#14-1").hide();$("#14-2").hide(); $("#14-3").hide(); $("#14-4").hide();
		$("#15-1").hide();$("#15-2").hide(); $("#15-3").hide(); $("#15-4").hide();
	
		$("#3-1").show(); $("#3-2").show(); $("#3-3").show(); $("#3-4").show();
		
	});
	
});

$(document).ready(function(){
	$("#4-1").hide();$("#4-2").hide();$("#4-3").hide();$("#4-4").hide();
	
	$("#14").click(function(){
		
		
		$("#1-1").hide();$("#1-2").hide(); $("#1-3").hide(); $("#1-4").hide();
		$("#2-1").hide();$("#2-2").hide(); $("#2-3").hide(); $("#2-4").hide();
		$("#3-1").hide();$("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();		
		$("#5-1").hide();$("#5-2").hide(); $("#5-3").hide(); $("#5-4").hide();
		$("#6-1").hide();$("#6-2").hide(); $("#6-3").hide(); $("#6-4").hide(); $("#6-5").hide(); $("#6-6").hide(); $("#6-7").hide();
		$("#7-1").hide();$("#7-2").hide(); $("#7-3").hide(); $("#7-4").hide();
		$("#8-1").hide();$("#8-2").hide(); $("#8-3").hide(); $("#8-4").hide();
		$("#9-1").hide();$("#9-2").hide(); $("#9-3").hide(); $("#9-4").hide();
		$("#10-1").hide();$("#10-2").hide(); $("#10-3").hide(); $("#10-4").hide();
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();
		$("#12-1").hide();$("#12-2").hide(); $("#12-3").hide(); $("#12-4").hide();
		$("#13-1").hide();$("#13-2").hide(); $("#13-3").hide(); 
		$("#14-1").hide();$("#14-2").hide(); $("#14-3").hide(); $("#14-4").hide();
		$("#15-1").hide();$("#15-2").hide(); $("#15-3").hide(); $("#15-4").hide();
	
		$("#4-1").show(); $("#4-2").show(); $("#4-3").show(); $("#4-4").show();
		
	});
	
});

$(document).ready(function(){
	$("#5-1").hide();$("#5-2").hide();$("#5-3").hide();$("#5-4").hide();
	
	$("#15").click(function(){
		
		
		$("#1-1").hide();$("#1-2").hide(); $("#1-3").hide(); $("#1-4").hide();
		$("#2-1").hide();$("#2-2").hide(); $("#2-3").hide(); $("#2-4").hide();
		$("#3-1").hide();$("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();
		$("#4-1").hide();$("#4-2").hide(); $("#4-3").hide(); $("#4-4").hide();		
		$("#6-1").hide();$("#6-2").hide(); $("#6-3").hide(); $("#6-4").hide(); $("#6-5").hide(); $("#6-6").hide(); $("#6-7").hide();
		$("#7-1").hide();$("#7-2").hide(); $("#7-3").hide(); $("#7-4").hide();
		$("#8-1").hide();$("#8-2").hide(); $("#8-3").hide(); $("#8-4").hide();
		$("#9-1").hide();$("#9-2").hide(); $("#9-3").hide(); $("#9-4").hide();
		$("#10-1").hide();$("#10-2").hide(); $("#10-3").hide(); $("#10-4").hide();
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();
		$("#12-1").hide();$("#12-2").hide(); $("#12-3").hide(); $("#12-4").hide();
		$("#13-1").hide();$("#13-2").hide(); $("#13-3").hide(); 
		$("#14-1").hide();$("#14-2").hide(); $("#14-3").hide(); $("#14-4").hide();
		$("#15-1").hide();$("#15-2").hide(); $("#15-3").hide(); $("#15-4").hide();
	
		$("#5-1").show(); $("#5-2").show(); $("#5-3").show(); $("#5-4").show();
		
	});
	
});

$(document).ready(function(){
	$("#6-1").hide();$("#6-2").hide();$("#6-3").hide();$("#6-4").hide();$("#6-5").hide();$("#6-6").hide();$("#6-7").hide();
	
	$("#6").click(function(){
		
		
		$("#1-1").hide();$("#1-2").hide(); $("#1-3").hide(); $("#1-4").hide();
		$("#2-1").hide();$("#2-2").hide(); $("#2-3").hide(); $("#2-4").hide();
		$("#3-1").hide();$("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();
		$("#4-1").hide();$("#4-2").hide(); $("#4-3").hide(); $("#4-4").hide();
		$("#5-1").hide();$("#5-2").hide(); $("#5-3").hide(); $("#5-4").hide();		 
		$("#7-1").hide();$("#7-2").hide(); $("#7-3").hide(); $("#7-4").hide();
		$("#8-1").hide();$("#8-2").hide(); $("#8-3").hide(); $("#8-4").hide();
		$("#9-1").hide();$("#9-2").hide(); $("#9-3").hide(); $("#9-4").hide();
		$("#10-1").hide();$("#10-2").hide(); $("#10-3").hide(); $("#10-4").hide();
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();
		$("#12-1").hide();$("#12-2").hide(); $("#12-3").hide(); $("#12-4").hide();
		$("#13-1").hide();$("#13-2").hide(); $("#13-3").hide(); 
		$("#14-1").hide();$("#14-2").hide(); $("#14-3").hide(); $("#14-4").hide();
		$("#15-1").hide();$("#15-2").hide(); $("#15-3").hide(); $("#15-4").hide();
	
		$("#6-1").show(); $("#6-2").show(); $("#6-3").show(); $("#6-4").show(); $("#6-5").show(); $("#6-6").show(); $("#6-7").show();
		
	});
	
});

$(document).ready(function(){
	$("#7-1").hide();$("#7-2").hide();$("#7-3").hide();$("#7-4").hide();
	
	$("#4").click(function(){
		
		
		$("#1-1").hide();$("#1-2").hide(); $("#1-3").hide(); $("#1-4").hide();
		$("#2-1").hide();$("#2-2").hide(); $("#2-3").hide(); $("#2-4").hide();
		$("#3-1").hide();$("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();
		$("#4-1").hide();$("#4-2").hide(); $("#4-3").hide(); $("#4-4").hide();
		$("#5-1").hide();$("#5-2").hide(); $("#5-3").hide(); $("#5-4").hide();
		$("#6-1").hide();$("#6-2").hide(); $("#6-3").hide(); $("#6-4").hide(); $("#6-5").hide(); $("#6-6").hide(); $("#6-7").hide();		
		$("#8-1").hide();$("#8-2").hide(); $("#8-3").hide(); $("#8-4").hide();
		$("#9-1").hide();$("#9-2").hide(); $("#9-3").hide(); $("#9-4").hide();
		$("#10-1").hide();$("#10-2").hide(); $("#10-3").hide(); $("#10-4").hide();
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();
		$("#12-1").hide();$("#12-2").hide(); $("#12-3").hide(); $("#12-4").hide();
		$("#13-1").hide();$("#13-2").hide(); $("#13-3").hide(); 
		$("#14-1").hide();$("#14-2").hide(); $("#14-3").hide(); $("#14-4").hide();
		$("#15-1").hide();$("#15-2").hide(); $("#15-3").hide(); $("#15-4").hide();
	
		$("#7-1").show(); $("#7-2").show(); $("#7-3").show(); $("#7-4").show();
		
	});
	
});

$(document).ready(function(){
	$("#8-1").hide();$("#8-2").hide();$("#8-3").hide();$("#8-4").hide();
	
	$("#10").click(function(){
		
		
		$("#1-1").hide();$("#1-2").hide(); $("#1-3").hide(); $("#1-4").hide();
		$("#2-1").hide();$("#2-2").hide(); $("#2-3").hide(); $("#2-4").hide();
		$("#3-1").hide();$("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();
		$("#4-1").hide();$("#4-2").hide(); $("#4-3").hide(); $("#4-4").hide();
		$("#5-1").hide();$("#5-2").hide(); $("#5-3").hide(); $("#5-4").hide();
		$("#6-1").hide();$("#6-2").hide(); $("#6-3").hide(); $("#6-4").hide(); $("#6-5").hide(); $("#6-6").hide(); $("#6-7").hide();
		$("#7-1").hide();$("#7-2").hide(); $("#7-3").hide(); $("#7-4").hide();		
		$("#9-1").hide();$("#9-2").hide(); $("#9-3").hide(); $("#9-4").hide();
		$("#10-1").hide();$("#10-2").hide(); $("#10-3").hide(); $("#10-4").hide();
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();
		$("#12-1").hide();$("#12-2").hide(); $("#12-3").hide(); $("#12-4").hide();
		$("#13-1").hide();$("#13-2").hide(); $("#13-3").hide(); 
		$("#14-1").hide();$("#14-2").hide(); $("#14-3").hide(); $("#14-4").hide();
		$("#15-1").hide();$("#15-2").hide(); $("#15-3").hide(); $("#15-4").hide();
	
		$("#8-1").show(); $("#8-2").show(); $("#8-3").show(); $("#8-4").show();
		
	});
	
});

$(document).ready(function(){
	$("#10-1").hide();$("#10-2").hide();$("#10-3").hide();$("#10-4").hide();
	
	$("#9").click(function(){
		
		
		$("#1-1").hide();$("#1-2").hide(); $("#1-3").hide(); $("#1-4").hide();
		$("#2-1").hide();$("#2-2").hide(); $("#2-3").hide(); $("#2-4").hide();
		$("#3-1").hide();$("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();
		$("#4-1").hide();$("#4-2").hide(); $("#4-3").hide(); $("#4-4").hide();
		$("#5-1").hide();$("#5-2").hide(); $("#5-3").hide(); $("#5-4").hide();
		$("#6-1").hide();$("#6-2").hide(); $("#6-3").hide(); $("#6-4").hide(); $("#6-5").hide(); $("#6-6").hide(); $("#6-7").hide();
		$("#7-1").hide();$("#7-2").hide(); $("#7-3").hide(); $("#7-4").hide();
		$("#8-1").hide();$("#8-2").hide(); $("#8-3").hide(); $("#8-4").hide();
		$("#9-1").hide();$("#9-2").hide(); $("#9-3").hide(); $("#9-4").hide();		
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();
		$("#12-1").hide();$("#12-2").hide(); $("#12-3").hide(); $("#12-4").hide();
		$("#13-1").hide();$("#13-2").hide(); $("#13-3").hide(); 
		$("#14-1").hide();$("#14-2").hide(); $("#14-3").hide(); $("#14-4").hide();
		$("#15-1").hide();$("#15-2").hide(); $("#15-3").hide(); $("#15-4").hide();
	
		$("#10-1").show(); $("#10-2").show(); $("#10-3").show(); $("#10-4").show();
		
	});
	
});

$(document).ready(function(){
	$("#11-1").hide();$("#11-2").hide();$("#11-3").hide(); $("#11-4").hide();
	
	$("#7").click(function(){
		
		
		$("#1-1").hide();$("#1-2").hide(); $("#1-3").hide(); $("#1-4").hide();
		$("#2-1").hide();$("#2-2").hide(); $("#2-3").hide(); $("#2-4").hide();
		$("#3-1").hide();$("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();
		$("#4-1").hide();$("#4-2").hide(); $("#4-3").hide(); $("#4-4").hide();
		$("#5-1").hide();$("#5-2").hide(); $("#5-3").hide(); $("#5-4").hide();
		$("#6-1").hide();$("#6-2").hide(); $("#6-3").hide(); $("#6-4").hide(); $("#6-5").hide(); $("#6-6").hide(); $("#6-7").hide();
		$("#7-1").hide();$("#7-2").hide(); $("#7-3").hide(); $("#7-4").hide();
		$("#8-1").hide();$("#8-2").hide(); $("#8-3").hide(); $("#8-4").hide();
		$("#9-1").hide();$("#9-2").hide(); $("#9-3").hide(); $("#9-4").hide();
		$("#10-1").hide();$("#10-2").hide(); $("#10-3").hide(); $("#10-4").hide();		
		$("#12-1").hide();$("#12-2").hide(); $("#12-3").hide(); $("#12-4").hide();
		$("#13-1").hide();$("#13-2").hide(); $("#13-3").hide(); 
		$("#14-1").hide();$("#14-2").hide(); $("#14-3").hide(); $("#14-4").hide();
		$("#15-1").hide();$("#15-2").hide(); $("#15-3").hide(); $("#15-4").hide();
	
		$("#11-1").show(); $("#11-2").show(); $("#11-3").show(); $("#11-4").show();
		
	});
	
});

$(document).ready(function(){
	$("#12-1").hide();$("#12-2").hide();$("#12-3").hide();$("#12-4").hide();
	
	$("#11").click(function(){
		
		
		$("#1-1").hide();$("#1-2").hide(); $("#1-3").hide(); $("#1-4").hide();
		$("#2-1").hide();$("#2-2").hide(); $("#2-3").hide(); $("#2-4").hide();
		$("#3-1").hide();$("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();
		$("#4-1").hide();$("#4-2").hide(); $("#4-3").hide(); $("#4-4").hide();
		$("#5-1").hide();$("#5-2").hide(); $("#5-3").hide(); $("#5-4").hide();
		$("#6-1").hide();$("#6-2").hide(); $("#6-3").hide(); $("#6-4").hide(); $("#6-5").hide(); $("#6-6").hide(); $("#6-7").hide();
		$("#7-1").hide();$("#7-2").hide(); $("#7-3").hide(); $("#7-4").hide();
		$("#8-1").hide();$("#8-2").hide(); $("#8-3").hide(); $("#8-4").hide();
		$("#9-1").hide();$("#9-2").hide(); $("#9-3").hide(); $("#9-4").hide();
		$("#10-1").hide();$("#10-2").hide(); $("#10-3").hide(); $("#10-4").hide();
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();		
		$("#13-1").hide();$("#13-2").hide(); $("#13-3").hide(); 
		$("#14-1").hide();$("#14-2").hide(); $("#14-3").hide(); $("#14-4").hide();
		$("#15-1").hide();$("#15-2").hide(); $("#15-3").hide(); $("#15-4").hide();
	
		$("#12-1").show(); $("#12-2").show(); $("#12-3").show(); $("#12-4").show();
		
	});
	
});

$(document).ready(function(){
	$("#13-1").hide();$("#13-2").hide();$("#13-3").hide();
	
	$("#5").click(function(){
		
		
		$("#1-1").hide();$("#1-2").hide(); $("#1-3").hide(); $("#1-4").hide();
		$("#2-1").hide();$("#2-2").hide(); $("#2-3").hide(); $("#2-4").hide();
		$("#3-1").hide();$("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();
		$("#4-1").hide();$("#4-2").hide(); $("#4-3").hide(); $("#4-4").hide();
		$("#5-1").hide();$("#5-2").hide(); $("#5-3").hide(); $("#5-4").hide();
		$("#6-1").hide();$("#6-2").hide(); $("#6-3").hide(); $("#6-4").hide(); $("#6-5").hide(); $("#6-6").hide(); $("#6-7").hide();
		$("#7-1").hide();$("#7-2").hide(); $("#7-3").hide(); $("#7-4").hide();
		$("#8-1").hide();$("#8-2").hide(); $("#8-3").hide(); $("#8-4").hide();
		$("#9-1").hide();$("#9-2").hide(); $("#9-3").hide(); $("#9-4").hide();
		$("#10-1").hide();$("#10-2").hide(); $("#10-3").hide(); $("#10-4").hide();
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();
		$("#12-1").hide();$("#12-2").hide(); $("#12-3").hide(); $("#12-4").hide();		
		$("#14-1").hide();$("#14-2").hide(); $("#14-3").hide(); $("#14-4").hide();
		$("#15-1").hide();$("#15-2").hide(); $("#15-3").hide(); $("#15-4").hide();
	
		$("#13-1").show(); $("#13-2").show(); $("#13-3").show(); 
		
	});
	
});

$(document).ready(function(){
	$("#14-1").hide();$("#14-2").hide();$("#14-3").hide();$("#14-4").hide();
	
	$("#12").click(function(){
		
		
		$("#1-1").hide();$("#1-2").hide(); $("#1-3").hide(); $("#1-4").hide();
		$("#2-1").hide();$("#2-2").hide(); $("#2-3").hide(); $("#2-4").hide();
		$("#3-1").hide();$("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();
		$("#4-1").hide();$("#4-2").hide(); $("#4-3").hide(); $("#4-4").hide();
		$("#5-1").hide();$("#5-2").hide(); $("#5-3").hide(); $("#5-4").hide();
		$("#6-1").hide();$("#6-2").hide(); $("#6-3").hide(); $("#6-4").hide(); $("#6-5").hide(); $("#6-6").hide(); $("#6-7").hide();
		$("#7-1").hide();$("#7-2").hide(); $("#7-3").hide(); $("#7-4").hide();
		$("#8-1").hide();$("#8-2").hide(); $("#8-3").hide(); $("#8-4").hide();
		$("#9-1").hide();$("#9-2").hide(); $("#9-3").hide(); $("#9-4").hide();
		$("#10-1").hide();$("#10-2").hide(); $("#10-3").hide(); $("#10-4").hide();
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();
		$("#12-1").hide();$("#12-2").hide(); $("#12-3").hide(); $("#12-4").hide();
		$("#13-1").hide();$("#13-2").hide(); $("#13-3").hide(); 		
		$("#15-1").hide();$("#15-2").hide(); $("#15-3").hide(); $("#15-4").hide();
	
		$("#14-1").show(); $("#14-2").show(); $("#14-3").show(); $("#14-4").show();
		
	});
	
});

$(document).ready(function(){
	$("#15-1").hide();$("#15-2").hide();$("#15-3").hide();$("#15-4").hide();
	
	$("#13").click(function(){
		
		
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();
		$("#2-1").hide();$("#2-2").hide(); $("#2-3").hide(); $("#2-4").hide();
		$("#3-1").hide();$("#3-2").hide(); $("#3-3").hide(); $("#3-4").hide();
		$("#4-1").hide();$("#4-2").hide(); $("#4-3").hide(); $("#4-4").hide();
		$("#5-1").hide();$("#5-2").hide(); $("#5-3").hide(); $("#5-4").hide();
		$("#6-1").hide();$("#6-2").hide(); $("#6-3").hide(); $("#6-4").hide(); $("#6-5").hide(); $("#6-6").hide(); $("#6-7").hide();
		$("#7-1").hide();$("#7-2").hide(); $("#7-3").hide(); $("#7-4").hide();
		$("#8-1").hide();$("#8-2").hide(); $("#8-3").hide(); $("#8-4").hide();
		$("#9-1").hide();$("#9-2").hide(); $("#9-3").hide(); $("#9-4").hide();
		$("#10-1").hide();$("#10-2").hide(); $("#10-3").hide(); $("#10-4").hide();
		$("#11-1").hide();$("#11-2").hide(); $("#11-3").hide(); $("#11-4").hide();
		$("#12-1").hide();$("#12-2").hide(); $("#12-3").hide(); $("#12-4").hide();
		$("#13-1").hide();$("#13-2").hide(); $("#13-3").hide(); 
		$("#14-1").hide();$("#14-2").hide(); $("#14-3").hide(); $("#14-4").hide();
		
	
		$("#15-1").show(); $("#15-2").show(); $("#15-3").show(); $("#15-4").show();
		
	});
	
});





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
                        <!-- Pages -->
							<li class="dropdown"><a href="templtePage.do"
								class="dropdown-toggle"> 템플릿 </a></li>
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
		<!--=== Content Part ===-->
		<div class="container content">
			<div class="row">
				<!-- Begin Sidebar Menu -->
				<div class="col-md-3" style="padding-top:30px;  padding-bottom:300px;">
					<ul class="list-group sidebar-nav-v1" id="sidebar-nav">


						<!-- 시작하기 -->
						<li class="list-group-item list-toggle">
						<a data-toggle="collapse" data-parent="#sidebar-nav"href="#collapse-buttons">시작하기</a>
							<ul id="collapse-buttons" class="collapse ">
								<li id="1"><a href="#"><i class="fa fa-chevron-circle-right"></i> 가입하기</a></li>
								<li id="2">
									<a href="#" ><i class="fa fa-chevron-circle-right">
								</i>
										템플릿 선택하기</a></li>
								<li id="3"><a href="#"  >
									<i class="fa fa-chevron-circle-right"></i> 웹사이트 만들기</a>
								</li>
							</ul>
						</li>

						<!-- 기본에디터 -->
						<li class="list-group-item list-toggle"><a
							data-toggle="collapse" data-parent="#sidebar-nav"
							href="#collapse-icons">기본 에디터</a>
							<ul id="collapse-icons" class="collapse">
								<li id="4"><a href="#" >
									<i class="fa fa-chevron-circle-right"></i> 편집도구 </a></li>
									
								<li id="5"><a href="#" >
									<i class="fa fa-chevron-circle-right"></i> 기본구조</a></li>
									
								<li id="6"><a href="#">
									<i class="fa fa-chevron-circle-right"></i> 페이지 구성하기</a></li>
									
								<li id="7"><a href="#" >
									<i class="fa fa-chevron-circle-right"></i> 디자인 </a></li>
									
										
								<li id="8"><a href="#" >
									<i class="fa fa-chevron-circle-right"></i> 텍스트 추가</a></li>
																			
								<li id="9"><a href="#">
									<i class="fa fa-chevron-circle-right"></i>미디어,이미지,갤러리 </a></li>
									
								<li id="10"><a href="#">
									<i class="fa fa-chevron-circle-right"></i> 모양 &amp; 선 </a></li>

							</ul>
						</li>
						<!-- End Icons -->




						<!-- 확장에디터 -->
						<li class="list-group-item list-toggle"><a
							data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-typography">확장에디터</a>
							<ul id="collapse-typography" class="collapse">
								<li id="11"><a href="#editor_button_menu" >
								<i class="fa fa-chevron-circle-right"></i> 버튼, 메뉴 및 앵커</a></li>

								<li id="12"><a href="#" ><i class="fa fa-chevron-circle-right"></i> 
									목록작성 도구</a></li>
								<li id="13"><a href="#"
									><i class="fa fa-chevron-circle-right"></i>
										사이트 설정</a></li>
								<li id="14"><a href="#"
									><i class="fa fa-chevron-circle-right"></i>
										사이트 저장, 게시 및 업그레이드</a>
								<li>
								<li id="15"><a href="#" ><i
										class="fa fa-chevron-circle-right"></i> 기타</a></li>

							</ul>
						</li>
						</ul>
				</div>
				<!-- End Sidebar Menu -->
				<!-- End Sidebar Menu -->

				<!-- Begin Content -->
				<div class="col-md-9">
				  <!-- start_select-template -->                
                <div  class="panel-group acc-v1 " id="start_select_template">
                    <div class="panel panel-default" id="1-1">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-1-1">
                                    개요
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-1-1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                  <!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
                                    <div class="col-md-8">
                                       &nbsp; 템플릿은 미리 개발된 웹사이트 레이아웃입니다. 
                                       콘텐츠만 변경하여 자신만의 웹사이트를 만들 수 있도록 Blink 디자이너들이 실제 웹사이트를 만들어 두었습니다. 
                                       제공되는 템플릿들은 사용자가 웹사이트 만들기를 시작할 수 있는 좋은 방법 중 하나 입니다
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default"id="1-2">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-1-2">
                                    템플릿 선택하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-1-2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                        Blink 웹사이트의 템플릿이나 홈페이지 섹션에서 템플릿을 먼저 선택해야 합니다.
                                        <br/><br/>
                                        템플릿을 선택하려면 :
                                        <ol class="list-style number">
                                        <li>Blink.com으로 이동합니다.</li>
                                        <li>상단메뉴에서 템플릿을 클릭합니다.</li>
                                        <li>카테고리를 클릭한 후 템플릿을 살펴봅니다.</li>
                                        <li>마음에 드는 디자인을 찾았다면 편집을 클릭하여 에디터에 템플릿을 엽니다.</li>
                                        </ol>
                                        <!-- <ul class="list-unstyled">
                                            <li><i class="fa fa-check color-green"></i> Donec id elit non mi porta gravida at eget metus..</li>
                                            <li><i class="fa fa-check color-green"></i> Fusce dapibus, tellus ac cursus comodo egetine..</li>
                                            <li><i class="fa fa-check color-green"></i> Food truck quinoa nesciunt laborum eiusmod runch..</li>
                                        </ul> -->
                                    </div>
                                    <div class="col-md-4">
                                       <!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default"id="1-3">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-1-3">
                                   템플릿 편집하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-1-3" class="panel-collapse collapse">
                            <div class="panel-body">
                               <ul>
                               <li><h3>텍스트 편집,추가</h3></li>
                               텍스트를 편집하려면:
                               <ol class="list style number">
                               <li>텍스트 상자를 클릭합니다.</li>
                               <li>텍스트 상자의 텍스트를 편집하거나 삭제하고 에디터바에서 포맷합니다.</li>
                               </ol><br/>
                               <li><h3>텍스트 추가하기</h3></li>
                               텍스트를 추가하려면:
                               <ol class ="list style number">
                               <li>에디터에서 추가 아이콘을 클릭합니다.</li>
                               <li>텍스트 상자에 텍스트를 입력하고 텍스트 에디터바를 이용하여 텍스트를 포맷합니다..</li>
                               <li>텍스트 상자 바깥쪽을 클릭하여 텍스트 에디터 바를 닫습니다.</li>                               
                               </ol><br/>
                               <li><h3>텍스트 삭제하기</h3></li>
                               <ol>
                               텍스트 상자를 삭제하려면:
                               <li>삭제하고자 하는 텍스트 상자를 클릭합니다.</li>
                               <li>키보드의 Delete버튼을 누르거나 오른쪽 상단의 휴지통 아이콘을 클릭합니다.</li>
                               <li>확인창에서 삭제를 클릭합니다.</li>
                               </ol>
                               </ul>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default"id="1-4">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                               <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-1-4">
                                    이미지 변경하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-1-4" class="panel-collapse collapse">
                            <div class="panel-body">
                               템플릿의 이미지는 쉽게 변경할 수 있습니다.</br></br>
                               이미지를 변경하려면:
                               <ol>
                               <li>이미지를 클릭합니다.</li>
                               <li>이미지 설정 창에서 이미지 변경을 클릭합니다.</li>
                               <li>이미지를 업로드 한 후 확인을 클릭합니다.</li>
                               </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End start_select-template --> 
                
                  <!-- start_make_web -->                
                <div   class="panel-group acc-v1 " id="start_make_web ">
                    <div class="panel panel-default" id="2-1">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-2-1">
                                    사이트 구조화 하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-2-1" class="panel-collapse collapse ">
                            <div class="panel-body">
                                <div class="row">
                                  <!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
                                    <div class="col-md-8">
                                       &nbsp; 웹사이트를 만들기 전에 목표를 먼저 정합니다. 
                                       사이트를 통해 이루고자 하는것이 무엇입니까? 
                                       (많은 트래픽 발생, 판매 증가, 인식 증가, 등) 목표가 정해지면
                                        내 사이트가 어떻게 보여지길 원하는지에 대해 웹에 아이디어를 검색합니다.
                                         펜과 종이를 이용하여 내 사이트를 대략 그려봅니다.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default"id="2-2">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-2-2">
                                   페이지 구성 및 추가
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-2-2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                        <ul>
                                        <li><h3>페이지 구성하기</h3></li>
                                        &nbsp;에디터의 왼쪽에는 페이지 모양의 아이콘이 표시되어 있습니다.
                                         아이콘을 클릭하면 모든 사이트 페이지 목록이 열리고 각 페이지를 탐색할 수 있습니다.
                                          페이지에서는 내 페이지의 순서를 바꾸거나 새로운 페이지를 추가할 수 있습니다.
                                           각 페이지의 설정 창에서는 사이트 페이지의 이름을 지정하거나, 
                                           페이지를 삭제, 복제, 또는 숨길 수 있으며 SEO 설정을 설정할 수 있습니다.<br/>
                                         <li><h3>페이지 추가하기</h3></li>
                                         페이지를 추가하려면:
                                         <ol>
                                         <li>에디터의 왼쪽에서 페이지 아이콘을 클릭하여 페이지를 엽니다.</li>
                                         <li>페이지 하단에서 페이지 추가를 클릭합니다.</li>
                                         <li>페이지 레이아웃을 클릭합니다.</li>
                                         <li>페이지 이름 지정란에 페이지 이름을 입력합니다.</li>
                                         <li>완료를 클릭합니다.</li>
                                         
                                         </ol>
                                        
                                        </ul>
                                        
                                    </div>
                                    <div class="col-md-4">
                                       <!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default"id="2-3">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-2-3">
                                    메뉴 추가
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-2-3" class="panel-collapse collapse">
                            <div class="panel-body">
                               방문자가 좀 더 쉽게 사이트를 탐색할 수 있도록 메뉴를 추가할 수 있습니다.
                               <br/><br/>
                               메뉴를 추가하려면:
                               <ol>
                               <li>에디터의 왼쪽에서 추가 아이콘을 클릭합니다.</li>
                               <li>추가에서 텍스트 메뉴나 버튼 메뉴를 클릭합니다.</li>
                               <li>메뉴의 바깥쪽을 클릭하여 메뉴 설정을 닫습니다.</li>
                               </ol>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default"id="2-4">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                               <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-2-4">
                                    사이트에 콘텐츠 추가하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-2-4" class="panel-collapse collapse">
                            <div class="panel-body">
                            사이트는 세 부분으로 구성되어 있습니다 - 페이지 본문, 머리글, 바닥글.
                             아래의 이미지를 클릭하여 세 부분에 대한 자세한 내용을 확인하세요.</br></br>
                            에디터의 왼쪽에 추가 아이콘을 클릭하여 새로운 요소를 추가할 수 있습니다. 
                            선택할 수 있는 요소들은 여러가지가 있습니다. 
                            추가 섹션에서 원하는 요소를 클릭하면 현재 페이지에 요소가 추가됩니다.
                             (위의 페이지 탐색하기 섹션 참조) 요소를 추가하고 나면 설정창을 통해 사용자 정의를
                              하고 페이지에 끌어놓을 수 있습니다.<br/><br/>
                              사이트의 머리글과 꼬리글에 요소를 추가하려면, 
                              먼저 요소가 모든 페이지에 표시되도록 설정해야 합니다.
                               그러기 위해서는 추가하고자 하는 요소를 클릭하여 설정창을 
                               열고 하단에 있는 모든 페이지에 표시 옆 상자를 체크하고 머리글이나 바닥글에 요소를 끌어놓습니다.<br/><br/>
                               요소를 추가하려면 :
                               <ol>
                               <li>에디터의 왼쪽에서 추가 아이콘을 클릭합니다.</li>
                               <li>추가에서 카테고리를 클릭한 후 요소를 클릭합니다.</li>
                               <li>설정 창에서 요소를 정의 합니다.</li>
                               <li>설정 창을 닫습니다.</li>
                               </ol>
                               
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- End make_web -->

					<!-- beditor_add_text -->
					<div   class="panel-group acc-v1  " id="beditor_add_text">
						<div class="panel panel-default" id="3-1">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion-1" href="#collapse-3-1"> 개요 </a>
								</h4>
							</div>
							<div id="collapse-3-1" class="panel-collapse collapse ">
								<div class="panel-body">
									<div class="row">
										<!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
										<div class="col-md-8">사이트의 텍스트는 내가 어떤 사람인지 내 웹사이트가 무엇에
											관한건지에 대한 정보를 사용자에게 제공합니다. 텍스트와 콘텐츠는 사이트의 SEO에도 매우 중요합니다. 추가에서
											새로운 텍스트 상자를 추가하거나 텍스트 상자를 더블 클릭하여 텍스트를 편집하거나 삭제합니다.</div>
									</div>
								</div>
							</div>
						</div>

						<div class="panel panel-default" id="3-2">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion-1" href="#collapse-3-2"> 텍스트 추가하기
									</a>
								</h4>
							</div>
							<div id="collapse-3-2" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="row">
										<div class="col-md-8">
											<p>
												추가에서 새로운 텍스트를 추가할 수 있습니다.<br />
												<br /> 다른 문서에 텍스트를 준비해 두었다면 메모장이나 다른 .txt 프로그램에 복사 및 붙여넣기를
												하거나 공백의 이메일에 “일반 텍스트”로 붙여넣습니다. 그렇게 하게되면 일부 프로그램에 의해 자동으로
												추가되는 불필요한 코드나 정보를 정리하게 됩니다. 일반 텍스트 문서에서 텍스트를 복사하여 Wix 에디터에
												붙여넣습니다.<br />
												<br /> 텍스트를 추가하려면:<br />
											<ol class="list-number">
												<li>에디터의 왼쪽에서 추가 아이콘을 클릭합니다.</li>
												<li>추가에서 텍스트를 클릭합니다.</li>
												<li>제목 또는 단락을 클릭합니다. 텍스트 상자가 나타납니다</li>
												<li>텍스트 설정 창에서 텍스트 편집을 클릭하거나 텍스트 상자를 더블 클릭합니다.</li>
												<li>텍스트 상자에 텍스트를 입력하고 텍스트 에디터 바를 이용하여 텍스트를 포맷합니다.</li>
												<li>텍스트 상자 바깥쪽을 클릭하여 텍스트 에디터 바를 닫습니다.</li>
											</ol>
											<br />
											<br />
										</div>
										<div class="col-md-4">
											<!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="panel panel-default" id="3-3">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion-1" href="#collapse-3-3"> 텍스트 상자
										삭제하기 </a>
								</h4>
							</div>
							<div id="collapse-3-3" class="panel-collapse collapse">
								<div class="panel-body">
									<br />텍스트 상자를 삭제하려면:<br />
									<br />
									<ol class="list-number">
										<li>삭제하고자 하는 텍스트 상자를 클릭합니다.</li>
										<li>키보드의 Delete 버튼을 누르거나 텍스트 상자 오른쪽 상단의 휴지통 아이콘을 클릭합니다.</li>
										<li>확인 창에서 삭제를 클릭합니다.</li>
									</ol>
								</div>
							</div>
						</div>

						<div class="panel panel-default" id="3-4">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion-1" href="#collapse-3-4"> 텍스트 옵션 </a>
								</h4>
							</div>
							<div id="collapse-3-4" class="panel-collapse collapse">
								<div class="panel-body">
									텍스트 에디터 바는 텍스트 포맷을 위한 몇 가지 옵션을 제공합니다.</br>
									</br> 스타일– 텍스트를 하이라이트 하고 텍스트 포맷 드롭다운 메뉴에서 스타일을 선택하여 텍스트의 스타일을 바꿔보세요.</br>


									글꼴 – 텍스트를 하이라이트한 후 글꼴 드롭다운 메뉴에서 원하는 글꼴을 선택해 글꼴을 변경하세요.</br> 글꼴 크기–
									텍스트를 하이라이트한 후 글꼴 크기 드롭다운 메뉴에서 글꼴 크기를 선택해 글꼴 크기를 변경하세요.</br> 색상 –
									텍스트를 하이라이트한 후 글자 색상 드롭다운 메뉴에서 색상을 선택해 텍스트의 색상을 바꿔보세요.</br> 배경색 –
									텍스트에 하이라이트 색상을 추가하세요.</br> B, I, U – 텍스트를 하이라이트한 후 B, I, 또는 U를 클릭하여
									텍스트를 굵게 하거나, 이탈릭체로 표시하거나, 텍스트에 밑줄을 그어보세요.</br> 맞춤– 양쪽 맞춤, 왼쪽 맞춤, 가운데
									맞춤, 오른쪽 맞춤 아이콘을 클릭해 텍스트의 정렬을 바꿔보세요.</br> 서식 제거 – 텍스트를 하이라이트한 후 텍스트
									에디터바 상단의 서식 제거 아이콘을 클릭해 텍스트의 서식을 제거하세요.</br> 문자 간격– 텍스트를 하이라이트한 후 문자
									간격 드롭다운 메뉴에서 간격을 선택해 문자간의 간격을 변경하세요.</br> 줄 간격 – 텍스트를 하이라이트한 후 줄 간격
									드롭다운 메뉴에서 간격을 선택해 줄 간격을 변경하세요.</br> 들여쓰기 늘리기 – 들여쓰기 늘리기 아이콘을 클릭해
									텍스트에 탭을 추가하세요.</br> 글머리 기호 및 번호 매기기 – 글머리 기호나 번호 매기기 아이콘을 클릭해 글머리
									기호와 번호를 매겨보세요.</br> 텍스트 방향 – 텍스트 에디터바의 단락 아이콘을 클릭해 텍스트 방향을 바꿔보세요.</br>
									링크– 텍스트를 하이라이트한 후 하이퍼링크 아이콘을 클릭해 텍스트에 링크를 삽입해 보세요.


								</div>
							</div>
						</div>
						
						 <!--editor_menu_about_site -->                
                <div   class="panel-group acc-v1" id="editor_menu_about_site">
                    <div class="panel panel-default" id="4-1">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-4-1">
                                    사이트 미리보기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-4-1" class="panel-collapse collapse ">
                            <div class="panel-body">
                                <div class="row">
                                  <!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
                                    <div class="col-md-8">
                                       &nbsp;미리보기 모드로 이동하여 사이트를 미리볼 수 있습니다. 
                                       미리보기 모드에서는 사이트가 온라인인 듯이 사이트를 탐색할 수 있습니다.<br/><br/>
                                       
                                       사이트의 미리보기 모드로 이동하려면 에디터의 상단에서 미리보기를 클릭하세요.
									   에디터로 돌아가려면 미리보기 모드 왼쪽 상단의 에디터로 돌아가기를 클릭하세요.
                                       
                                       </ol>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default"id="4-2"">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-4-2">
                                    사이트 저장하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-4-2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                         사이트를 저장한 후 나중에 이어서 작업할 수 있습니다.
                                       저장된 사이트는 my page에서 확인할 수 있습니다.<br/><br/>
                                       사이트를 저장하려면:
                                       <ol>
                                       <li>에디터 상단에서 저장을 클릭합니다.</li>
                                       <li>새로운 창이 열리면 입력란에 사이트 이름을 입력합니다.</li>
                                       <li>저장을 클릭합니다.</li>
                                       
                                       </ol>
                                    </div>
                                    <div class="col-md-4">
                                       <!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default"id="4-3">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-4-3">
                                    사이트 게시하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-4-3" class="panel-collapse collapse">
                            <div class="panel-body">
                             사이트를 공개할 준비가 되었다면, 게시를 클릭하세요! 라이브 사이트가 무료 Wix URL에 나타나게 됩니다.
                             
                             <br/><br/>
                             *나만의 도메인에 사이트를 게시하려면  계정을 업그레이드한 후 도메일을 구입해야 합니다<br/><br/>
                             사이트를 공개하려면:
                             <ol>
                             <li>에디터의 상단에서 게시를 클릭합니다.</li>
                             <li>사이트를 저장하지 않았다면 사이트의 이름을 입력하고 저장을 클릭합니다.</li>
                             <li>사이트 공개하기를 클릭합니다.</li>
                             <li>게시를 클릭합니다.</li>
                             
                             </ol>  
                            </div>
                        </div>
                    </div>

                    
                </div>
                <!-- End menu_about_site --> 
                 <!-- editor etc -->                
                <div class="panel-group acc-v1 tab-pane " id="editor_etc">
                    <div class="panel panel-default"id="5-1">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-5-1">
                                    사이트 이전하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-5-1" class="panel-collapse collapse ">
                            <div class="panel-body">
                                <div class="row">
                                  <!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
                                    <div class="col-md-8">
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default"id="5-2">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-5-2">
                                    비밀번호 찾기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-5-2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                        <p></p>
                                        <ul class="list-unstyled">
                                            <li><i class="fa fa-check color-green"></i> Donec id elit non mi porta gravida at eget metus..</li>
                                            <li><i class="fa fa-check color-green"></i> Fusce dapibus, tellus ac cursus comodo egetine..</li>
                                            <li><i class="fa fa-check color-green"></i> Food truck quinoa nesciunt laborum eiusmod runch..</li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                       <!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default"id="5-3">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-5-3">
                                    정렬 및 배치하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-5-3" class="panel-collapse collapse">
                            <div class="panel-body">
                               
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default"id="5-4">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                               <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-5-4">
                                    사이트 이전하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-5-4" class="panel-collapse collapse">
                            <div class="panel-body">
                                
                            </div>
                        </div>
                    </div>
                </div>
                
                  <!-- beditor_page_make -->
						<div class="panel-group acc-v1 tab-pane " id="beditor_page_make">
							<div class="panel panel-default" id="6-1">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion-1" href="#collapse-6-1"> 개요 </a>
									</h4>
								</div>
								<div id="collapse-6-1" class="panel-collapse collapse ">
									<div class="panel-body">
										<div class="row">
											<!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
											<div class="col-md-8">페이지 섹션은 내 사이트의 모든 페이지를 나열하고 각
												페이지를 탐색할 수 있도록 합니다. 페이지 섹션을 통해 페이지의 순서를 바꾸고, 페이지의 이름을 지정하거나,
												페이지를 삭제, 복제, 또는 숨길 수 있으며 SEO설정을 설정할 수 있습니다.</div>
										</div>
									</div>
								</div>
							</div>

							<div class="panel panel-default" id="6-2">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion-1" href="#collapse-6-2"> 페이지 탐색 </a>
									</h4>
								</div>
								<div id="collapse-6-2" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="row">
											<div class="col-md-8">
												<p>사이트 페이지를 탐색하려면 에디터의 왼쪽에 있는 페이지 아이콘을 클릭하여 페이지를 엽니다.
													목록에 있는 페이지 타이틀을 클릭하여 페이지를 탐색합니다. 또한, 에디터의 왼쪽 상단의 페이지: 드롭다운
													메뉴에서 페이지를 선택하여 쉽게 탐색할 수 있습니다</p>

											</div>
											<div class="col-md-4">
												<!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="panel panel-default" id="6-3">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion-1" href="#collapse-6-3"> 페이지 추가
										</a>
									</h4>
								</div>
								<div id="collapse-6-3" class="panel-collapse collapse">
									<div class="panel-body">
										페이지에서 페이지를 추가할 수 있습니다.<br />
										<br /> 페이지를 추가하려면:<br />
										<ol class="list-number">
											<li>에디터의 왼쪽에서 페이지 아이콘을 클릭하여 페이지를 엽니다.</li>
											<li>페이지의 오른쪽 하단에서 페이지 추가를 클릭합니다.</li>
											<li>페이지 추가 왼쪽에서 페이지 레이아웃을 클릭합니다.</li>
											<li>페이지 추가 페이지 하단의 페이지 이름 지정란에 페이지 이름을 입력합니다</li>
											<li>확인을 클릭합니다</li>
											<li>새로운 페이지가 사이트에 추가되었습니다.</li>
										</ol>
									</div>
								</div>
							</div>

							<div class="panel panel-default" id="6-4">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion-1" href="#collapse-6-4"> 하위 페이지
										</a>
									</h4>
								</div>
								<div id="collapse-6-4" class="panel-collapse collapse">
									<div class="panel-body">
										사이트에 하위 페이지를 만들고 메뉴를 드롭 다운 메뉴로 설정할 수 있습니다. 에디터의 페이지섹션에서 어떤
										페이지도 하위 페이지로 변경할 수 있습니다.<br />
										<br /> 하위 페이지를 만드려면:
										<ol class="list-unstyled">
											<li>에디터의 왼쪽에서 페이지 아이콘을 클릭합니다</li>
											<li>하위페이지로 변경하고자 하는 페이지의 왼편에 마우스를 롤오버 합니다</li>
											<li>페이지를 오른쪽으로 드래그 합니다</li>
										</ol>


									</div>
								</div>
							</div>
							<div class="panel panel-default" id="6-5">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion-1" href="#collapse-6-5"> 페이지
											순서변경 </a>
									</h4>
								</div>
								<div id="collapse-6-5" class="panel-collapse collapse">
									<div class="panel-body">
										페이지의 순서는 페이지 섹션에서 쉽고 빠르게 변경할 수 있습니다.<br />
										<br /> 페이지 순서를 변경하려면:

										<ol class="list-unstyled">
											<li>에디터의 왼쪽에서 페이지 아이콘을 클릭하여 페이지를 엽니다.</li>
											<li>순서를 변경하고자 하는 페이지의 왼편에 마우스를 롤오버 합니다.</li>
											<li>페이지를 드래그하여 순서를 변경합니다.</li>
										</ol>

										페이지의 순서가 변경되었습니다.
									</div>
								</div>
							</div>

							<div class="panel panel-default" id="6-6">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion-1" href="#collapse-6-6"> 페이지 이동효과
											변경 </a>
									</h4>
								</div>
								<div id="collapse-6-6" class="panel-collapse collapse">
									<div class="panel-body">
										페이지에 대한 페이지 이동효과를 변경할 수 있습니다. 페이지 이동효과는 페이지가 어떻게 이동될지와 방문자들이
										페이지 간을 이동할 때 무엇을 보게 될지를 결정합니다.<br />
										<br /> 페이지 이동효과를 변경하려면:
										<ol class="list-unstyled">
											<li>에디터의 왼쪽에서 페이지 아이콘을 클릭하여 페이지를 엽니다.</li>
											<li>페이지 이동에서 드롭 다운 메뉴를 클릭하여 원하는 이동효과를 클릭합니다.</li>
										</ol>
										<div
											class="panel panel-green margin-bottom-40 margin-right-100">
											<div class="panel-heading">
												<h3 class="panel-title">이동효과</h3>
											</div>

											<table class="table">
												<tbody>
													<tr>
														<td>없음</td>
														<td>페이지 이동효과를 설정하지 않습니다</td>

													</tr>
													<tr>
														<td>가로로 대기</td>
														<td>페이지가 가로로 미끄러지듯 이동합니다.</td>

													</tr>
													<tr>
														<td>세로로 대기</td>
														<td>페이지가 세로로 미끄러지듯 이동합니다.</td>

													</tr>

													<tr>
														<td>외부-내부</td>
														<td>새 페이지로 이동되기 전 현재 페이지가 사라집니다.</td>

													</tr>
												</tbody>
											</table>
										</div>
										<!--End Basic Table-->


									</div>
								</div>
							</div>

							<div class="panel panel-default"id="6-7">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion-1" href="#collapse-6-7"> 페이지 설정
											사용자 지정 </a>
									</h4>
								</div>
								<div id="collapse-6-7" class="panel-collapse collapse">
									<div class="panel-body">설정 및 SEO에서는 각 페이지의 설정을 사용자 지정할 수
										있습니다. 페이지의 이름을 변경하거나, 메뉴에서 숨길 수 있으며, 페이지의 제목, 설명, 키워드와 URL을
										업데이트 하거나 페이지를 복사, 더 이상 필요하지 않은 페이지 삭제 등을 할 수 있습니다</div>
								</div>
							</div>
						</div>
						<!-- End beditor_page_make --> 
                
                  <div class="panel-group acc-v1 " id="beditor_fixtool">
                    <div class="panel panel-default" id="7-1">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-7-1">
                                    편집하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-7-1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                  <!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
											<div class="col-md-8">
												요소를 클릭해 편집할 수 있습니다. 요소를 클릭하면 다양한 옵션을 가진 설정 창이 열립니다. 요소를
												편집하려면:<br />
												<br />
												<ol class="list-number ">
													<li>요소를 클릭합니다.</li>
													<li>설정 창이 열리면 요소를 사용자 지정합니다.</li>
												</ol>

												에디터의 상단 메뉴에서 실행취소 또는 재실행 아이콘을 클릭하거나 키보드의 CTRL-Z (실행취소) 또는
												CTRL-Y (재실행) 단축키를 사용해 작업을 취소하거나 재실행할 수 있습니다.

											</div>
										</div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="7-2">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-7-2">
                                    이동, 크기조정 및 삭제하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-7-2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                       <p> <h3>이동하기</h3>
                                        요소를 클릭해 원하는 위치에 끌어다 놓아 내 사이트의 모든 요소를 이동할 수 있습니다.<br/></p>
										<h3>크기 조정</h3>
										<ol class="list-number"><li>요소를 클릭해 선택합니다.</li>
										<li>크기조정 핸들을 클릭해 누른채 원하는 크기로 핸들을 끌어다 놓습니다</li>
										<li>다른 크기조정 핸들로 반복합니다.</li></ol>
										<h3>삭제하기</h3>
										삭제하려면:
										<ol class="list-number"><li>요소를 클릭해 선택합니다.</li><li>휴지통 아이콘을 클릭합니다</li></ol>
                                    </div>
                                    <div class="col-md-4">
                                       <!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


<!--<ol class="list-number"><li></li><li></li><li></li></ol>-->
                    <div class="panel panel-default" id="7-3">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-7-3">
                                   잠그기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-7-3" class="panel-collapse collapse">
                            <div class="panel-body">
                               페이지내 구성요소의 위치를 고정하려면:

							   <ol class="list-number"><li>요소를 클릭해 선택합니다.</li>
							   <li>팝업 메뉴에서 자물쇠 아이콘을 클릭합니다</li></ol>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="7-4">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                               <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-7-4">
                                    정렬하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-7-4" class="panel-collapse collapse">
                            <div class="panel-body">
                                요소 정렬 도구를 사용하면 완벽한 정확도를 유지한채 한 요소를 다른 요소에 맞춰 정렬할 수 있습니다. 보라색의 스마트 정렬 라인이 표시되어 사이트 또는 페이지의 중심과 끝점을 보여줍니다. 요소의 위치를 결정하면, 요소는 정렬 라인의 5px 범위 내에 정렬됩니다.s
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Accordion v1 -->       
                
                <!-- beditor_line -->
                 <div  class="panel-group acc-v1 " id="beditor_line">
                    <div class="panel panel-default" id="8-1">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-8-1">
                                    상자 추가하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-8-1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                  <!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
                                    <div class="col-md-8">
                                       
                                       상자를 추가하려면:
                                       <ol>
                                       <li>에디터의 오니쪽에서 추가 아이콘을 클릭합니다.</li>
                                       <li>상자 설정에서 스타일 변경을 클릭합니다.</li>
                                       <li>스타일 변경에서 원하는 스타일을 크릭하고 확인을 클릭합니다.</li>
                                       </ol>
                                       
                                       
                                       
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default"id="8-2">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-8-2">
                                    상자 편집하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-8-2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                        이미지,텍스트,비디오 및 갤러리를 포함한 모든 요소들을 상자에 첨부할 수 있습니다.<br/><br/>
                                       상자에 요소를 추가하려면:
                                       <ol>
                                       <li>상자나 요소의 크기를 조정하여 요소가 완전히 상자 안에 들어 맞을 수 있도록합니다.</li>
                                       <li>요소를 상자위로 끌어다 놓습니다.</li>
                                       
                                       </ol>
                                    </div>
                                    <div class="col-md-4">
                                       <!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="8-3">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-8-3">
                                    상자 스타일 사용자 지정하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-8-3" class="panel-collapse collapse">
                            <div class="panel-body">
                               상자 스타일을 사용자 지정하려면:
                               <ol>
                               <li>상자를 클릭해 선택한 후 스타일 변경을 클릭합니다.</li>
                               <li>스타일 변경 창의 내 스타일 옆 스타일 편집을 클릭합니다.</li>
                               <li>고급 스타일 창에서 스킨,색상,모서리,음영 및 테두리 너비를 변경한 후 확인을 클릭합니다.</li>
                               <li>스타일 변경 창에서 확인을 클릭합니다.</li>
                               </ol>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="8-4">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                               <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-8-4">
                                    
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-8-4" class="panel-collapse collapse">
                            <div class="panel-body">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End beditor_line -->       
                
                <!-- start_signin -->
                <div  class="panel-group acc-v1">
                    <div class="panel panel-default"  id="9-1">
                        <div class="panel-heading" >
                            <h4 class="panel-title">
                                <a  class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-9-1">
                                    개요
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-9-1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                  <!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
                                    <div class="col-md-8">
                                       Blink는 프로그래밍 경험이 없이도 나만의 전문적인 웹사이트를 만들 수 있는 기회를 제공합니다! 
                                       사용하기 쉬운 인터페이스는 쉽고 빠르게 멋진 사이트를 만들어 게시할 수 있도록 합니다.
                                        Blink 계정에 무료가입하면 원하는 수만큼의 웹사이트를 무료로 만들고 게시할 수 있습니다
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="9-2">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-9-2">
                                    무료계정
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-9-2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                        <p>본인 계정에 로그인 하려면 :</p>
                                        <ol class="list-number">
                                            <li> Blink.com으로 이동합니다.</li>
                                            <li> 오른쪽 상단 모서리에 login을 클릭합니다.</li>
                                            <li> 로그인 화면에서 이메일과 비밀번호를 입력합니다.</li>
                                            <li> </li>
                                        </ol>
                                    </div>
                                    <div class="col-md-4">
                                       <!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="9-3">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-9-3">
                                    계정설정 변경하기
                                    
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-9-3" class="panel-collapse collapse">
                            <div class="panel-body">
                            <p>사용자 이름, 이메일, 비밀번호는 언제든지 수정할 수 있습니다.</p>
                               <ul >
                                            <li><h3> 사용자 이름,이메일 변경하기</li></h3>
                                            사용자 이름과 이메일을 변경하려면:<br/>
                                            <ol class="list-style number">
                                            <li>Blink.com으로 이동합니다.</li>
                                            <li>상단 메뉴에서 my page를 클릭합니다.</li>
                                            <li>Edit Profile을 클릭합니다.</li>
                                            <li>사용자 이름과 이메일을 업데이트 합니다.</li>
                                            <li>저장 버튼을 누릅니다.</li><br/>
                                            </ol>
                                            <li><h3>비밀번호 변경하기</h3></li>
                                            비밀번호를 변경하려면:<br/>
                                            <ol class="list-style number">
                                            <li>Blink.com으로 이동합니다.</li>
                                            <li>상단 메뉴에서 my page를 클릭합니다.</li>
                                            <li>Change Password를 클릭합니다.</li>
                                            <li>비밀번호를 변경 합니다.</li>
                                            <li>저장 버튼을 누릅니다.</li><br/>
                                            </ol>
                                            
                                        </ul>
                            </div>
                        </div>
                    </div>

                   
                </div>
                <!-- End start_sign_in -->

					

						<!-- beditor_media_image_gallery -->                
                <div  class="panel-group acc-v1 " id="beditor_media_image_gallery">
                    <div class="panel panel-default" id="10-1">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-10-1">
                                    문서
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-10-1" class="panel-collapse collapse ">
                            <div class="panel-body">
                                <div class="row">
                                  <!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
                                    <div class="col-md-8">
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="10-2">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-10-2">
                                   이미지 추가하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-10-2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                        <p></p>
                                        <ul class="list-unstyled">
                                            <li><i class="fa fa-check color-green"></i> Donec id elit non mi porta gravida at eget metus..</li>
                                            <li><i class="fa fa-check color-green"></i> Fusce dapibus, tellus ac cursus comodo egetine..</li>
                                            <li><i class="fa fa-check color-green"></i> Food truck quinoa nesciunt laborum eiusmod runch..</li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                       <!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="10-3">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-10-3">
                                    갤러리 사용하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-10-3" class="panel-collapse collapse">
                            <div class="panel-body">
                               
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="10-4">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                               <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-10-4">
                                    오디오 추가하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-10-4" class="panel-collapse collapse">
                            <div class="panel-body">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Accordion v1 -->  
                
                   <!-- beditor_design -->                
                <div class="panel-group acc-v1  " id="beditor_design">
                    <div class="panel panel-default" id="11-1">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-11-1">
                                   개요
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-11-1" class="panel-collapse collapse ">
                            <div class="panel-body">
                                <div class="row">
                                  <!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
                                    <div class="col-md-8">
                                       에디터의 디자인 섹션은 사이트의 배경, 색상, 그리고 글꼴을 사용자 정의할 수 있도록 합니다. Wix가 제공하는 여러가지 스타일 중 하나를 선택하거나 나만의 스타일을 만들어 보세요!
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="11-2">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-11-2">
                                    배경
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-11-2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                        <p>Wysiwyg 컬렉션에서 배경을 선택하거나 이미지를 업로드하여 나만의 배경을 만들어 보세요!</p>
                                        
                                    </div>
                                    <div class="col-md-4">
                                       <!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="11-3">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-11-3">
                                    색상
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-11-3" class="panel-collapse collapse">
                            <div class="panel-body">
                               색상 팔레트를 선택하거나 나만의 팔레트를 만들어 보세요!   색상 팔레트는 배경, 사이트 탐색, 타이틀을 포함한 사이트의 여러 영역에 사용 가능한 색 구성표를 결정합니다.
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="11-4">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                               <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-11-4">
                                    글꼴
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-11-4" class="panel-collapse collapse">
                            <div class="panel-body">
                                사이트의 글꼴 구성표를 선택하거나 나만의 글꼴을 만들어 보세요! 글꼴 구성표는 크고 작은 머리글, 본문을 포함한 사이트의 다른 영역의 글꼴 유형, 크기, 및 색상을 결정합니다.
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End beditor_design -->
                
                   <!-- beditor_button_menu -->                
                <div  class="panel-group acc-v1 " id="beditor_button_menu">
                    <div class="panel panel-default" id="12-1">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-12-1">
                                    버튼 사용하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-12-1" class="panel-collapse collapse ">
                            <div class="panel-body">
                                <div class="row">
                                  <!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
                                    <div class="col-md-8">
                                       사이트에 버튼을 추가하고 페이지, 이메일 주소, 문서, 또는 외부 사이트로 링크할 수 있습니다. 사이트에 어울리도록 기본 버튼을 사용자 정의해 보세요!
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="12-2">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-12-2">
                                    메뉴 및 드롭다운 메뉴 사용하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-12-2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                       방문자들이 페이지를 탐색할 수 있도록 사이트에 버튼 메뉴를 추가할 수 있습니다. 하위 페이지를 만들어 메뉴를 드롭다운 메뉴로 변경하고 사이트에 어울리도록 메뉴를 사용자 정의해 보세요!
                                       
                                    </div>
                                    <div class="col-md-4">
                                       <!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="12-3">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-12-3">
                                   이미지 버튼 사용하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-12-3" class="panel-collapse collapse">
                            <div class="panel-body">
                               내 이미지를 사용해 버튼을 만들고 마우스오버뷰와 클릭뷰를 위한 별도의 이미지를 추가해 나만의 버튼을 만들어 보세요.
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="12-4">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                               <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-12-4">
                                    앵커 사용하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-12-4" class="panel-collapse collapse">
                            <div class="panel-body">
                                앵커 링크를 사용해 방문자들을 사이트의 특정 위치로 링크하세요.
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Accordion v1 -->                
                
                 <div  class="panel-group acc-v1 " id="beditor_basic_texture">
                    <div class="panel panel-default" id="13-1">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-13-1">
                                    기본구조
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-13-1" class="panel-collapse collapse ">
                            <div class="panel-body">
                                <div class="row">
                                  <!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
                                    <div class="col-md-8">
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="13-2">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-13-2">
                                    위치 고정
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-13-2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                        <p></p>

										내 머리글과 바닥글의 위치를 고정할 수 있습니다
                                        <ol class="list-number">
                                            <li>머리글 또는 바닥글을 클릭해 선택한 후 설정을 클릭합니다.</li>
											<li>위치고정 옆 상자를 클릭합니다</li>
											<li>미리보기를 클릭해 내 머리글과 바닥글이 고정된 위치를 확인합니다.</li>
                                        </ol>
										<p>모든 페이지에 표시로 설정된 요소들만이 고정된 머리글과 바닥글에 표시됩니다. 요소를 모든 페이지에 표시하는 방법은 여기에서 확인할 수 있습니다.</P>
                                    </div>
                                    <div class="col-md-4">
                                       <!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                                       <!-- <ol class="list-unstyled">
                                            <li></li></ol>-->
                                            
                                        
                    <div class="panel panel-default" id="13-3">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-13-3">
                                    요소 정렬
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-13-3" class="panel-collapse collapse">
                            <div class="panel-body">요소 정렬 도구를 사용하면 완벽한
										정확도를 유지한채 한 요소를 다른 요소에 맞춰 정렬할 수 있습니다. 보라색의 스마트 정렬 라인이 표시되어 사이트
										또는 페이지의 중심과 끝점을 보여줍니다. 요소의 위치를 결정하면, 요소는 정렬 라인의 5px 범위 내에
										정렬됩니다. 정렬 라인을 사용하지 않으려면, 에디터 오른쪽 상단의 “요소 정렬” 아이콘을 클릭하세요. 또는,
										Ctrl 키를 누른채 요소를 끌어다 놓으면 요소 정렬 도구를 임시적으로 해제할 수 있습니다. 이 기능은 요소의
										위치를 고정시키지 않습니다</div>
                        </div>
                    </div>
                </div>
                <!-- beditor_basic_texture -->
                
                <!-- End editor etc -->  
                                   
						
						       <!-- editor_menu_make_tool -->                
                <div  class="panel-group acc-v1" id="editor_menu_make_tool">
                    <div class="panel panel-default" id="14-1">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-14-1">
                                개요
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-14-1" class="panel-collapse collapse ">
                            <div class="panel-body">
                                <div class="row">
                                  <!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
                                    <div class="col-md-8">
                                       목록 작성 도구는 사이트에 제품 카탈로그, 자주 묻는 질문, 뉴스 목록 등을 만들고 관리할 수 있도록 합니다.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="14-2">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-14-2">
                                    목록 추가 및 아이템 관리
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-14-2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                        목록을 추가하려면:
                                        <ol class="list-number">
                                            <li> 에디터의 왼쪽에서 추가 아이콘을 클릭합니다. </li>
                                            <li> 추가 메뉴에서 목록 작성도구를 클릭합니다. </li>
                                            <li> 목록 작성도구 창 왼쪽에서 레이아웃을 선택합니다. </li>
											<li>사이트에 추가를 클릭합니다.</li>
											<li>팝업창에서 확인을 클릭합니다.</li>
                                        </ol>
                                    </div>
                                    <div class="col-md-4">
                                       <!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="14-3">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-14-3">
                                    목록, 필드 및 레이아웃 사용자 지정하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-14-3" class="panel-collapse collapse">
                            <div class="panel-body">
                               
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="14-4">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                               <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-14-4">
                                   여러 목록 작업하기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-14-4" class="panel-collapse collapse">
                            <div class="panel-body">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End editor_menu_make_tool -->      


					</div>
					<!-- End Accordion v1 -->    
					  <div   class="panel-group acc-v1 " id="editor_menu_site_option">
                    <div class="panel panel-default" id="15-1">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-15-1">
                                    내 사이트 보기
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-15-1" class="panel-collapse collapse ">
                            <div class="panel-body">
                                <div class="row">
                                  <!--  <div class="col-md-4">
                                        <img class="img-responsive" src="" alt="">
                                    </div>-->
                                    <div class="col-md-8">
                                       에디터의 설정 섹션에서 내 사이트의 URL을 찾을 수 있습니다.<br/><br/>
                                       내 사이트를 방문하려면:
                                       <ol>
                                       <li>에디터의 왼쪽에서 설정 아이콘을 클릭합니다.</li>
                                       <li>설정 창에서 사이트 주소를 클릭합니다.</li>
                                       <li>사이트 주소 창의 나의 사이트 주소는 아래와 같습니다: 아래에 사이트 주소가 나타납니다.</li>
                                       <li>링크를 클릭해 내 사이트를 엽니다.</li>
                                       
                                       </ol>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="15-2">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-15-2">
                                    섬네일 이미지 업데이트 하기 
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-15-2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                       에디터의 설정 섹션에서 사이트의 섬네일 이미지를 변경할 수 있습니다. 
                                       섬네일은 사이트가 Facebook에 공유될 때 나타나며 방문자들이 내 사이트를 식별할 수 있는 또 다른 방법을 제공합니다
                                    </div>
                                    <div class="col-md-4">
                                       <!-- <img class="img-responsive" src="assets/img/main/6.jpg" alt="">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="15-3">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-15-3">
                                   
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-15-3" class="panel-collapse collapse">
                            <div class="panel-body">
                               
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="15-4">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                               <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-15-4">
                                   
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-15-4" class="panel-collapse collapse">
                            <div class="panel-body">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Accordion v1 -->                                     

					
</div>
				</div>
			</div>
		</div>

		<!-- End Accordion v1 -->



		<!--=== Footer Version 1 ===-->
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
							<div class="posts">
								<div class="headline">
									<h2>최근 소식</h2>
								</div>
								<ul class="list-unstyled latest-list">
									<li><a href="#">Incredible content</a> <small>May
											8, 2014</small></li>
									<li><a href="#">Best shoots</a> <small>June 23,
											2014</small></li>
									<li><a href="#">New Terms and Conditions</a> <small>September
											15, 2014</small></li>
								</ul>
							</div>
						</div>
						<!--/col-md-3-->
						<!-- End Latest -->

						<!-- Link List -->
						<div class="col-md-3 md-margin-bottom-40">
							<div class="headline">
								<h2>유용한 목록</h2>
							</div>
							<ul class="list-unstyled link-list">
								<li><a href="#">About us</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">Portfolio</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">Latest jobs</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">Community</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">Contact us</a><i class="fa fa-angle-right"></i></li>
							</ul>
						</div>
						<!--/col-md-3-->
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

		<!--=== End Footer Version 1 ===-->


		<!-- JS Global Compulsory -->
		<script type="text/javascript"
			src="assets/plugins/jquery-1.10.2.min.js"></script>
		<script type="text/javascript"
			src="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
		<script type="text/javascript"
			src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<!-- JS Implementing Plugins -->
		<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
		<script type="text/javascript"
			src="assets/plugins/flexslider/jquery.flexslider-min.js"></script>
		<script type="text/javascript"
			src="assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
		<!-- Layer Slider -->
		<script type="text/javascript"
			src="assets/plugins/layer-slider/layerslider/js/greensock.js"></script>
		<script type="text/javascript"
			src="assets/plugins/layer-slider/layerslider/js/layerslider.transitions.js"></script>
		<script type="text/javascript"
			src="assets/plugins/layer-slider/layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
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
		<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/layer-slider/assets/js/html5.js"></script>
<![endif]-->
</body>
</html>
