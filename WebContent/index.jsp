<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="db.MySessionFactory" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link href='http://fonts.useso.com/css?family=Pathway+Gothic+One' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Titillium+Web:400,200,300,200italic,300italic,400italic,600,600italic,700,700italic,900' rel='stylesheet' type='text/css'>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Vision Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<script src="http://ajax.useso.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	
	<script src="js/jquery.min.js"></script>
	
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>	
	<script type="text/javascript" src="js/modernizr.custom.53451.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>	
</head>
<body>
	<div class="header" id="home">
		<div class="container">
			<div class="header-logo">
				<p>软件1302</p>
			</div>
			<div class="top-nav">
				<span class="menu"><img src="images/menu-icon.png" alt=""/></span>
				<ul class="nav1">
					<li><a href="index.html" >首页</a></li>
					<li><a href="http://www.baidu.com">班级相册</a></li>
					<li><a href="Words_getWordsbyPages?word_id=0" >留言板</a></li>
					<li><a href="Student_getStudentByPage?student.num=0" >同学信息</a></li>
					<li><a href="jsp/addWords.jsp" >添加留言</a></li>
				</ul>
				 <script>
				   $( "span.menu" ).click(function() {
					 $( "ul.nav1" ).slideToggle( 300, function() {
					  });
					 });
				</script>
			</div>
			<div class="clearfix"> </div>
		</div>	
	</div>
	
	<div class="banner">				
				<!--//End-slider-script -->
				<script src="js/responsiveslides.min.js"></script>
				 <script>
					// You can also use "$(window).load(function() {"
					$(function () {
					  // Slideshow 4
					  $("#slider3").responsiveSlides({
						auto: false,
						pager: true,
						nav: true,
						speed: 500,
						namespace: "callbacks",
						before: function () {
						  $('.events').append("<li>before event fired.</li>");
						},
						after: function () {
						  $('.events').append("<li>after event fired.</li>");
						}
					  });
				
					});
				  </script>
				<div  id="top" class="callbacks_container">
					<ul class="rslides" id="slider3">
						<li>
							<div class="banner1">	
							</div>
						</li>
						<li>
							<div class="banner1 banner2">
							</div>
						</li>
						<li>
							<div class="banner1 banner3">
							</div>
						</li>
						<li>
							<div class="banner1 banner4">
							</div>
						</li>
					</ul>
				</div>		
		<div class="clearfix"> </div>
	</div>
	
	
</body>
</html>