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

<%-- <c:if test="${memberLoginInfo}"> --%>
	
<!DOCTYPE html>




<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="loginform.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/index.js"></script>

<title>회원 로그인</title>
<script src="js/includeHTML.js"></script>
<script src="js/includeRouter.js"></script>
</head>

<body>
	<!-- header -->
	<%@ include file="/WEB-INF/views/frame/header.jsp"%>


	${index}

	<!-- footer -->
	<%@ include file="/WEB-INF/views/frame/footer.jsp"%>