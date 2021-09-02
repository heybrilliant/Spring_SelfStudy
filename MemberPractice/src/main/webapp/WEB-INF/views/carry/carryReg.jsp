<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="regform.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/index.js"></script>

<title>캐리 회원가입</title>
<script src="js/includeHTML.js"></script>
<script src="js/includeRouter.js"></script>
<script>
// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
	$("#user_id").blur(function() {
		// id = "id_reg" / name = "userId"
		var user_id = $('#user_id').val();
		$.ajax({
			url : '${pageContext.request.contextPath}/user/idCheck?userId='+ user_id,
			type : 'get',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : "+ data);							
				
				if (data == 1) {
						// 1 : 아이디가 중복되는 문구
						$("#id_check").text("사용중인 아이디입니다 :p");
						$("#id_check").css("color", "red");
						$("#reg_submit").attr("disabled", true);
					} else {
						
						if(idJ.test(user_id)){
							// 0 : 아이디 길이 / 문자열 검사
							$("#id_check").text("");
							$("#reg_submit").attr("disabled", false);
				
						} else if(user_id == ""){
							
							$('#id_check').text('아이디를 입력해주세요 :)');
							$('#id_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);				
							
						} else {
							
							$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다 :) :)");
							$('#id_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);
						}
						
					}
				}, error : function() {
						console.log("실패");
				}
			});
		});
</script>
</head>

<body>
	<!-- header -->
	<%@ include file="/WEB-INF/views/frame/header.jsp"%>


	<div class="wrap wd668">
		<div class="container">
			<div class="form_txtInput">
				<h1 class="sub_tit_txt">캐리 회원가입</h1>
				<p class="exTxt">회원가입시 이메일 인증을 반드시 진행하셔야 합니다.</p>
				<div class="join_form">
					<div class="profile_form">
						<img src="image/icon/profile.png"><br> <a
							href="<input type=" file" name="carryphoto">">프로필 사진 등록</a>
					</div>
					<colgroup>
						<col width="30%" />
						<col width="auto" />
					</colgroup>
					<tbody>
						<th><span>이름</span></th>
						<td><input type="text" placeholder=""></td>

						<th><span>이메일</span></th>
						<td><input type="text" class="email"
							placeholder="id@email.com/net 형식으로 입력해주세요."> <!-- <a href="javascript:;" class="btn_confirm">인증메일 발송</a> -->
						</td>
						<th><span>비밀번호</span></th>
						<td><input type="text" placeholder="비밀번호를 입력해주세요."></td>
						<th><span>비밀번호 확인</span></th>
						<td><input type="text" placeholder="비밀번호를 확인하세요"></td>

						<th><span>소속플레이스</span></th>
						<div class="place">
							<button type="submit">
								<a href="#"><img src="image/icon/search_icon.png"
									alt="search"></a>
							</button>
							<td><input type="text" placeholder=""></td>
						</div>

						<th><span>닉네임</span></th>
						<td><input type="text" placeholder=""></td>

						<th><span>휴대폰 번호</span></th>
						<td><input type="text" placeholder="11자리 형식의 숫자로만 입력해주세요."></td>

						<th><span>생년월일</span></th>
						<td><input type="text" placeholder="8자리 형식의 숫자로만 입력해주세요."></td>
						<th><span>성별</span></th>
						<td><input type="radio" name="choice" value="남자"> 남자
							<input type="radio" name="choice" value="여자"> 여자</td>
					</tbody>
					<div class="exform_txt">
						<span>표시는 필수적으로 입력해주셔야 가입이 가능합니다.</span>
					</div>
				</div>
				<!-- join_form E  -->
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


	<!-- Contents end -->



	<!-- footer -->
	<%@ include file="/WEB-INF/views/frame/footer.jsp"%>