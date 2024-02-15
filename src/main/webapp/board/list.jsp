<%@page import="srv.BoardService"%>
<%@page import="ioc.Factory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 뒤로가기를 눌러도 자동으로 새로고침이 되었으면 좋겠다 -->
<%
	if(session.getAttribute("userid")==null){
	  response.sendRedirect("./login.jsp");
	}

	BoardService boardSrv = Factory.INSTANCE.getBoardSrv();
	
	request.setAttribute("list",boardSrv.getAll());
%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<!-- style태그는 나중에 css로 옮길 예정 -->
<style>
	td{text-align: center; padding: 0 15px;}
</style>
</head>
<body>
	<div id="wrap">
		<h1>${name}님의 게시판</h1>
		<p><a href="./write.jsp">글쓰기</a></p>
		<table>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">닉네임</th>
					<th scope="col">등록일</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.seq}</td>
						<td><a href="./read.jsp?seq=${dto.seq}">${dto.title}</a></td>
						<td>${dto.name}</td>
						<td>${dto.regdate}</td>
						<td>${dto.cnt}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>