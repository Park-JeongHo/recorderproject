<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<link rel="shortcut icon" href="${cpath}/resources/images/logo.png">

<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>



<title>복실복실</title>
<body style="background: linear-gradient(to right, #FFAFBD, #ffc3a0);">

	<div class="container">
		<div class="divider"></div>
		<!-- header -->
		<div class="section 1">
			<a href="${cpath}/home.do"><img
				src="${cpath}/resources/img/logo.png" style="width: 100px;"></a>
			<div class="btn-group"
				style="padding-left: 300px; padding-top: 70px;">
				<button type="button" class="btn"
					onclick="location.href='${cpath}/act.do'">감정분석</button>
				<button type="button" class="btn"
					onclick="location.href='${cpath}/eye.do'">안구질환</button>
				<button type="button" class="btn"
					onclick="location.href='${cpath}/dtl.do'">상세보기</button>
				<button type="button" class="btn"
					onclick="location.href='${cpath}/brd.do'">커뮤니티</button>
				<button type="button" class="btn"
					onclick="location.href='${cpath}/aban.do'">유기동물</button>
			</div>


			<div class="dropdown" style="float: right; margin-top: 35px;">
				<button type="button" class="btn btn-info btn-sm dropdown-toggle"
					data-toggle="dropdown" style="border-radius: 50px; height: auto;">info</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">검사기록실</a> <a
						class="dropdown-item" href="${cpath}/logout.do">로그아웃</a>
				</div>
			</div>
			<div class="chip"
				style="float: right; margin-top: 35px; background: beige;">
				<img src="${cpath}/resources/img/pf.png" alt="Contact Person">
				${m.user_name}님 환영합니다
			</div>


		</div>

		<div class="divider"></div>
		<!-- content-1 -->
		<div>pet news</div>
		<div class="section 2">

			<input type="radio" name="slide" id="slide01" checked
				style="background-color: coral;"> <input type="radio"
				name="slide" id="slide02" style="background-color: coral;">
			<input type="radio" name="slide" id="slide03"
				style="background-color: coral;">
			<div class="slidewrap">

				<ul class="slidelist">
					<!-- 슬라이드 영역 -->
					<li class="slideitem"><a> <img
							src="${cpath}/resources/img/news1.png">
					</a></li>
					<li class="slideitem"><a> <img
							src="${cpath}/resources/img/news2.png">
					</a></li>
					<li class="slideitem"><a> <img
							src="${cpath}/resources/img/news1.png">
					</a></li class="slideitem">

					<!-- 좌,우 슬라이드 버튼 -->
					<div class="slide-control">
						<div>
							<label for="slide03" class="left"><img
								src="${cpath}/resources/img/left.png"
								style="position: fixed; width: 50%; height: 50%; right: 240px; top: 180px;"></label>
							<label for="slide02" class="right"><img
								src="${cpath}/resources/img/right.png"
								style="position: fixed; width: 50%; height: 50%; left: 240px; top: 180px;"></label>
						</div>
						<div>
							<label for="slide01" class="left"><img
								src="${cpath}/resources/img/left.png"
								style="position: fixed; width: 50%; height: 50%; right: 240px; top: 180px;"></label>
							<label for="slide03" class="right"><img
								src="${cpath}/resources/img/right.png"
								style="position: fixed; width: 50%; height: 50%; left: 240px; top: 180px;"></label>
						</div>
						<div>
							<label for="slide02" class="left"><img
								src="${cpath}/resources/img/left.png"
								style="position: fixed; width: 50%; height: 50%; right: 240px; top: 180px;"></label>
							<label for="slide01" class="right"><img
								src="${cpath}/resources/img/right.png"
								style="position: fixed; width: 50%; height: 50%; left: 240px; top: 180px;"></label>
						</div>
					</div>

				</ul>
				<!-- 페이징 -->
				<ul class="slide-pagelist">
					<li><label for="slide01"></label></li>
					<li><label for="slide02"></label></li>
					<li><label for="slide03"></label></li>
				</ul>
			</div>


		</div>
		<!-- content-2 -->
		<div class="divider"></div>
		<div class="section 3">
			<jsp:include page="bottom.jsp"></jsp:include>

		</div>

		<!-- footer -->
		<div class="divider"></div>
		<div class="section 4">
			<div class="row">
				<div class="col-lg-4">
					<div class="widget">
						<h3>address</h3>
						<address>광주 송암동 CGI 센터</address>
						<ul class="list-unstyled links">
							<li>062-1234-1234</li>
							<li>010-1234-1234</li>
							<li>smhrd@gmail.com</li>
						</ul>
					</div>
					<!-- /.widget -->
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<div class="widget">
						<h3>Find Us</h3>
						<ul class="list-unstyled float-start links">
							<li><img id="map" src="${cpath}/resources/img/map.PNG"
								style="width: 360px; height: 220px; border: solid 1px;"></li>
						</ul>

					</div>
					<!-- /.widget -->
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<div class="widget">
						<h3>Links</h3>
						<ul class="list-unstyled links">

						</ul>

						<ul class="list-unstyled social" style="display: flex;">
							<li><a href="#"><span><i class="fa fa-instagram"
										style="font-size: 30px"></i></span></a></li>&nbsp;&nbsp;
							<li><a href="#"><span><i class="fa fa-twitter"
										style="font-size: 30px"></i></span></a></li>&nbsp;&nbsp;
							<li><a href="#"><span><i class="fa fa-facebook"
										style="font-size: 30px"></i></span></a></li>&nbsp;&nbsp;
							<li><a href="#"><span><i class="fa fa-linkedin"
										style="font-size: 30px"></i></span></a></li>&nbsp;&nbsp;
							<li><a href="#"><span><i class="fa fa-pinterest"
										style="font-size: 30px"></i></span></a></li>&nbsp;&nbsp;
							<li><a href="#"><span><i class="fa fa-dribbble"
										style="font-size: 30px"></i></span></a></li>
						</ul>
					</div>
					<!-- /.widget -->
				</div>
				<!-- /.col-lg-4 -->
			</div>
		</div>
	</div>



</body>
</html>

