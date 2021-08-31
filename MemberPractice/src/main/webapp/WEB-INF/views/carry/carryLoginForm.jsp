<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Practice : 캐리 로그인</title>

<%@ include file="/WEB-INF/views/frame/metaheader.jsp" %>

</head>
<body>

<%@ include file="/WEB-INF/views/frame/header.jsp" %>

	<div id="content">
		<h2>캐리 Login</h2>
		<hr>

		<form method="post">

			<table>
				<tr>
					<th>ID</th>
					<td><input type="text" name="carryid" 
					value="${cookie.reid.value}"></td>
				</tr>
				<tr>
					<th>PW</th>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<th></th>
					<td>
						<input type="checkbox" name="reid" value="on" 
						${cookie.reid ne null? 'checked' : ''}> 아이디 기억하기</td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit"></td>
				</tr>
			</table>

		</form>
	</div>
	
	
</body>
</html>