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
	
	</body>
	<script>
	var empJ = false;
	var emailJ = false;
	var pwJ = false;
	var nameJ = false;
	var nickJ = false;
	var phoneJ = false;
	var birthJ = false;

	//모든 공백체크 
	var empJ = /\s/g;
	// 이메일 정규식
	var emailJ = /^[0-9a-zA-Z_+.-]+@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,4}$/;
	// 비밀번호 정규식 (영문 숫자 특문 6글자이상 12글자미만)
	var pwJ = /^[a-z0-9]{6,20}$/;
	// 이름 정규식 (한글, 영어2-6자내로 가능)
	var nameJ = /^[가-힣a-zA-Z]{2,6}$/;
	// 닉네임 정규식 (한글 영어 가능)
	var nickJ = /^[가-힣a-zA-Z]$/;
	// 핸드폰 번호 정규식
	var phoneJ = /^([0-9]{11})$/;
	// 생일 정규식
	var birthJ = /^[0-9]{8}$/;

/* 이름 */
	console.log('이름 도달');
	$("#memname").focusout(function() {
		if ($('#memname').val() == "") {
			$('#namecheck').text("필수 입력값입니다.");
			$('#namecheck').css("color", "red");
			$("#joinsubmit").attr("disabled", true);
		} else {
			if (!nameJ.test(memname)) {
			$("#namecheck").text("");
			$("#joinsubmit").attr("disalbed", false);
		} else if ($("#memname").val().length > 6) {
			$('#namecheck').text("2~6글자 사이의 한글/영어로만 입력해주세요.");
			$('#namecheck').css("color", "red");
			$("#joinsubmit").attr("disalbed", true);
		} else if( $("#memname").val().length < 2){
			$('#namecheck').text("2~6글자 사이의 한글/영어로만 입력해주세요.");
			$('#namecheck').css("color", "red");
			$("#joinsubmit").attr("disalbed", true);
		} else {
			$('#namecheck').text("");
			$('#namecheck').hide();
		}
		}
		error: console.log('이름 실패');
	});

/* 이메일 */
	console.log('이메일 도달');
	$("#mememail").focusout(function() {
		var mememail = $('#mememail').val();
		$.ajax({
			url : 'join/memberemailCheck',
			method : 'POST',
			dataType : "json",
			data : {
				"mememail" : $("#mememail").val()
			},
			success : function(result) {
				console.log("중복:1 // 노중복:0>> " + result);
				if (result == 1) {
					// 1 : 이메일 중복
					$("#emailcheck").text("이미 사용 중인 이메일입니다. 다른 이메일을 사용해주세요.");
					$("#emailcheck").css("color", "red");
					$("#joinsubmit").attr("disabled", true);
				} else {
					if (emailJ.test(mememail)) {
						$("#emailcheck").text("");
						$("#joinsubmit").attr("disalbed", false);
					} else if ($('#mememail').val() == "") {
						$("#emailcheck").text("이메일을 입력해주세요.");
						$("#emailcheck").css("color", "red");
						$("#joinsubmit").attr("disabled", true);
					} else {
						$("#emailcheck").text("이메일 형식으로 입력해주세요.");
						$("#emailcheck").css("color", "red");
						$("#joinsubmit").attr("disabled", true);
					}
				}
			},
			error : function(result) {
				console.log('실패');
				console.log(result);

			}
		})
	});

/* 비밀번호  */
	console.log('패스워드 도달');
	$("#mempw").focusout(function() {
		if ($('#mempw').val() == "") {
			$('#pwcheck').text('필수 입력값입니다.');
			$('#pwcheck').css('color', 'red');
			$("#joinsubmit").attr("disabled", true);
		} else if ($("#mempw").val().length < 6) {
			$('#pwcheck').text('6~20자의 영문 소문자, 숫자만 사용가능합니다');
			$('#pwcheck').css('color', 'red');
			$("#joinsubmit").attr("disabled", true);
		} else {

			$('#pwcheck').hide();
			pwJ = true;
		}
		error: console.log('pw 실패');
	});

	$("#repw").focusout(function() {

		if ($("#repw").val() != $("#mempw").val()) {
			$("#repwcheck").html("비밀번호가 다릅니다. 다시 확인해주세요.");
			$("#repwcheck").css("color", 'red');
			pwJ = false;

		} else {
			$("#repwcheck").html("");
			$("#repwcheck").css("color", 'blue');
			pwJ = true;
		}
	});

	$("#mempw").focusout(function() {

		if ($("#mempw").val() != $("#repw").val()) {
			$("#repwcheck").html("비밀번호가 다릅니다. 다시 확인해주세요.");
			$("#repwcheck").css("color", 'red');
			pwJ = false;
		} else {
			$("#repwcheck").html("비밀번호가 일치합니다.");
			$("#repwcheck").css("color", 'blue');
			pwJ = true;
		}
	});
	
/* 닉네임 */
	$("#memnick").focusout(function() {

		if ($('#memnick').val() == "") {
			$('#nickcheck').text('필수 입력값입니다.');
			$('#nickcheck').css('color', 'red');
			$("#joinsubmit").attr("disabled", true);
		} else if (nickJ.test(memnick)) {
			$("#nickcheck").html("한글, 영문만 입력 가능합니다.");
			$("#nickcheck").css("color", 'red');
			pwJ = false;
		} else {
			$("#nickcheck").html("");
			$("#nickcheck").hide();
			pwJ = true;
		}
	});


/* 핸드폰 번호 */
	$("#memphone").focusout(function() {
		if ($('#memphone').val() == "") {
			$('#phonecheck').text('필수 입력값입니다.');
			$('#phonecheck').css('color', 'red');
			$("#joinsubmit").attr("disabled", true);
		} else if (!phoneJ.test($(this).val())) {
			$('#phonecheck').text('숫자만 입력 가능합니다.');
			$('#phonecheck').css('color', 'red');
			$("#joinsubmit").attr("disabled", true);
			phoneJ = false;
		} else {
			$("#phonecheck").html("");
			$("#phonecheck").hide();
			phoneJ = true;
		}
	});

/* 생년월일 */
console.log("생년월일 도달");
$("#membirth").focusout(function(){
			var dateStr = $(this).val();	
			console.log(dateStr);
		    var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
		    var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
		    var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
		    var today = new Date(); // 날짜 변수 선언
		    var yearNow = today.getFullYear(); // 올해 연도 가져옴
			
		    if (dateStr.length <=8) {
				// 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
			    if (1900 > year || year > yearNow){
			    	
			    	$('#birthcheck').text('생년월일을 확인해주세요.');
					$('#birthcheck').css('color', 'red');
			    	
			    }else if (month<1 || month>12) {
			    		
			    	$('#birthcheck').text('생년월일을 확인해주세요.');
					$('#birthcheck').css('color', 'red'); 
			    
			    }else if (day<1 || day>31) {
			    	
			    	$('#birthcheck').text('생년월일을 확인해주세요.');
					$('#birthcheck').css('color', 'red');
			    	
			    }else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
			    	 
			    	$('#birthcheck').text('생년월일을 확인해주세요.');
					$('#birthcheck').css('color', 'red'); 
			    	 
			    }else if (month == 2) {
			    	 
			       	var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
			       	
			     	if (day>29 || (day==29 && !isleap)) {
			     		
			     		$('#birthcheck').text('생년월일을 확인해주세요.');
						$('#birthcheck').css('color', 'red'); 
			    	
					}else{
						$('#birthcheck').text('');
						birthJ = true;
					}//end of if (day>29 || (day==29 && !isleap))
			     	
			    }else {
			    	
			    	$('#birthcheck').text(''); 
					birthJ = true;
					}//end of if
				
					}else{
					//1.입력된 생년월일이 8자 초과할때 :  auth:false
						$('#birthcheck').text('생년월일을 확인해주세요.');
						$('#birthcheck').css('color', 'red');  
				} 
			}); 

</script>
</html>