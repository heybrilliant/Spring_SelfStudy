<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/swiper.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="js/index.js"></script>
<!-- Initialize Swiper -->

<title>캐리 마이페이지_일정등록</title>
<script src="js/includeHTML.js"></script>
<script src="js/includeRouter.js"></script>
</head>
<style>
.todaylist {
	text-align: center;
	width: 700px;
	height: 300px;
	background-color: gray;
}

.todaylist>li>img {
	width: 30px;
	height: 30px;
}

.todaylist>li {
	float: left;
}
</style>


<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/frame/header.jsp"%>


	<!-- Contents -->
	<div class="todaylist">
		<li><h3>오늘의 일정</h3>
			<img src="image/icon/edit.png"></li>
	</div>
	<!-- Contents end -->

	<!-- footer -->
	<%@ include file="/WEB-INF/views/frame/footer.jsp"%>