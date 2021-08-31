<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/find.css">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="/js/index.js"></script>

    <title>비밀번호 찾기</title>
    <script src="/js/includeHTML.js"></script>
    <script src="/js/includeRouter.js"></script>
</head>

<body>
	<!-- header -->
	<%@ include file="/WEB-INF/views/frame/header.jsp"%>



    <!-- Contents -->
    <div class="wrap wd668">
        <div class="container">
            <ul class="tab">
                <li>
                    <a class="sub_tit_txt" href="findid.html">아이디 찾기</a>
                </li>
                <li class="active">
                    <a class="sub_tit_txt" href="findpassword.html">비밀번호 찾기</a>
                </li>
            </ul>


            <div class="form_txtInput">
                <div class="find_form">
                    <table>
                        <tr>
                            <td>
                                <input id="regid" type="text" placeholder="가입시 등록하신 이름">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input id="regemail" type="text" placeholder="가입시 등록하신 이메일 주소">
                            </td>
                        </tr>
                    </table>
                    <div id="btnbox">
                        <div class="btn_wrap">
                            <a href="javascript:;">찾기</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/frame/footer.jsp"%>