<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Insert title here</title>
</head>
<body>

		<p>用户列表</p>

		<a href="add.jsp">增加</a>

		<table id="tab" border="1px">
		<tr>
			<td>ID</td>
			<td>用户名</td>
			<td>密码</td>
			<td>钱</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${info.list }" var="l">
			<tr>
				<td>${l.id }</td>
				<td>${l.username }</td>
				<td>${l.password }</td>
				<td>${l.qian }</td>
				<td>
					<a href="selectByID?id=${l.id}">修改</a>
					<a href="delete?id=${l.id }">X</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	
	
	<a href="show?n=1">首页</a>
	<a href="show?n=${info.prePage}">上一页</a>
	<c:forEach items="${info.navigatepageNums}" var="a">
		<a href="show?n=${a}">${a}</a>
	</c:forEach>
	<a href="show?n=${info.nextPage}">下一页</a>
	<a href="show?n=${info.pages}">尾页</a>
	共${info.total}条数据，共${info.pages}页，当前为${info.pageNum}页
	

</body>
</html>