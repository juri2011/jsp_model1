<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<div id="wrap">
		<form action="" method="post">
			<fieldset>
				<legend>미니블로그 로그인</legend>
				<ul>
					<li>
						<label for="userid">아이디</label>
						<input type="text" id="userid" name="userid" />
					</li>
					<li>
						<label for="password">비밀번호</label>
						<input type="password" id="password" name="password" />
					</li>
				</ul>
			</fieldset>
			<p><button>확인</button></p>
		</form>
	</div>
</body>
</html>