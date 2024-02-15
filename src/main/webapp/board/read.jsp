<%@page import="srv.BoardService"%>
<%@page import="ioc.Factory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	//list에서 get으로 받아온 seq를 통해 출력하기
	int seq = 0;
	String seq_ = request.getParameter("seq");
	seq = Integer.valueOf(seq_);
	
	BoardService boardSrv = Factory.INSTANCE.getBoardSrv();
	boardSrv.increaseCnt(seq);
	request.setAttribute("dto",boardSrv.getOne(seq));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<div id="wrap">
		<h1>게시글 상세</h1>
		<form action="./editCtrl.jsp" method="post">
		<input type="hidden" name="seq" value="${dto.seq}"/>
			<fieldset>
				<legend>글 내용</legend>
				<table>
					 <tbody>
                        <tr>
                            <th scope="row"><label for="title">제목</label></th>
                            <td>
                                <input type="text" id="title" name="title" value="${dto.title}"/>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="name"></label>닉네임</th>
                            <td><input type="text" id="name" name="name" value="${dto.name}" readonly/></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="content">내용</label></th>
                            <td>
                                <textarea name="content" cols="40" rows="10">${dto.content}</textarea>
                            </td>
                        </tr>
                        <tr>
                        	<th scope="row">등록일</th>
                        	<td>${dto.regdate}</td>
                        </tr>
                        <tr>
                        	<th scope="row">조회수</th>
                        	<td>${dto.cnt}</td>
                        </tr>          
                   </tbody>  
				</table>
			</fieldset>
			<button>글수정</button>
		</form>
		<ul>
			<li><a href="./deleteCtrl.jsp?seq=${dto.seq}">글삭제</a></li>
			<li><a href="./list.jsp">목록으로</a></li>
		</ul>
	</div>
</body>
</html>