<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,dao.*,com.cn.bean.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@include file="../top.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改页面</title>
<script type="text/javascript">
	function myUpdate() {
		var f = document.forms[0];
		f.action = "update";
		f.submit();
	}
</script>
</head>
<body>
	<s:form action="inputUpdateId" method="post">
		<s:textfield name="inputId" label="请输入要修改的学号" />
		<s:submit value="查询" />
		<table border="1px" width="300px;">
			<%
				StudentBean sb = new StudentBean();
					String id = request.getParameter("inputId");
					if (id == null) {
			%>
			<tr style="background-color: #0000CD; color: yellow;">
				<td>学号</td>
				<td>姓名</td>
				<td>性别</td>
				<td>年龄</td>
			</tr>
			<%
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
						List list = sb.query("id", id);
						for (int i = 0; i < list.size(); i++) {
							Student s = (Student) list.get(i);
			%>
			<tr>
				<td>学号</td>
				<td><input type="text" name="id" value="<%=s.getId()%>"
					size="5" readonly style="background-color: #FAFAD2" /></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input type="text" name="name" value="<%=s.getName()%>"
					size="5" /></td>
			</tr>
			<tr>
				<td>性别</td>
				<td><input type="text" name="sex" value="<%=s.getSex()%>"
					size="5" /></td>
			</tr>
			<tr>
				<td>年龄</td>
				<td><input type="text" name="age" value="<%=s.getAge()%>"
					size="5" /></td>
			</tr>
			<tr><td colspan="2"><input type="button" name="update" value="修改" onclick="myUpdate()"/></td></tr>
			<%
				}
					}
			%>
		</table>
	</s:form>
</body>
</html>