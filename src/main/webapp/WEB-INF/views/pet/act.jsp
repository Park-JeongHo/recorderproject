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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet" href="${cpath}/resources/css/style.css">


<link rel="stylesheet" href="${cpath}/resources/css/act.css">
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
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<!-- ?????????api -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	62582f56480dc12ba65e0f4ebe9c2204&libraries=services"></script>
<script>
	
</script>
<title>????????????</title>
<style type="text/css">
#btn-head {
	font-size: larger;
	box-shadow: none;
	font-family: 'KyoboHand'
}

#btn-head:hover {
	background-color: #ff7f50;
	color: white;
	font-family: 'KyoboHand'
}
</style>
<body style="background: linear-gradient(to right, #FFAFBD, #ffc3a0);">

	<div class="container">

		<!-- header -->
		<div class="section 1">
			<a href="${cpath}/home.do"><img
				src="${cpath}/resources/img/logo.png" style="width: 100px;"></a>
			<div class="btn-group" style="padding-left: 20px; padding-top: 70px;">
				<button type="button" class="btn" id="btn-head"
					onclick="location.href='${cpath}/act.do'"
					style="background-color: #ff7f50; color: white; font-family: 'KyoboHand';">????????????</button>
				<button type="button" class="btn" id="btn-head"
					onclick="location.href='${cpath}/eye.do'">????????????</button>
				<button type="button" class="btn" id="btn-head"
					onclick="location.href='${cpath}/dtl.do'">????????????</button>
				<button type="button" class="btn" id="btn-head"
					onclick="location.href='${cpath}/brd.do'">????????????</button>
				<button type="button" class="btn" id="btn-head"
					onclick="location.href='${cpath}/aban.do'">????????????</button>
			</div>
			<div class="dropdown" style="float: right; margin-top: 35px;">
				<button type="button" class="btn btn-info btn-sm dropdown-toggle"
					data-toggle="dropdown" style="border-radius: 50px; height: auto;">info</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="${cpath}/result.do">???????????????</a> <a
						class="dropdown-item" href="${cpath}/logout.do">????????????</a>
				</div>
			</div>
			<div class="chip"
				style="float: right; margin-top: 35px; background: beige;">
				<img src="${cpath}/resources/img/pf.png" alt="Contact Person">
				${m.user_name}??? ???????????????
			</div>
		</div>
		<div class="divider"></div>

		<div class="section 2" id="hide2">
			<img alt="..." src="${cpath}/resources/img/right.png"
				style="height: 3%; width: 3%; position: relative; left: 358px; top: 292px;">

			<img alt="..." src="${cpath}/resources/img/right.png"
				style="height: 3%; width: 3%; position: relative; left: 764px; top: 292px;">
			<div>

				<div
					class="card shadow p-3 mb-5 bg-body rounded animate__animated animate__backInUp"
					style="width: 21rem; float: left; text-align: center;">
					<img src="${cpath}/resources/img/act_1.jpg" class="card-img-top"
						alt="...">
					<div class="card-body">

						<h5 class="card-title" style="text-align: center;">???</h5>
						<p class="card-text" style="font-family: 'KyoboHand'; font-size: larger;">?????? ?????????
							????????? ????????? ?????????????</p>
						<br>
						<p class="card-text" style="font-family: 'KyoboHand'; font-size: larger;">???????????????
							????????? ?????? ???????????????!</p>
						<div class="d-flex align-items-center">
							<div class="flex-shrink-0"></div>

						</div>
					</div>
				</div>



				<div
					class="card shadow p-3 mb-5 bg-body rounded animate__animated animate__backInUp animate__delay-1s"
					style="width: 21rem; float: left; margin-left: 10%; margin-right: 10%;">
					<img src="${cpath}/resources/img/cat2.jpg" class="card-img-top"
						alt="...">
					<div class="card-body" style="text-align: center;">

						<h5 class="card-title">???</h5>
						<p class="card-text" style="font-family: 'KyoboHand'; font-size: larger;">2000?????????
							???????????? ?????????</p>
						<br>
						<p class="card-text" style="font-family: 'KyoboHand'; font-size: larger;">AI???
							?????????????????????!</p>
						<div class="d-flex align-items-center">
							<div class="flex-shrink-0"></div>

						</div>
					</div>
				</div>
				<div
					class="card shadow p-3 mb-5 bg-body rounded animate__animated animate__backInUp animate__delay-2s"
					style="width: 25rem; width: 21rem; text-align: center; position: relative; top: 7px;">
					<img src="${cpath}/resources/img/cat3.jpg" class="card-img-top"
						alt="...">
					<div class="card-body">

						<h5 class="card-title">???</h5>
						<p class="card-text"></p>
						<br>

						<p class="card-text" style="font-family: 'KyoboHand'; font-size: larger;">???????????????
							??????????????? ????????????!</p>
						<br>

						<div class="d-flex align-items-center">
							<div class="flex-shrink-0"></div>

						</div>
					</div>
				</div>

			</div>







			<div class="wrap">
				<button class="button" id="hide1"
					style="position: relative; left: 13em; top: -1em; font-family: 'KyoboHand';">Next</button>
			</div>


		</div>


		<!--             ????????? 2                                        -->
		<br>
		<h1 style="text-align: center; display: none; font-family: 'Katuri';"
			id="title">?????? ????????? ???????????????!!!</h1>

		<br>

		<div class="wrapper" id="hide3" style="display: none">

			<div>
				<img src="${cpath}/resources/img/dan1.PNG">
			</div>

			<div>
				<img src="${cpath}/resources/img/dan2.PNG">
			</div>

			<div>
				<img src="${cpath}/resources/img/dan3.PNG">
			</div>

			<div>
				<img src="${cpath}/resources/img/dan4.PNG">
			</div>

			<div>
				<img src="${cpath}/resources/img/dan5.PNG">
			</div>

		</div>

		<!--             ????????? 3                                        -->


		<div class="container" style="margin-bottom: 10em;">

			<!-- Trigger the modal with a button -->
			<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
				data-target="#myModal" id="modal1"
				style="margin-left: 67em; margin-top: -8em;; display: none;">next</button>

			<!-- Modal -->
			<div class="modal fade" id="myModal" role="dialog"
				style="padding-left: 17px; background-color: transparent; box-shadow: revert;">
				<div class="modal-dialog">

					<!-- Modal content-->
					<form method="post" enctype="multipart/form-data">
						<div class="modal-content"
							style="width: 42em; height: fit-content;">


							<jsp:include page="petemotion_detect.jsp"></jsp:include>

						</div>
				</div>
				</form>
			</div>

		</div>






		<!-- footer -->
		<div class="divider"></div>
		<div class="section 4">
			<div class="row">
				<div class="col-lg-4">
					<div class="widget">
						<h3>address</h3>
						<address>?????? ????????? CGI ??????</address>
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
<script src="${cpath}/resources/js/act.js"></script>

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
