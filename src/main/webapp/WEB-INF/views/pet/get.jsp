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
<script type="text/javascript">
	$(document).ready(function() {

		$("button").on("click", function(e) {
			var frm = $("#frm");
			frm.attr("action", "${cpath}/dtl.do");
			frm.attr("method", "get");
			frm.submit();
		});

	});
</script>

<title>복실복실</title>
</head>
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








		<div class="section sec-testimonials">
			<div class="container">
				<hr>
				<div class="row mb-5 align-items-center">

					<div class="col-md-6">
						<h2 class="font-weight-bold heading text-primary mb-4 mb-md-0">질환의
							상세정보를 알아봅시다</h2>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-4"></div>
				</div>
				<div class="testimonial-slider-wrap">
					<div class="testimonial-slider">

						<div class="item">
							<div class="testimonial">
								<img src="${cpath}/resources/img/disease/${dtl.dtl_seq}.jpg"
									alt="Image" class="img-fluid rounded-circle w-50 mb-1">

								<h3 class="h5 text-primary mb-4"
									style="position: relative; top: 10px;">${dtl.dtl_title}</h3>
								<blockquote>
									<p>&ldquo;${dtl.dtl_info}&rdquo;</p>
								</blockquote>
								<h5>관리 방법</h5>
								<p class="text-black-50">${dtl.dtl_mgmt}</p>
							</div>
							<button class="btn btn-success btn-sm">목록</button>
						</div>

						<form id="frm">
							<input type="hidden" name="dtl_seq" value="${dtl.dtl_seq}">

						</form>





					</div>

				</div>

			</div>

		</div>


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
