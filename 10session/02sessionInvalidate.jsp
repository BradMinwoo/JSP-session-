<%@page import="sun.font.CreatedFontTracker"%>
<%@page import="sun.security.ec.ECDSAOperations.Seed"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
<%

	// session 은 기본적으로 30분 or 1시간 유지 됩니다.
	// 지속시간이 아니라 최근 접속시간가지고 30분 or 1시간 더 유지됩니다.
	 
	Date createDate = new Date();
	Date lastAccessDate = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	long createTime = session.getCreationTime(); // 브라우저별로 처음 요청 받을 때
	long lastAccessTime = session.getLastAccessedTime(); // 마지막으로 요청을했을 때
	
	createDate.setTime(createTime);
	lastAccessDate.setTime(lastAccessTime);
%>
<%=request.getHeader("User-Agent")%> 생성시간 : <%=sdf.format(createDate) %><br>
<%=request.getHeader("User-Agent")%> 접근시간 : <%=sdf.format(lastAccessDate) %><br>
세션아이디:<%=session.getId() %>
<%
	session.invalidate(); // 삭제

	
%>


</body>
</html>