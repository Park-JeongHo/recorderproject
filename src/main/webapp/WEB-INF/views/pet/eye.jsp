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
<link rel="stylesheet" href="${cpath}/resources/css/eye.css">
<link rel="shortcut icon" href="${cpath}/resources/images/logo.png">

<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
<!-- 카카오api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	62582f56480dc12ba65e0f4ebe9c2204&libraries=services"></script>
<script>
$(document).ready(function(){ 
    $("#submitButton").click(function(){
        $(".close").click();
    });
    
});
</script>
<style type="text/css">
#btn-head{
	
font-size: larger;
    box-shadow: none;
    font-family: 'KyoboHand'
}
#btn-head:hover{
	
background-color: #ff7f50;
color: white;
font-family: 'KyoboHand'
    
}
</style>
<title>복실복실</title>
<body style="background: linear-gradient(to right, #FFAFBD, #ffc3a0);">

	<div class="container">
		<div class="divider"></div>
		<!-- header -->
		<div class="section 1">
			<a href="${cpath}/home.do"><img
				src="${cpath}/resources/img/logo.png" style="width: 100px;"></a>
			<div class="btn-group"
				style="padding-left: 20px; padding-top: 70px;">
				<button type="button" class="btn" id = "btn-head"
					onclick="location.href='${cpath}/act.do'">감정분석</button>
				<button type="button" class="btn" id ="btn-head"
					onclick="location.href='${cpath}/eye.do'"  style="background-color: #ff7f50;
color: white;
font-family: 'KyoboHand';">안구질환</button>
				<button type="button" class="btn" id ="btn-head"
					onclick="location.href='${cpath}/dtl.do'">상세보기</button>
				<button type="button" class="btn" id ="btn-head"
					onclick="location.href='${cpath}/brd.do'">커뮤니티</button>
				<button type="button" class="btn" id ="btn-head"
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
		<div class="divider"></div>
		<br> <br>
		<h1 style="text-align: center; font-family: Katuri;
    font-size: xxx-large;
    text-align: center;" id="eye_title">검사하는 반려 동물의 종은
			무엇입니까?</h1>
		<div class="section 2" style="margin-top: 6em;">
			<div>

				<div
					class="card shadow p-3 mb-5 bg-body rounded animate__animated animate__fadeIn animate__slow"
					style="width: 30rem; float: left; text-align: center; margin-right: -1rem; margin-left: 11rem;"
					id="eyedog">
					<img src="${cpath}/resources/img/eye_dog.jpg" class="card-img-top"
						alt="...">
					<div class="card-body">

						<h5 class="card-title" style="text-align: center;">①</h5>

						<br>
						<p class="card-text">강아지</p>
						<div class="d-flex align-items-center">
							<div class="flex-shrink-0"></div>

						</div>
					</div>
				</div>

				<div
					class="card shadow p-3 mb-5 bg-body rounded animate__animated animate__fadeIn animate__slower"
					style="width: 30rem; float: left; text-align: center; margin-left: 23em;"
					id="eyecat">
					<img src="${cpath}/resources/img/eye_cat.jpg" class="card-img-top"
						alt="...">
					<div class="card-body">

						<h5 class="card-title" style="text-align: center;">②</h5>

						<br>
						<p class="card-text">고양이</p>
						<div class="d-flex align-items-center">
							<div class="flex-shrink-0"></div>

						</div>
					</div>
				</div>



			</div>


			<!-- 2페이지 -->


			<div id="page2" style="display: none">
				<h1 style="text-align: center;">ⓘ 사진 업로드 시, 주의사항 !</h1>
				<div style="text-align: right; margin-right: 4em;">
					<h2>올바른 예시</h2>
					<img alt="..." src="${cpath}/resources/img/O.PNG"
						style="width: 22%;"> <img alt="..."
						src="${cpath}/resources/img/O2.PNG" style="width: 21%;"> <br>
					<br> <br>
					<h2>잘못된 예시</h2>
					<img alt="..." src="${cpath}/resources/img/X.PNG"
						style="width: 20%;"> <img alt="..."
						src="${cpath}/resources/img/X2.PNG" style="width: 21%;">

					<div
						style="text-align: left; width: 50%; margin: 0%; position: relative; top: -22em; font-size: large;">
						<p>- 자동 보정 해제 및 촬영시 확대하지 말것</p>

						<br>
						<p>- 초점이 맞지 않을 경우 재촬영(눈동자에 초점을 맞추도록 함)</p>
						<br>
						<p>- 강아지의 시선을 돌려 흰자가 찍힐 수 있도록 촬영</p>


					</div>

				</div>


			</div>
			<!-- 3번째 페이지 -->
			<div class="container" style="margin-bottom: 10em;">

				<!-- Trigger the modal with a button -->
				<button type="button" class="btn btn-info btn-lg"
					data-toggle="modal" data-target="#myModal" id="modal1"
					style="margin-left: 67em; margin-top: -8em;; display: none;">next</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal" role="dialog"
					style="padding-left: 17px; background-color: transparent; box-shadow: revert;">
					<div class="modal-dialog">

						<!-- Modal content-->
						<form method="post" enctype="multipart/form-data">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>

								</div>
								<div class="modal-body">
									<div id="root">
										<h2 class="title">File Upload</h2>
										<hr>
										<div class="contents">
											<div class="upload-box"
												style="position: relative; left: 185px;">

												<div id="drop-file" class="drag-file">
													<img
														src="https://img.icons8.com/pastel-glyph/2x/image-file.png"
														alt="파일 아이콘" class="image">
													<p class="message">Drag files to upload</p>
												</div>
												<label class="file-label" for="chooseFile">Choose
													File</label> <input class="file" id="chooseFile" type="file"
													accept="image/*" onchange="loadFile(this)"
													onchange="dropFile.handleFiles(this.files)">

											</div>

											<div id="files" class="files">
												<div class="file"></div>
											</div>
										</div>
									</div>
								</div>
								<div class="container">
									<div class="image-upload" id="image-upload">

										<div class="fileContainer">
											<div class="fileInput">
												<p>FILE NAME:</p>
												<p id="fileName"></p>
											</div>
											<div class="buttonContainer">
												<div class="submitButton" id="submitButton">SUBMIT</div>
											</div>
										</div>
									</div>


								</div>
							</div>
					</div>
					</form>
				</div>

			</div>
			<!--  last page -->
			
			
			


			<!-- footer -->
			<div class="divider"
				style="margin-right: -16em; position: relative; width: 100%;"></div>
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
					<div id="map2" style="width: 360px; height: 220px; border: solid 1px;"></div>
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
<script src="${cpath}/resources/js/eye.js"></script>

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
