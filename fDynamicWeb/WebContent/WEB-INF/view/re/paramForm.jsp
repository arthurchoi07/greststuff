<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paramForm.jsp</title>
</head>
<body>
id : ${memberVO.id }
name : ${memberVO.name }
세션값 : ${sessionScope.login}
<%-- <%=session.getAttribute("login") %> --%>
</body>
</html>