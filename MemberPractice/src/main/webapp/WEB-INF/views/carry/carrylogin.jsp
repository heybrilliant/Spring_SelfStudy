<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<title>캐리 로그인</title>
<%@ include file="/WEB-INF/views/frame/metaheader.jsp"%>
</head>

<body>
	<!-- header -->
	<%@ include file="/WEB-INF/views/frame/header.jsp"%>


	<div class="wrap wd668">
		<div class="container">
			<div class="form_txtInput">
				<h1 class="sub_tit_txt">캐리 로그인</h1>
				<div class="login_form">

					<table>
						<colgroup>
							<col width="30%" />
							<col width="auto" />
						</colgroup>
						<tbody>
							<tr>
								<th><span>아이디</span></th>
								<td><input type="text"></td>
							</tr>
							<tr>
								<th><span>비밀번호</span></th>
								<td><input type="text"></td>
							</tr>
						</tbody>
					</table>

					<div class="selectbox">
						<input type="checkbox" value="아이디기억하기" id="rememberid">
						아이디 기억하기
					</div>

					<div id="btnbox">
						<div class="btn_wrap">
							<a href="javascript:;">로그인</a>
						</div>
						<a id="alter" href="memberlogin.html">멤버로그인</a><br>
						<!-- 언더라인, 캐리로그인 변환 링크 -->
					</div>
				</div>
				<!-- join_form E  -->

				<hr>
				<div class="change">
					<ul>
						<li><a href="memberReg.html">일반 회원가입</a></li>
						<li class="tab2"><a href="findid.html">아이디 찾기</a></li>
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