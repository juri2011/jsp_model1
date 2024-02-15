<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
</head>
<body>
	<div id="wrap">
		<h1>미니 게시판입니다.</h1>
		<ul>
		<!-- 나중에 c:if를 통해 로그인이 된 사람은 로그아웃메뉴만,
		로그아웃 상태인 사람은 로그인 메뉴만 보이게 처리 -->
			<li><a href="./board/login.jsp">로그인</a></li>
			<li><a href="./board/logout.jsp">로그아웃</a></li>
			<li><a href="./board/list.jsp">글목록</a></li>
		<!-- 회원가입도 있었으면 좋겠다 -->
		</ul>	
	</div>
	
</body>
</html>