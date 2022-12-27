<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<!-- Swiper CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />

<!-- CSS -->
<link rel="stylesheet" href="${cpath}/resources/css/bottom.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
		randomAbanList();  // 가장먼저 실행함수
	});
	function randomAbanList(){
		// 게시판 리스트 가져오기
		$.ajax({
			url : "${cpath}/randomAbanList.do",
			type : "get",
			dataType : "json",
			success : AbanList,
			error : function(){alert("error");}
		});
	}
	function AbanList(data) {
		var bList ="<div class='slide-content'>";
		bList +="<div class='card-wrapper swiper-wrapper'>";
	$.each(data, function(index, obj){ 
		bList +="<div class='card swiper-slide'>";
	 	bList +="<div class='image-content'>";
		bList +="<span class='overlay'></span>";
		bList +="<div class='card-image'>";
		bList +="<img src='${cpath}/resources/img/abanpet/"+obj.aban_img+".jpg' class='card-img' style='border-radius: 50%;'>";
		bList +="</div>";
		bList +="</div>";
		bList +="<div class='card-content'>";
		bList +="<p class='description'>"+obj.aban_area+"</p>";
		bList +="<p class='description'>"+obj.aban_gender+"</p>";
		bList +="<p class='description'>"+obj.aban_vrty+"</p>";
		bList += "<button class='button' onclick=\"location.href='${cpath}/aban.do'\">View More</button>";
		bList +="</div>";
		bList +="</div>";
		});
		bList+="</div>";
		bList+="</div>";
		bList+="<div class='swiper-button-next swiper-navBtn'></div>"
		bList+="<div class='swiper-button-prev swiper-navBtn'></div>"
		bList+="<div class='swiper-pagination'></div>"
		$(".swiper").html(bList);
		var swiper = new Swiper(".slide-content", {
		    slidesPerView: 3,
		    spaceBetween: 25,
		    loop: true,
		    centerSlide: 'true',
		    fade: 'true',
		    grabCursor: 'true',
		    pagination: {
		      el: ".swiper-pagination",
		      clickable: true,
		      dynamicBullets: true,
		    },
		    navigation: {
		      nextEl: ".swiper-button-next",
		      prevEl: ".swiper-button-prev",
		    },

		    breakpoints:{
		        0: {
		            slidesPerView: 1,
		        },
		        520: {
		            slidesPerView: 2,
		        },
		        950: {
		            slidesPerView: 3,
		        },
		    },
		  });
	}
	
	
	
	</script>
</head>
<body>
	<div style="font-family: Katuri;
    font-size: xxx-large;
    text-align: center;">지금 가족이 되어주세요</div>
	<div class="slide-container swiper">


		
		
		
	</div>
</body>
</html>