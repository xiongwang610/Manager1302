<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="entity.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改信息</title>
</head>
<body>
	<%
		Student student = (Student)request.getAttribute("student");
	%>
	<table border="1px" >
		<s:form id="id" action="Student_updateStudent" method="post" >
			<tr><s:textfield name="student.sname" value="${student.sname }" label="姓名"></s:textfield><s:fielderror fieldName="sname_error" /></tr>
			<!--  <tr><s:textfield name="student.sid" value="<%=student.getSid() %>" label="学号"></s:textfield><s:fielderror fieldName="sid_error" /></tr>
			<tr><s:textfield name="student.num" value="<%=student.getNum() %>" label="序号"></s:textfield><s:fielderror fieldName="num_error" /></tr>
			<tr><s:textfield name="student.phoneNumber" value="<%=student.getPhoneNumber() %>" label="手机"></s:textfield><s:fielderror fieldName="phoneNumber_error" /></tr>
			<tr><s:textfield name="student.dormintory" value="<%=student.getDormintory() %>" label="寝室"></s:textfield><s:fielderror fieldName="dormintory_error" /></tr>
			<tr><s:textfield name="student.birthday" value="<%=student.getBirthday() %>" label="生日"></s:textfield><s:fielderror fieldName="birthday_error" /></tr>
			<tr><s:textfield name="student.address" value="<%=student.getAddress() %>" label="地址"></s:textfield><s:fielderror fieldName="address_error" /></tr> -->
			<tr>
				<td><s:reset label="重置" /></td>
				<td><s:submit label="确认修改"></s:submit></td>
			</tr>
		</s:form>
		</table>
	
</body>
</html>