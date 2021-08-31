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

<c:if test="${loginChk}"/> 
	
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


	<div class="wrap wd668">
		<div class="container">
			<div class="form_txtInput">
				<h1 class="sub_tit_txt">회원 로그인</h1>
				<div class="login_form">

					<table>
						<colgroup>
							<col width="30%" />
							<col width="auto" />
						</colgroup>
						<tbody>
							<tr>
								<th><span>아이디</span></th>
								<td><input type="text" name="memberid"
									value="${cookie.reid.value}"></td>
							</tr>
							<tr>
								<th><span>비밀번호</span></th>
								<td><input type="text" name="password"></td>
							</tr>
						</tbody>
					</table>

					<div class="selectbox">
						<input type="checkbox" value="on" id="rememberid"
							${cookie.reid ne null? 'checked' : ''}> 아이디 기억하기
						<input type="hidden" name="redirectUri" value="${redirectUri ne null ? redirectUri : ''}">
						
					</div>

					<div id="btnbox">
						<div class="btn_wrap">
							<a href="javascript:;">로그인</a>
						</div>
						<a id="alter" href="carrylogin.html">캐리로그인</a><br>
						<!-- 언더라인, 캐리로그인 변환 링크 -->
					</div>
				</div>
				<!-- join_form E  -->

				<hr>
				<div class="change">
					<ul>
						<li><a href="memberReg.html">일반 회원가입</a></li>
						<li class="tab2"><a href="findid.html">아이디 찾기</a></li>
						<!-- <a href="<c:url value='주소'/>"> -->
						<li class="tab2"><a href="findpassword.html">비밀번호 찾기</a></li>
					</ul>
				</div>
			</div>
			<!-- form_txtInput E -->
		</div>
		<!-- content E-->
	</div>
	<!-- container E -->



	<!-- footer -->
	<%@ include file="/WEB-INF/views/frame/footer.jsp"%>