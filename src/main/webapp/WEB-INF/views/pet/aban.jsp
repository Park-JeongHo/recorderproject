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
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
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
<title>복실복실</title>
<body style="background: linear-gradient(to right, #FFAFBD, #ffc3a0);">

	<div class="container">
		<div class="divider"></div>
		<!-- header -->
		<div class="section 1">
			<a href="${cpath}/home.do"><img
				src="${cpath}/resources/img/logo.png" style="width: 100px;"></a>
			<div class="btn-group" style="padding-left: 20px; padding-top: 70px;">
				<button type="button" class="btn" id="btn-head"
					onclick="location.href='${cpath}/act.do'">감정분석</button>
				<button type="button" class="btn" id="btn-head"
					onclick="location.href='${cpath}/eye.do'">안구질환</button>
				<button type="button" class="btn" id="btn-head"
					onclick="location.href='${cpath}/dtl.do'">상세보기</button>
				<button type="button" class="btn" id="btn-head"
					onclick="location.href='${cpath}/brd.do'">커뮤니티</button>
				<button type="button" class="btn" id="btn-head"
					onclick="location.href='${cpath}/aban.do'"
					style="background-color: #ff7f50; color: white; font-family: 'KyoboHand';">유기동물</button>
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

		<div class="section 2">
			<div>
				<div class="section sec-testimonials">
					<div class="container">

						<div class="row mb-5 align-items-center">

							<div class="col-md-6">
								<h2
									style="font-family: Katuri; font-size: xxx-large; position: relative; left: 8em; top: 0.5em;">가족이
									되어주세요</h2>
							</div>

						</div>
						<div>
							<div>
								<form action="${cpath}/aban.do" method="post"
									style="display: -webkit-inline-box;">
									<select name="type" style="display: block;">
										<option selected>품종</option>
										<option value="개" ${cri.type == "개" ? "selected" : ""}>개</option>
										<option value="고양이" ${cri.type == "고양이" ? "selected" : ""}>고양이</option>
									</select> <select name="location" style="display: block;">
										<option selected>지역</option>
										<option value="서울" ${cri.location == "서울" ? "selected" : ""}>서울특별시</option>
										<option value="부산" ${cri.location == "부산" ? "selected" : ""}>부산광역시</option>
										<option value="대구" ${cri.location == "대구" ? "selected" : ""}>대구광역시</option>
										<option value="인천" ${cri.location == "인천" ? "selected" : ""}>인천광역시</option>
										<option value="광주" ${cri.location == "광주" ? "selected" : ""}>광주광역시</option>
										<option value="울산" ${cri.location == "울산" ? "selected" : ""}>울산광역시</option>
										<option value="대전" ${cri.location == "대전" ? "selected" : ""}>대전광역시</option>
										<option value="경기도" ${cri.location == "경기도" ? "selected" : ""}>경기도</option>
										<option value="강원도" ${cri.location == "강원도" ? "selected" : ""}>강원도</option>
										<option value="충청북도"
											${cri.location == "충청북도" ? "selected" : ""}>충청북도</option>
										<option value="충청남도"
											${cri.location == "충청남도" ? "selected" : ""}>충청남도</option>
										<option value="전라북도"
											${cri.location == "전라북도" ? "selected" : ""}>전라북도</option>
										<option value="전라남도"
											${cri.location == "전라남도" ? "selected" : ""}>전라남도</option>
										<option value="경상북도"
											${cri.location == "경상북도" ? "selected" : ""}>경상북도</option>
										<option value="경상남도"
											${cri.location == "경상남도" ? "selected" : ""}>경상남도</option>
										<option value="제주" ${cri.location == "제주" ? "selected" : ""}>제주도</option>
									</select>
									<button type="submit" class="btn btn-primary btn-sm"
										style="width: 5em; height: 3.5em;">검색</button>
								</form>
							</div>
						</div>

						<div class="row">
							<div class="col-lg-4"></div>
						</div>
						<c:forEach var="list" items="${aban_list}">
							<table class="table table-striped">
								<tr>
									<td>
										<div class="testimonial-slider-wrap">
											<div class="testimonial-slider">
												<div class="item">
													<div class="testimonial">
														<img
															src="${cpath}/resources/img/abanpet/${list.aban_img}.jpg"
															alt="Image" class="img-fluid rounded-circle w-50 mb-1"
															style="border: solid; border-color: white;">
													</div>
												</div>
											</div>
										</div>
									</td>
									<td><br>
										<h3 
											style="position: relative; top: -7px; font-family: katuri; font-size: xxx-large; color: darkred;">종류
											: ${list.aban_vrty}</h3>
										<blockquote>
											<p style="font-family: 'KyoboHand';     font-size: xx-large;">&ldquo;성별 :
												${list.aban_gender}.&rdquo;</p>
										</blockquote>
										<p class="text-black-50" style="font-family: 'KyoboHand'; font-size: xx-large;">지역
											: ${list.aban_area}</p></td>

								</tr>
							</table>
						</c:forEach>

					</div>
					<!-- 페이징 처리 -->
					<ul class="pagination justify-content-center">
						<c:if test="${AbanPageMaker.prev}">
							<li class="page-item"><a class="page-link"
								href="${AbanPageMaker.startPage - 1}">Previous</a></li>
						</c:if>
						<c:forEach var="pageNum" begin="${AbanPageMaker.startPage}"
							end="${AbanPageMaker.endPage}">
							<li
								class="page-item ${AbanPageMaker.cri.page eq pageNum ? 'active': ''}"><a
								class="page-link" href="${pageNum}">${pageNum}</a></li>
						</c:forEach>
						<c:if test="${AbanPageMaker.next}">
							<li class="page-item"><a class="page-link"
								href="${AbanPageMaker.endPage + 1}">Next</a></li>
						</c:if>
					</ul>
					<!-- 페이징처리 끝 -->
					<form id="frm" action="${cpath}/aban.do" method="post">
						<input type="hidden" id="page" name="page"
							value="${AbanPageMaker.cri.page}" /> <input type="hidden"
							name="type" value="${cri.type}"> <input type="hidden"
							name="location" value="${cri.location}">
					</form>
				</div>
			</div>


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
