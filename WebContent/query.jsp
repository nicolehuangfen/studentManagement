<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.cn.bean.*,dao.*,java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@include file="../top.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询页面</title>
</head>
<body>
	<s:form action="query" method="post">
		<s:textfield name="inputName" label="请输入查询的名字" />
		<s:submit value="查询" />
		<table border="1px" width="300px;">
			<tr style="background-color:#0000CD; color:yellow;">
				<td>学号</td>
				<td>姓名</td>
				<td>性别</td>
				<td>年龄</td>
			</tr>
			<%
				StudentBean sb = new StudentBean();
					String inputName = request.getParameter("inputName");
					if (inputName == null) {
						List list = sb.queryAll();
						for (int i = 0; i < list.size(); i++) {
							Student s = (Student) list.get(i);
			%>
			<tr>
				<td><%=s.getId()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getSex()%></td>
				<td><%=s.getAge()%></td>
			</tr>
			<%
				}
					} else {
						List list = sb.query("name", inputName);
						for (int i = 0; i < list.size(); i++) {
							Student s = (Student) list.get(i);
			%>
			<tr>
				<td><%=s.getId()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getSex()%></td>
				<td><%=s.getAge()%></td>
			</tr>
			<%
				}
					}
			%>
		</table>
	</s:form>
</body>
</html>