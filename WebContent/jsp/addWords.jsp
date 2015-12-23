<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加留言</title>
</head>
<body >
	
	<table>
		<s:form id="id" action="Words_addWords">
		<tr><p><%=request.getAttribute("add_success") %></p></tr>
		<tr><s:textfield name="words.content" label="留言" size="90"></s:textfield><s:fielderror fieldName="content_error" /></tr>
		<tr><s:textfield name="words.sid" label="学号"></s:textfield><s:fielderror fieldName="sid_error"></s:fielderror></tr>
		<tr><s:submit value="发表"></s:submit></tr>
		</s:form>
	</table>
	
</body>
</html>