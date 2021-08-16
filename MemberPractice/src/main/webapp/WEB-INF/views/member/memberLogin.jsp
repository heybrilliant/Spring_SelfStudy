<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${memberLoginInfo eq null}">
<!-- 또는 ${not memberLoginChk} 도 가능함 -->
<script>
	alert("[!] 아이디 또는 비밀번호가 일치하지 않습니다.\n[!] 다시 시도해주세요.");
	history.go(-1);
</script>
</c:if>

<c:if test="${memberLoginInfo}"> <!-- 또는 ${memberLoginChk} -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Practice : 일반회원 로그인</title>

<%@ include file="/WEB-INF/views/frame/metaheader.jsp" %>

</head>
<body>

<%@ include file="/WEB-INF/views/frame/header.jsp" %>
<%@ include file="/WEB-INF/views/frame/nav.jsp" %>

	<div id="content">
		<h2>일반회원 Login</h2>
		<hr>
		<h2>
			${memberLoginInfo}
		</h2>
	</div>
</body>
</html>
</c:if>