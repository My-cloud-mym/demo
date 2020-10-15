<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<form action="update">
		姓名:<input type="text" name="username" value="${user.username }"><br>
		密码:<input type="password" name="password" value="${user.password }"><br>
		余额:<input type="text" name="qian" value="${user.qian }"><br>
		<input type="hidden" name="id" value="${user.id }">
		<input type="submit" value="提交">
	</form>

</body>
</html>