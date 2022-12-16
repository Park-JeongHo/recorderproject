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
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="${cpath}/resources/images/logo.png">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">

<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap5" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap"
	rel="stylesheet">


<link rel="stylesheet" href="${cpath}/resources/fonts/icomoon/style.css">
<link rel="stylesheet"
	href="${cpath}/resources/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="${cpath}/resources/css/tiny-slider.css">
<link rel="stylesheet" href="${cpath}/resources/css/aos.css">
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>


<title>복실복실</title>
</head>
<body style="background-color: #EEE4C1;">




	<nav class="site-nav">
		<div class="container">
			<div class="menu-bg-wrap" style="background-color: white;">
				<div class="site-navigation">

					<a href="main.do" class="logo m-0 float-start"><img
						src="${cpath}/resources/img/logo.png" style="width: 35%;"></a>

					<ui
						class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end"
						style="position: relative; top: 110px;">
						<li><a href="#">감정분석</a></li>
						<li><a href="#">안구질환</a></li>
						<li><a href="#">갤러리</a></li>
						<li><a href="${cpath}/detail.do">상세정보</a></li>
						<li><a href="${cpath}/aban.do">유기동물</a></li>
					</ui>

					

				</div>
			</div>
		</div>
	</nav>



	<div class="section">

		<div class="container" style="background-color: white;">
			<hr style="position: relative; top: -60px;">
			<div class="row mb-5 align-items-center">

				<div class="col-lg-6">

					<h2 class="font-weight-bold text-primary heading"
						style="position: relative; top: 20px;">Pet News</h2>
				</div>

			</div>
			<div class="outer">
				<div class="inner-list">
					<div class="inner">
						<img src="${cpath}/resources/img/news1.PNG"
							style="height: 100%; width: 100%;">
					</div>
					<div class="inner">
						<img src="${cpath}/resources/img/news2.PNG"
							style="height: 100%; width: 100%;">
					</div>
					<div class="inner">
						<img src="${cpath}/resources/img/news2.PNG"
							style="height: 100%; width: 100%;">
					</div>

				</div>


			</div>
			<div class="button-list">
				<button class="button-left"
					style="border-width: 0px; width: 50px; height: 50px; font-size: x-large; position: relative; right: 570px; bottom: 200px;">◀</button>
				<button class="button-right"
					style="border-width: 0px; width: 50px; height: 50px; font-size: x-large; position: relative; right: -570px; bottom: 200px;">▶</button>
			</div>



		</div>


	</div>
	</div>





	<div class="section sec-testimonials">
		<div class="container">
			<hr>
			<div class="row mb-5 align-items-center">

				<div class="col-md-6">
					<h2 class="font-weight-bold heading text-primary mb-4 mb-md-0">가족이
						되어주세요</h2>
				</div>

				<div class="col-md-6 text-md-end">
					<div id="testimonial-nav">
						<span class="prev" data-controls="prev">Prev</span> <span
							class="next" data-controls="next">Next</span>
					</div>
					<div class="col-lg-6 text-lg-end"></div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4"></div>
			</div>
			<div class="testimonial-slider-wrap">
				<div class="testimonial-slider">

					<div class="item">
						<div class="testimonial">
							<img src="${cpath}/resources/img/person_1-min.jpg" alt="Image"
								class="img-fluid rounded-circle w-50 mb-1">

							<h3 class="h5 text-primary mb-4"
								style="position: relative; top: 10px;">James Smith</h3>
							<blockquote>
								<p>&ldquo;Far far away, behind the word mountains, far from
									the countries Vokalia and Consonantia, there live the blind
									texts. Separated they live in Bookmarksgrove right at the coast
									of the Semantics, a large language ocean.&rdquo;</p>
							</blockquote>
							<p class="text-black-50">Designer, Co-founder</p>
						</div>
					</div>

					<div class="item">
						<div class="testimonial">
							<img src="${cpath}/resources/img/person_1-min.jpg" alt="Image"
								class="img-fluid rounded-circle w-50 mb-1">

							<h3 class="h5 text-primary mb-4"
								style="position: relative; top: 10px;">James Smith</h3>
							<blockquote>
								<p>&ldquo;Far far away, behind the word mountains, far from
									the countries Vokalia and Consonantia, there live the blind
									texts. Separated they live in Bookmarksgrove right at the coast
									of the Semantics, a large language ocean.&rdquo;</p>
							</blockquote>
							<p class="text-black-50">Designer, Co-founder</p>
						</div>
					</div>

					<div class="item">
						<div class="testimonial">
							<img src="${cpath}/resources/images/person_1-min.jpg" alt="Image"
								class="img-fluid rounded-circle w-50 mb-1">

							<h3 class="h5 text-primary mb-4"
								style="position: relative; top: 10px;">James Smith</h3>
							<blockquote>
								<p>&ldquo;Far far away, behind the word mountains, far from
									the countries Vokalia and Consonantia, there live the blind
									texts. Separated they live in Bookmarksgrove right at the coast
									of the Semantics, a large language ocean.&rdquo;</p>
							</blockquote>
							<p class="text-black-50">Designer, Co-founder</p>
						</div>
					</div>

					<div class="item">
						<div class="testimonial">
							<img src="${cpath}/resources/images/person_1-min.jpg" alt="Image"
								class="img-fluid rounded-circle w-50 mb-1">

							<h3 class="h5 text-primary mb-4"
								style="position: relative; top: 10px;">James Smith</h3>
							<blockquote>
								<p>&ldquo;Far far away, behind the word mountains, far from
									the countries Vokalia and Consonantia, there live the blind
									texts. Separated they live in Bookmarksgrove right at the coast
									of the Semantics, a large language ocean.&rdquo;</p>
							</blockquote>
							<p class="text-black-50">Designer, Co-founder</p>
						</div>

					</div>


				</div>

			</div>

		</div>

	</div>
	<p>
		<a href="#" target="_blank"
			class="btn btn-primary text-white py-3 px-4"
			style="position: relative; left: 1300px; top: -90px;">가족 만나러 가기</a>
	</p>


	<div class="site-footer">
		<div class="container">

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
							<li><지도></li>

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

						<ul class="list-unstyled social">
							<li><a href="#"><span class="icon-instagram"></span></a></li>
							<li><a href="#"><span class="icon-twitter"></span></a></li>
							<li><a href="#"><span class="icon-facebook"></span></a></li>
							<li><a href="#"><span class="icon-linkedin"></span></a></li>
							<li><a href="#"><span class="icon-pinterest"></span></a></li>
							<li><a href="#"><span class="icon-dribbble"></span></a></li>
						</ul>
					</div>
					<!-- /.widget -->
				</div>
				<!-- /.col-lg-4 -->
			</div>
			<!-- /.row -->
			<hr>
			<div class="row mt-5">
				<div class="col-12 text-center">
					<!-- 
              **==========
              NOTE: 
              Please don't remove this copyright link unless you buy the license here https://untree.co/license/  
              **==========
            -->

					<p>
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						. All Rights Reserved. &mdash; Designed with love by Dr.mo</a>
						<!-- License information: https://untree.co/license/ -->
					</p>

				</div>
			</div>
		</div>
		<!-- /.container -->
	</div>
	<!-- /.site-footer -->


	<!-- Preloader -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="${cpath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${cpath}/resources/js/tiny-slider.js"></script>
<script src="${cpath}/resources/js/aos.js"></script>
<script src="${cpath}/resources/js/navbar.js"></script>
<script src="${cpath}/resources/js/counter.js"></script>
<script src="${cpath}/resources/js/custom.js"></script>



</body>
</html>
