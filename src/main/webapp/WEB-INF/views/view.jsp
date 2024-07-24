<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<meta charset="UTF-8">
<title>등록-리뷰마스터</title>
</head>
<style>
section {
	text-align: center;
	padding-left: 200px;
	padding-right: 200px;
}
#footer{
    width: 100%;
    height: 185px;
    background-color: gainsboro;
    white-space: nowrap;
    padding-top: 15px;
}
#footer_ctn{
    display: flex;
    justify-content: space-around;
}
.center{
    float: left;
    width: 100%;
    text-align: center;
}
#logo{
    height: 70px;
}
.tf{
	width: 600px;
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
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="input">등록하기</a>
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
		<br>
		<br>
		<br>
		<h1>자세히 보기</h1>
		<br><br>
			별점<br>
			<br><br>
			지역<br>
			<br><br>
			가게이름<br>
			<br><br>
			내용<br>
			<br><br>
			작성자<br>
			<br><br>
			비밀번호<br>
			<br><br>
	</section>
	<br>
		<br>
		<br>
	 <footer id="footer">
        <div id="footer_ctn">
        <div><img id="logo" src="resources/img/rmlogo.png"></div>
        <div>
            <b>주소</b><br>
            대한민국 경기도 수원시 팔달구 중부대로 104 3층
        </div>
        <div>
            <b>연락처</b>
            <div>
                대표이사 차명규<br>
                031-1234-5678<br>
                chafood123@gmail.com
            </div>
        </div>
        </div>
        <hr>
        <span class="center">© 2024 by humancha</span>
    </footer>
</body>
</html>
