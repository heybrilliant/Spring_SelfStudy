<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/swiper.css">
<link rel="stylesheet" href="regform.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="js/index.js"></script>


<title>일반회원 회원가입</title>
<script src="js/includeHTML.js"></script>
<script src="js/includeRouter.js"></script>
</head>

<body>
	<!-- header -->
	<%@ include file="/WEB-INF/views/frame/header.jsp"%>

	<div class="wrap wd668">
		<div class="container">
			<div class="form_txtInput">
				<h1 class="sub_tit_txt">회원 회원가입</h1>
				<p class="exTxt">회원가입시 이메일 인증을 반드시 진행하셔야 합니다.</p>
				<form method="post" enctype="multipart/form-data">
					<div class="join_form">
						<div class="profile_form">
							<img src="image/icon/profile.png"><br> <a
								href="<input type=" file" name="memphoto">">프로필 사진 등록</a>
						</div>
						<table>
							<colgroup>
								<col width="30%" />
								<col width="auto" />
							</colgroup>
							<tbody>
								<tr>
									<th><span>이름</span></th>
									<td><input type="text" placeholder=""></td>
								</tr>

								<tr class="email">
									<th><span>이메일</span></th>
									<td><input type="text" class="email"
										placeholder="id@email.com/net 형식으로 입력해주세요."> <!-- <a href="javascript:;" class="btn_confirm">인증메일 발송</a> -->
									</td>
								</tr>

								<tr>
									<th><span>비밀번호</span></th>
									<td><input type="text" placeholder="비밀번호를 입력해주세요."></td>
								</tr>
								<tr>
									<th><span>비밀번호 확인</span></th>
									<td><input type="text" placeholder="비밀번호를 확인하세요"></td>
								</tr>

								<tr>
									<th><span>닉네임</span></th>
									<td><input type="text" placeholder=""></td>
								</tr>

								<tr>
									<th><span>휴대폰 번호</span></th>
									<td><input type="text" placeholder="11자리 형식의 숫자로만 입력해주세요."></td>
								</tr>

								<tr>
									<th><span>생년월일</span></th>
									<td><input type="text" placeholder="8자리 형식의 숫자로만 입력해주세요."></td>
								</tr>
								<tr>
									<th><span>성별</span></th>
									<td>
										<div class="selectbox">
											<input type="radio" name="choice" value="남자"> 남자 <input
												type="radio" name="choice" value="여자"> 여자
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="exform_txt">
							<span>표시는 필수적으로 입력해주셔야 가입이 가능합니다.</span>
						</div>
					</div>
					<!-- join_form E  -->
				</form>
				<div id="btnbox">
					<div class="btn_wrap">
						<a href="javascript:;">회원가입</a>
					</div>
					<div class="btn_wrap2">
						<a href="javascript:;">취소</a>
					</div>
				</div>
			</div>
			<!-- form_txtInput E -->
		</div>
		<!-- content E-->
	</div>
	<!-- container E -->




	<!-- footer -->
	<%@ include file="/WEB-INF/views/frame/footer.jsp"%>