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
<!-- 카카오api -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	62582f56480dc12ba65e0f4ebe9c2204&libraries=services"></script>
<script type="text/javascript">
$(document).ready(() => {
	var frm = $("#frm");
		$(".pagination a").on("click", function(e){
			e.preventDefault(); // 태그의 본연의 기능을 막는 함수
			var page = $(this).attr("href");  //attr : 어트리튜브
			// location.href = "${cpath}/list.do?page="+page;  비추
			$("#page").val(page);
			frm.submit(); // 전송
		});
	});
</script>

<title>복실복실</title>




</head>
<style type="text/css">
:root { -
	-surface-color: #fff; -
	-curve: 40;
}

body {
	font-family: 'Noto Sans JP', sans-serif;
}

.cards {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	gap: 2rem;
	margin: 4rem 5vw;
	padding: 0;
	list-style-type: none;
}

.card {
	position: relative;
	display: block;
	height: 100%;
	border-radius: calc(var(- -curve)* 1px);
	overflow: hidden;
	text-decoration: none;
}

.card__image {
	width: 100%;
	height: 100%;
}

.card__overlay {
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
	z-index: 1;
	background-color: var(- -surface-color);
	transform: translateY(100%);
	transition: .2s ease-in-out;
}

.card:hover .card__overlay {
	transform: translateY(0);
}

.card__header {
	position: relative;
	display: flex;
	align-items: center;
	gap: 2em;
	padding: 15px;
	background-color: var(- -surface-color);
	transform: translateY(-100%);
	transition: .2s ease-in-out;
}

.card__arc {
	width: 80px;
	height: 80px;
	position: absolute;
	bottom: 100%;
	right: 0;
	z-index: 1;
}

.card__arc path {
	fill: var(- -surface-color);
	d: path("M 40 80 c 22 0 40 -22 40 -40 v 40 Z");
}

.card:hover .card__header {
	transform: translateY(0);
}

.card__thumb {
	flex-shrink: 0;
	width: 50px;
	height: 50px;
	border-radius: 50%;
}

.card__title {
	font-size: 1em;
	margin: 0 0 .3em;
	color: #6A515E;
}

.card__tagline {
	display: block;
	margin: 1em 0;
	font-family: "MockFlowFont";
	font-size: .8em;
	color: #D7BDCA;
}

.card__status {
	font-size: .8em;
	color: #D7BDCA;
}

.card__description {
	padding: 0 2em 2em;
	margin: 0;
	color: #D7BDCA;
	font-family: "MockFlowFont";
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 3;
	overflow: hidden;
	text-overflow: ellipsis;
	display: inline-block;
}
</style>

<body style="background: linear-gradient(to right, #FFAFBD, #ffc3a0);">
	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">Modal Header</h4>
				</div>
				<div class="modal-body">
					<p>Some text in the modal.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

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
				<button type="button" class="btn btn-outline-info active"
					onclick="location.href='${cpath}/brd.do'">커뮤니티</button>
				<button type="button" class="btn"
					onclick="location.href='${cpath}/aban.do'">유기동물</button>
			</div>
			<div class="dropdown" style="float: right; margin-top: 35px;">
				<button type="button" class="btn btn-info btn-sm dropdown-toggle"
					data-toggle="dropdown" style="border-radius: 50px; height: auto;">info</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="${cpath}/result.do">검사기록실</a> <a
						class="dropdown-item" href="${cpath}/logout.do">로그아웃</a>
				</div>
			</div>
			<div class="chip"
				style="float: right; margin-top: 35px; background: beige;">
				<img src="${cpath}/resources/img/pf.png" alt="Contact Person">
				${m.user_name}님 환영합니다
			</div>
		</div>
		

		<div class="section 2" style="box-sizing: content-box;">

			<table class="table">
				<tr>
					<td style="width: 100px">제목</td>
					<td>${vo.brd_title}</td>
				</tr>
				<tr>
					<td>내용</td>
					<td>${fn:replace(vo.brd_content,replaceChar,"<br>")}</td>
				</tr>
				<tr>
					<td>이미지</td>
					<td><img id="brd_img"
						src="${cpath}/resources/img/brdimg/${vo.brd_img}"
						class="card__image"
						onerror="this.src='${cpath}/resources/img/dog.jpg'" style="width: 300px;"/>
						<button style="position: relative;
    top: 130px;" type="button" class="btn btn-outline-info"
						onclick="location.href='${cpath}/brd.do'">목록</button>
						<div class="card__overlay"></td>
				</tr>
				<tr>
				</tr>
				<tr>
					
					<%-- <td colspan="2" style="text-align: center">
										<button data-oper="reply" class="btn btn-sm btn-info" ${!empty m.memId  ? '':'disabled'}>답글</button>
										<button data-oper="update" class="btn btn-sm btn-primary" ${m.memId eq vo.memId ? '':'disabled'}>수정</button>
										<button data-oper="delete" class="btn btn-sm btn-warning" ${m.memId eq vo.memId ? '':'disabled'}>삭제</button>
										<button data-oper="list" class="btn btn-sm btn-success">목록</button>
									</td> --%>
				</tr>
			</table>

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
						<div id="map2"
							style="width: 360px; height: 220px; border: solid 1px;"></div>
						<ul class="list-unstyled float-start links">
							<li></li>

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
<script type="text/javascript">

var container = document.getElementById('map2');
var option = {
		 center : new kakao.maps.LatLng(35.1104947, 126.8777619),
		 level : 3
};

 var map2 = new kakao.maps.Map(container, option);
 
 var markerPosition = new kakao.maps.LatLng(35.1104947, 126.8777619);
 
 var marker = new kakao.maps.Marker({
	 position : markerPosition
 });
 
 marker.setMap(map2);
	
</script>
</html>
