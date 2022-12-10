(function () {

	'use strict'


	AOS.init({
		duration: 800,
		easing: 'slide',
		once: true
	});

	var preloader = function() {

		var loader = document.querySelector('.loader');
		var overlay = document.getElementById('overlayer');

		function fadeOut(el) {
			el.style.opacity = 1;
			(function fade() {
				if ((el.style.opacity -= .1) < 0) {
					el.style.display = "none";
				} else {
					requestAnimationFrame(fade);
				}
			})();
		};

		setTimeout(function() {
			fadeOut(loader);
			fadeOut(overlay);
		}, 200);
	};
	preloader();
	


	new Swiper('.swiper-container');

	var mySwiper = new Swiper('.swiper-container', {
		// 슬라이드를 버튼으로 움직일 수 있습니다.
		  navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		  },
			
		// 현재 페이지를 나타내는 점이 생깁니다. 클릭하면 이동합니다.
		  pagination: {
			el: '.swiper-pagination',
			type: 'bullets',
		  },
		
		// 현재 페이지를 나타내는 스크롤이 생깁니다. 클릭하면 이동합니다.
		  scrollbar: {
			el: '.swiper-scrollbar',
			draggable: true,
		  },
			
		// 3초마다 자동으로 슬라이드가 넘어갑니다. 1초 = 1000
		  autoplay: {
			delay: 3000,
			
		  },
		  
		  slidesPerView: 1, // 보여지는 슬라이드 수
      spaceBetween: 310, // 슬라이드 간의 거리(px 단위)
      loop: true, // 슬라이드 무한 반복
	  
		});

		const outer = document.querySelector('.outer');
		const innerList = document.querySelector('.inner-list');
		const inners = document.querySelectorAll('.inner');
		let currentIndex = 0; // 현재 슬라이드 화면 인덱스
		
		inners.forEach((inner) => {
		  inner.style.width = `${outer.clientWidth}px`; // inner의 width를 모두 outer의 width로 만들기
		})
		
		innerList.style.width = `${outer.clientWidth * inners.length}px`; // innerList의 width를 inner의 width * inner의 개수로 만들기
		
		/*
		  버튼에 이벤트 등록하기
		*/
		const buttonLeft = document.querySelector('.button-left');
		const buttonRight = document.querySelector('.button-right');
		
		buttonLeft.addEventListener('click', () => {
		  currentIndex--;
		  currentIndex = currentIndex < 0 ? 0 : currentIndex; // index값이 0보다 작아질 경우 0으로 변경
		  innerList.style.marginLeft = `-${outer.clientWidth * currentIndex}px`; // index만큼 margin을 주어 옆으로 밀기
		  clearInterval(interval); // 기존 동작되던 interval 제거
		  interval = getInterval(); // 새로운 interval 등록
		});
		
		buttonRight.addEventListener('click', () => {
		  currentIndex++;
		  currentIndex = currentIndex >= inners.length ? inners.length - 1 : currentIndex; // index값이 inner의 총 개수보다 많아질 경우 마지막 인덱스값으로 변경
		  innerList.style.marginLeft = `-${outer.clientWidth * currentIndex}px`; // index만큼 margin을 주어 옆으로 밀기
		  clearInterval(interval); // 기존 동작되던 interval 제거
		  interval = getInterval(); // 새로운 interval 등록
		});
		
		/*
		  주기적으로 화면 넘기기
		*/
		const getInterval = () => {
		  return setInterval(() => {
			currentIndex++;
			currentIndex = currentIndex >= inners.length ? 0 : currentIndex;
			innerList.style.marginLeft = `-${outer.clientWidth * currentIndex}px`;
		  }, 2000);
		}
		
		
		
		let interval = getInterval(); // interval 등록

	var tinySdlier = function() {

		var heroSlider = document.querySelectorAll('.hero-slide');
		var propertySlider = document.querySelectorAll('.property-slider');
		var imgPropertySlider = document.querySelectorAll('.img-property-slide');
		var testimonialSlider = document.querySelectorAll('.testimonial-slider');
		

		if ( heroSlider.length > 0 ) {
			var tnsHeroSlider = tns({
				container: '.hero-slide',
				mode: 'carousel',
				speed: 700,
				autoplay: true,
				controls: false,
				nav: false,
				autoplayButtonOutput: false,
				controlsContainer: '#hero-nav',
			});
		}


		if ( imgPropertySlider.length > 0 ) {
			var tnsPropertyImageSlider = tns({
				container: '.img-property-slide',
				mode: 'carousel',
				speed: 700,
				items: 1,
				gutter: 30,
				autoplay: true,
				controls: false,
				nav: true,
				autoplayButtonOutput: false
			});
		}

		if ( propertySlider.length> 0 ) {
			var tnsSlider = tns({
				container: '.property-slider',
				mode: 'carousel',
				speed: 700,
				gutter: 30,
				items: 3,
				autoplay: true,
				autoplayButtonOutput: false,
				controlsContainer: '#property-nav',
				responsive: {
					0: {
						items: 1
					},
					700: {
						items: 2
					},
					900: {
						items: 3
					}
				}
			});
		}


		if ( testimonialSlider.length> 0 ) {
			var tnsSlider = tns({
				container: '.testimonial-slider',
				mode: 'carousel',
				speed: 700,
				items: 3,
				
				gutter: 50,
				autoplay: true,
				autoplayButtonOutput: false,
				controlsContainer: '#testimonial-nav',
				responsive: {
					0: {
						items: 1
					},
					700: {
						items: 2
					},
					900: {
						items: 3
					}
				}
			});
		}
	}
	tinySdlier();



})()