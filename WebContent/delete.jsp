<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,dao.*,com.cn.bean.*"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@include file="../top.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除页面</title>
<script type="text/javascript">
function myDel(){
	var f = document.forms[0];
	f.action = "delete";
	f.submit();
}
</script>
</head>
<body>
	<s:form action="inputDelId" method="post">
		<s:textfield name="inputId" label="请输入要删除的学号" />
		<s:submit value="查询" />
		<table border="1px" width="300px;">
			<tr style="background-color: #0000CD; color: yellow;">
				<td>学号</td>
				<td>姓名</td>
				<td>性别</td>
				<td>年龄</td>
				<td>操作</td>
			</tr>
			<%
			StudentBean sb = new StudentBean();
			String id = request.getParameter("inputId");
			if(id == null){
			List list = sb.queryAll();
				for (int i = 0; i < list.size(); i++) {
					Student s = (Student) list.get(i);
	%>
	<tr>
		<td><%=s.getId()%></td>
		<td><%=s.getName()%></td>
		<td><%=s.getSex()%></td>
		<td><%=s.getAge()%></td>
		<td>--</td>
	</tr>
	<%
		}
			} else {
				List list = sb.query("id", id);
				for (int i = 0; i < list.size(); i++) {
					Student s = (Student) list.get(i);
	%>
	<tr>
		<td><input type="text" name="id" value="<%=s.getId()%>" size="5" readonly style="background-color:#FAFAD2"/></td>
		<td><%=s.getName()%></td>
		<td><%=s.getSex()%></td>
		<td><%=s.getAge()%></td>
		<td><input type="button" id="delButton" value="确定删除" onclick="myDel()"/></td>
	</tr>
	<%
		}
			}
	%>
		</table>
	</s:form>
</body>
</html>