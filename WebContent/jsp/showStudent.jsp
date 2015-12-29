<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="entity.Student ,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生信息</title>
</head>
<body>
	<div>
		<a href="jsp/addStudent.jsp" style="list-style: none;">添加学生信息</a>
	</div>
	<%
		List<Student> list = (List<Student>)session.getAttribute("student");
		if(list != null && list.size() > 0){
			for(int i=0 ; i<list.size();i++){
				Student student = list.get(i);
			
	%>
	<div class="all">
		<div class="image">
			<img alt="我是"+<%=student.getSname() %> src=<%=student.getUrl() %>>
		</div>
		<div class="imformation">
			<p>序号：<%=student.getNum() %>
			<p>姓名：<%=student.getSname() %></p>
			<p>学号：<%=student.getSid() %></p>
			<p>生日：<%=student.getBirthday() %></p>
			<p>手机：<%=student.getPhoneNumber() %></p>
			<p>寝室：<%=student.getDormintory() %></p>
			<p><a href="Student_toUpdateStudent?student.sid="+<%=student.getSid() %> style="list-style: none;">修改信息</a></p>
		</div>
	</div>
	<%
		if(list.size() == 8){
	%>
	<div>
		<a href="Student_getStudentByPage?student.num="+<%=list.get(7).getNum() %> style="list-style: none"></a>
	</div>
	<%
				}
			}
		}
	%>
</body>
</html>