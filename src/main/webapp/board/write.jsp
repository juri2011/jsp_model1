<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("userid")==null){
		response.sendRedirect("./login.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<div id="wrap">
		<h1>게시글 입력</h1>
		<form action="./writeCtrl.jsp" method="post">
			<fieldset>
				<legend>글 내용</legend>
				<table>
					 <tbody>
					 	<tr>
                            <th scope="row"><label for="userid">아이디</label></th>
                            <td>
                                <input type="text" id="userid" name="userid" value="${userid}" readonly/>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="name">이름</label></th>
                            <td>
                                <input type="text" id="name" name="name" value="${name}" readonly/>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="title">제목</label></th>
                            <td>
                                <input type="text" id="title" name="title" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="content">내용</label></th>
                            <td>
                                <textarea name="content" cols="40" rows="10"></textarea>
                            </td>
                        </tr>
                   </tbody>  
				</table>
			</fieldset>
			<button>글작성</button>
		</form>
	</div>
</body>
</html>