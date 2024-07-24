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
<title>수정-리뷰마스터</title>
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
		<h1>수정하기</h1>
		<form action="modSave" method="post">
		<br><br>
			별점<br>
			0<input id="star0" type="radio" name="star_point" value=0> 
			1<input id="star1" type="radio" name="star_point" value=1> 
			2<input id="star2" type="radio" name="star_point" value=2> 
			3<input id="star3" type="radio" name="star_point" value=3> 
			4<input id="star4" type="radio" name="star_point" value=4> 
			5<input id="star5" type="radio" name="star_point" value=5><br><br>
			지역<br>
			<input class="tf" type="text" name="region" placeholder="지역명을 입력해주세요." value="${item.region}"><br><br>
			가게이름<br>
			<input class="tf" type="text" name="shop_name" placeholder="가게이름을 입력해주세요." value="${item.shop_name}"><br><br>

			내용<br>
			<input class="tf" type="text" name="review" placeholder="리뷰내용을 입력해주세요." value="${item.review}"><br><br>
			작성자<br>
			<input class="tf" type="text" name="user_name" placeholder="작성자명을 입력해주세요." value="${item.user_name}"><br><br>
			<input type="hidden" name="no" value="${item.no}">
			<input type="submit" value="저장하기">
		</form>
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
<script>
	function chkStarPoint(){
		document.querySelector('#star'+${item.star_point}).setAttribute('checked', true);
	}
	chkStarPoint();
</script>
</html>