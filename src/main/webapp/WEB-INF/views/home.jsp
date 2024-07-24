<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<html>
<head>
<title>홈-리뷰마스터</title>
</head>
<style>
section {
	text-align: center;
	padding-left: 200px;
	padding-right: 200px;
}

#footer {
	width: 100%;
	height: 185px;
	background-color: gainsboro;
	white-space: nowrap;
	padding-top: 15px;
}

#footer_ctn {
	display: flex;
	justify-content: space-around;
}

.center {
	float: left;
	width: 100%;
	text-align: center;
}

#logo {
	height: 70px;
}
</style>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03"
				aria-controls="navbarTogglerDemo03" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand" href="/reviewmaster"><img id="logo" src="resources/img/rmlogo.png"></a>
			<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="input">등록하기</a>
				</ul>
				<form class="d-flex" role="search" action="search" method="get">
					<input name="searchKeyword" class="form-control me-2" type="search" placeholder="검색하기"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
	<section>
		<br> <br> <br>
		<h1>맛집에 대한 정보를 검색해보세요!</h1>
		<form class="d-flex" role="search" action="search" method="get">
			<input name="searchKeyword" class="form-control me-2" type="search" placeholder="검색하기"
				aria-label="Search">
			<button class="btn btn-outline-success" type="submit">Search</button>
		</form>
		<br> <br>
		<div id="carouselExampleCaptions" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="resources/img/food01.webp" class="d-block w-100"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>명가네 참숯 장어덮밥</h5>
						<p>짭쪼름하고 고소한 맛의 소스와 촉촉하고 고소한 맛의 장어, 탱글하게 잘 지은 밥이 만나 포만감 넘치는 한
							끼 식사를 즐길 수 있는 메뉴 ‘장어덮밥’.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/img/food02.webp" class="d-block w-100"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>원조 수원 비빔밥</h5>
						<p>보리고추장 맛이 유명한 옛 한옥 가정집 한식당으로 보리밥, 도토리묵, 해물파전 등이 인기 메뉴입니다.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/img/food03.webp" class="d-block w-100"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>성도네 한우</h5>
						<p>주인이 직접 골라 당일날 막 잡은 한우를 전남 함평에서 매일매일 직송받아 사용하는 한우생고기전문점 성도네
							한우입니다.</p>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</section>
	<br>
	<br>
	<br>
	<footer id="footer">
		<div id="footer_ctn">
			<div>
				<img id="logo" src="resources/img/rmlogo.png">
			</div>
			<div>
				<b>주소</b><br> 대한민국 경기도 수원시 팔달구 중부대로 104 3층
			</div>
			<div>
				<b>연락처</b>
				<div>
					대표이사 차명규<br> 031-1234-5678<br> chafood123@gmail.com
				</div>
			</div>
		</div>
		<hr>
		<span class="center">© 2024 by humancha</span>
	</footer>
</body>
</html>
