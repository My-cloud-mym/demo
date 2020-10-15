<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 上传文件，提交方式一定要是post,
		并且指定编码为文件上传:enctype="multipart/form-data" -->
	<form action="upload1" method="post" enctype="multipart/form-data">
		头像：<input type="file" name="file">
			<input type="submit" value="提交">
	</form>
</body>
</html>