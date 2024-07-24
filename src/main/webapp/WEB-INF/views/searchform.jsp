<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<title>검색-리뷰마스터</title>
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
.rsort{
	float: right;
}
.lsort{
	float: left;
}

#logo {
	height: 70px;
}
#rTable{
	width: 100%;
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
		<h1>검색결과</h1>
		<br> <br>
		<span id="display" style='display:none'>검색결과가 없습니다.</span>
		<table id = "rTable" class="border">
			<c:forEach items="${allListitems}" var="reviewvo">
				<tr>
					<td class="border p-1 mb-1 bg-secondary-subtle text-secondary-emphasis" colspan='2'>가게이름</td>
					<td class="border p-1 mb-1 bg-body-tertiary text-secondary-emphasis">지역</td>
				</tr>
				<tr>
					<td class="border" colspan='2'><a href="viewDetail?no=${reviewvo.no}">${reviewvo.shop_name}</a></td><td class="border">${reviewvo.region}</td>
				</tr>
				<tr>
					<td class="border p-1 mb-1 bg-secondary-subtle text-secondary-emphasis">별점</td>
					<td class="border p-1 mb-1 bg-body-tertiary text-secondary-emphasis">작성자</td>
					<td class="border p-1 mb-1 bg-secondary-subtle text-secondary-emphasis">작성일</td>
				</tr>
				<tr>
					<td class="border">${reviewvo.star_point}</td><td class="border">${reviewvo.user_name}</td><td class="border">${reviewvo.in_date}</td>
				</tr>
				<tr>
					<td class="border p-1 mb-1 bg-secondary-subtle text-secondary-emphasis" colspan='3'>내용</td>
				</tr>
				<tr>
					<td class="border" colspan='3'>${reviewvo.review}</td>
				</tr>
				<tr>
					<td colspan='3'><div class = "lsort"><form action="comment" method="post">댓글입력 <input type="text" name="cmt" size=50><input type="hidden" name="review_no" value="${reviewvo.no}"><input type="submit" value="입력"></form></div>
					<div class = "rsort"><a href="update?modno=${reviewvo.no}" onclick="return chkmod(${reviewvo.pw})"><button>수정</button></a>
					<a href="delete?delno=${reviewvo.no}" onclick="return chkdel(${reviewvo.pw})"><button>삭제</button></a>
					</div>
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan=4 align=center>
					<c:if test="${pagevo.prev }">
						<a href="search?searchKeyword=${pagevo.searchKeyword}&page=${pagevo.startPage -1 }&">[이전페이지그룹]</a>
					</c:if> 
					<c:forEach begin="${pagevo.startPage }" end="${pagevo.endPage }"
						var="idx">
						<a href="search?searchKeyword=${pagevo.searchKeyword}&page=${idx}"> 
							<c:if
								test="${idx == pagevo.page }">[</c:if> ${idx } <c:if
								test="${idx == pagevo.page }">]</c:if>
						</a>
					</c:forEach> 
					<c:if test="${pagevo.next }">
						<a href="search?searchKeyword=${pagevo.searchKeyword}&page=${pagevo.endPage +1 }">[다음페이지그룹]</a>
					</c:if></td>
			</tr>
		</table>
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
<script>
	function viewdisplay(){
		if("${allListitems}"=='[]'){
			document.querySelector('#display').style.display='block';
		} else{
			document.querySelector('#display').style.display='none';
		}
	}
	viewdisplay();
	
	function chkdel(pw){
		if(chkpw(pw)){
			return confirm("정말 삭제하시겠습니까?");
		} else{
			return false;
		}
	}
	
	function chkmod(pw){
		if(chkpw(pw)){
			return true;
		} else{
			return false;
		}
	}
	
	function chkpw(pw){
		if(prompt("비밀번호를 입력해주세요")==pw){
			return true;
		} else{
			alert("비밀번호가 일치하지 않습니다");
			return false;
		}
	}
</script>
</html>
