<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加学生信息</title>
</head>
<body>
	
		<table border="1px" >
		<s:form id="id" action="Student_addStudent" method="POST" enctype="multipart/form-data">
			<tr><s:textfield name="student.sname" label="姓名"></s:textfield><s:fielderror fieldName="sname_error" /></tr>
			<tr><s:textfield name="student.sid" label="学号"></s:textfield><s:fielderror fieldName="sid_error" /></tr>
			<tr><s:textfield name="student.num" label="序号"></s:textfield><s:fielderror fieldName="num_error" /></tr>
			<tr><s:textfield name="student.phoneNumber" label="手机"></s:textfield><s:fielderror fieldName="phoneNumber_error" /></tr>
			<tr><s:textfield name="student.dormintory" label="寝室"></s:textfield><s:fielderror fieldName="dormintory_error" /></tr>
			<tr><s:textfield name="student.birthday" label="生日"></s:textfield><s:fielderror fieldName="birthday_error" /></tr>
			<tr><s:textfield name="student.address" label="地址"></s:textfield><s:fielderror fieldName="address_error" /></tr>
			<tr><s:file name="file"></s:file></tr>
			<tr><s:submit label="添加"></s:submit></tr>
		</s:form>
		</table>
	
	
</body>
</html>