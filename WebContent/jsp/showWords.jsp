<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="entity.* , java.util.*" %>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=1024" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <title>留言</title>
    
    <meta name="description" content="impress.js is a presentation tool based on the power of CSS3 transforms and transitions in modern browsers and inspired by the idea behind prezi.com." />
    <meta name="author" content="Bartek Szopka" />

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:regular,semibold,italic,italicsemibold|PT+Sans:400,700,400italic,700italic|PT+Serif:400,700,400italic,700italic" rel="stylesheet" />
	
	<!-- html -->
    <link href="../css/style.css" type="text/css" rel="stylesheet" media="all">
	<link href="../css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link href='http://fonts.useso.com/css?family=Pathway+Gothic+One' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Titillium+Web:400,200,300,200italic,300italic,400italic,600,600italic,700,700italic,900' rel='stylesheet' type='text/css'>
	
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<script src="http://ajax.useso.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/move-top.js"></script>
	<script type="text/javascript" src="../js/easing.js"></script>	
	<script type="text/javascript" src="../js/modernizr.custom.53451.js"></script>
	<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
    <link href="../css/impress-demo.css" rel="stylesheet" />
    
    <link rel="shortcut icon" href="favicon.png" />
    <link rel="apple-touch-icon" href="apple-touch-icon.png" />
</head>


<body class="impress-not-supported">
	
	<div class="header" id="home">
		<div class="container">
			<div class="header-logo">
				<p>软件1302</p>
			</div>
			<div class="top-nav">
				<span class="menu"><img src="images/menu-icon.png" alt=""/></span>
				<ul class="nav1">
					<li><a href="../index.html" class="active">首页</a></li>
					<li><a href="#about" class="scroll">班级相册</a></li>
					<li><a href="Words_getWordsbyPages?word_id=0" >留言板</a></li>
					<li><a href="#portfolio" class="scroll">同学信息</a></li>
					<li><a href="#contact" class="scroll">添加留言</a></li>
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
	
	<%
		List<Words> list = (List<Words>)session.getAttribute("words");
		int size = 0;
		if(list != null && ( size= list.size()) != 0){
		Iterator iterator = list.iterator();
		Words words = null;
	%>
<div class="fallback-message">    
</div>
		
<div id="impress">

  	 <%
		if(iterator.hasNext()){
			words = (Words)iterator.next(); 
		%>
    <div id="title" class="step" data-x="0" data-y="0" data-scale="4">
        
        <p><%=words.getContent() %></p>
        <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp—<%=words.getStudent().getSname() %></p>
    </div>
	<% } 
  	if(iterator.hasNext()){
		words = (Words)iterator.next();
	%>
	
    <div id="its" class="step" data-x="850" data-y="3000" data-rotate="90" data-scale="5">
        <p><%=words.getContent() %></p>
        <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp—<%=words.getStudent().getSname() %></p>
    </div>
	<%
		}
	if(iterator.hasNext()){
		words = (Words)iterator.next(); 
	%>
    <div id="big" class="step" data-x="3500" data-y="2100" data-rotate="180" data-scale="6">
        <p><%=words.getContent() %></p>
        <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp—<%=words.getStudent().getSname() %></p>
    </div>
	<%
		}
	if(iterator.hasNext()){
		words = (Words)iterator.next(); 
	%>
    
    <div id="tiny" class="step" data-x="2825" data-y="2325" data-z="-3000" data-rotate="300" data-scale="1">
        <p><%=words.getContent() %></p>
        <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp—<%=words.getStudent().getSname() %></p>
    </div>
	<%
		}
	if(iterator.hasNext()){
		words = (Words)iterator.next(); 
	%>
    
    <div id="ing" class="step" data-x="3500" data-y="-850" data-rotate="270" data-scale="6">
        <p><%=words.getContent() %></p>
        <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp—<%=words.getStudent().getSname() %></p>
    </div>
	<%
		}
	if(iterator.hasNext()){
		words = (Words)iterator.next(); 
	%>
    <div id="imagination" class="step" data-x="6700" data-y="-300" data-scale="6">
        <p><%=words.getContent() %></p>
        <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp—<%=words.getStudent().getSname() %></p>
    </div>
	<%
		}
	if(iterator.hasNext()){
		words = (Words)iterator.next(); 
	%>
    <div id="source" class="step" data-x="6300" data-y="2000" data-rotate="20" data-scale="4">
        <p><%=words.getContent() %></p>
        <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp—<%=words.getStudent().getSname() %></p>
    </div>
	<%
		}
	if(iterator.hasNext()){
		words = (Words)iterator.next(); 
	%>
    <div id="one-more-thing" class="step" data-x="6000" data-y="4000" data-scale="2">
        <p><%=words.getContent() %></p>
        <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp—<%=words.getStudent().getSname() %></p>
    </div>

   <%
		}
	%>
	<% 
		if(list.size() == 8 && list.get(0).getWord_id() != 0){			
	%>
    <div id="its-in-3d" class="step" data-x="6200" data-y="4300" data-z="-100" data-rotate-x="-40" data-rotate-y="10" data-scale="2">
	<a href="Words_getWordsbyPages?word_id="+<%=list.get(0).getWord_id() %> >下一页</a>
       
    </div>
    <%
		}else{
    %>
	<div id="its-in-3d" class="step" data-x="6200" data-y="4300" data-z="-100" data-rotate-x="-40" data-rotate-y="10" data-scale="2">
        <p>没有更多留言咯 去发表 更多留言吧！</p>
    </div>
    <%
			}
		}else{
    %>
   
    <div id="overview" class="step" data-x="3000" data-y="1500" data-scale="10">
    	<p>还没有任何留言喔！</p>
    </div>
	<%
		}
	%>
</div>


<script src="../js/impress.js"></script>
<script>impress().init();</script>

</body>
</html>
