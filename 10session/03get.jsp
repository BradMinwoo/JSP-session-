<%@page import="com.study.login.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%request.setCharacterEncoding("utf-8"); %>
<%@include file="/WEB-INF/inc/header.jsp"%>
<body>
<%@include file="/WEB-INF/inc/top.jsp"%>
<%=session.getAttribute("ck")%><br>
유저:<%=session.getAttribute("user") %>
<!-- 크롬 : set, get,  02, get 
	파이어복스 set 크롬 get-->	
</body>
</html>