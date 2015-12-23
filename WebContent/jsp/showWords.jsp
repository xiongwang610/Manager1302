<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="entity.* , java.util.*" %>

<html lang="en">
<head>
  <meta name="viewport" content="width=1024" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言</title>
<meta name="description" content="impress.js is a presentation tool based on the power of CSS3 transforms and transitions in modern browsers and inspired by the idea behind prezi.com." />
    <meta name="author" content="Bartek Szopka" />

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:regular,semibold,italic,italicsemibold|PT+Sans:400,700,400italic,700italic|PT+Serif:400,700,400italic,700italic" rel="stylesheet" />

    
    <link href="../css/impress-demo.css" rel="stylesheet" />
    
    <link rel="shortcut icon" href="favicon.png" />
    <link rel="apple-touch-icon" href="apple-touch-icon.png" />
</head>


<body class="impress-not-supported">
	
	
<div id="impress" >
	<%
		List<Words> list = (List<Words>)session.getAttribute("words");
		int size = 0;
		if(list != null && ( size= list.size()) != 0){
		Iterator iterator = list.iterator();
		Words words = null;
	%>
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
        <a href="../index.html">返回首页</a>
    </div>
    <%
			}
		}
		
		
    %>
   
    
</div>


<script src="../js/impress.js"></script>
<script>impress().init();</script>

</body>
</html>
