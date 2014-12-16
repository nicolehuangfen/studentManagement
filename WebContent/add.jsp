<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@include file="../top.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加联系人</title>
<style>
#a{
	width:400px;
	margin:0 auto;
	height:200px;
	margin-top:60px;
}
</style>
</head>
<body>
	<div id="a">
		<s:form action="add" method="post">
			<s:textfield name="id" label="请输入学号"></s:textfield>
			<s:textfield name="name" label="请输入姓名" />
			<s:radio name="sex" label="请选择性别" list="{'男','女'}" value="男" />
			<s:textfield name="age" label="请输入年龄" />
			<s:submit value="添加" />
		</s:form>
	</div>
</body>
</html>