<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 목록</title>
<style type="text/css">
.span1 {
	position: absolute;
	color: black;
	font-size: 30px;
	left: 50%;
	transform: translate(-670px, -20px);
}

table {
	width: 1020px;
	margin-left: auto;
	margin-right: auto;
}
</style>
<link rel="stylesheet" href="css/common/header.css" type="text/css">
<link rel="stylesheet" href="css/common/footer.css" type="text/css">
<link rel="stylesheet" href="css/review/reviewList.css" type="text/css">
<!-- Web Font Link-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lora&family=Noto+Sans+KR&family=Raleway:wght@300&display=swap" rel="stylesheet">
</head>
<body>
<div id="body-wrapper">
	<div id="body-content">
	<!-- Navigation Section -->
		<div class="intro-background">
			<div class="header">	
				<ul class="nav">
					<li>
						<c:if test="${not empty id }">
 							<a href="logoutPro.do">LOGOUT</a>
 						</c:if>
 						<c:if test="${empty id }">
 							<a href="loginForm.do">LOGIN</a>
 						</c:if>
					</li>								
					<li><a href="joinForm.do">JOIN US</a></li>										
					<li><a href="cartForm.do">CART</a></li>										
					<li><a href="mypageForm.do">MY PAGE</a></li>										
					<li><a href="boardList.do">BOARD</a></li>					
				</ul>
				<!-- Background Section -->
				<div>
					<div class="intro-text">
						<div class="intro-text">
						<h1><a href="main.do">Choongang</a></h1>
						<h4 class="contents">for you</h4>
					</div>
				</div>
				<!-- Search Section -->
				<form action="search.do">
					<div class="search">
					<select class="search-cate" name="searchCate" size="1">
							<option value="product">상품</option>
							<option value="board">게시판</option>
						</select> 
						<input type="text" class="search-content" name="searchContent" placeholder="검색어 입력" required="required">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- ======================================================================================= -->
	<%-- <br>
	<br>
	<br>
	
	<table cellspacing=2 cellpadding=2 width="1000" border=1 align="center">
	
	<tr height="100">
		<td colspan="10" align="center"><h1><strong>리뷰 List</strong></h1></td></tr>
	</table>
	<br><br><br>

	<table border="1">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>내용</th>
			<th>작성일</th>
		</tr>
		<c:if test="${ totCnt>0 }">
			<c:forEach var="review" items="${list}">

				<tr>
					<td>${startNum}</td>
					<td>${review.user_id}</td>
					<td><a href="reviewContent.do?rev_code=${review.rev_code}&pageNum=${currentPage }&pd_code=${pd_code}">
  							${review.rev_context }</a></td>
					<td>${review.rev_reg_date }</td>
				</tr>

				<c:set var="startNum" value="${startNum - 1 }" />
			</c:forEach>
		</c:if>


		<c:if test="${totCnt == 0 }">
			<tr>
				<td colspan=7>리뷰가 없습니다.</td>
			</tr>
		</c:if>
	</table>
	<br><br><br>

	<div style="text-align: center;">
		<c:if test="${startPage > blockSize }">
			<a href='reviewList.do?pageNum=${startPage-blockSize }&pd_code=${pd_code}'>[이전]</a>
		</c:if>
		<c:forEach var="i" begin="${startPage }" end="${endPage }">
			<a href='reviewList.do?pageNum=${i}&pd_code=${pd_code}'>[${i}]</a>
		</c:forEach>
		<c:if test="${endPage < pageCnt}">
			<a href='reviewList.do?pageNum=${startPage+blockSize}&pd_code=${pd_code}'>[다음]</a>
		</c:if>
	</div>
	<br><br><br>
	<table cellspacing=2 cellpadding=2 width="1000" border=1 align="center">
		<tr height="40">
			<td colspan="10" align="center">
			<input type="button" value="작성하기" onclick="location.href='reviewWriteForm.do?pageNum=${pageNum}&pd_code=${pd_code}'">
			</td>
		</tr>
		</table> --%>
<!-- =================================================================== -->

	<div class="subject">
		<th>Review List</th>
	</div>
	<br><br><br>

	<table>
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>내용</th>
			<th>작성일</th>
		</tr>
		<c:if test="${ totCnt>0 }">
			<c:forEach var="review" items="${list}">
				
				<tr>
					<td>${startNum}</td>
					<td>${review.user_id }</td>
					<td><a href="reviewContent.do?rev_code=${review.rev_code}&pageNum=${currentPage }&pd_code=${pd_code}" id="reviewsub">${review.rev_context }</a></td>
					<td>${review.rev_reg_date }</td>
				</tr>
				
				<c:set var="startNum" value="${startNum - 1 }" />
				
			</c:forEach>
		</c:if>

<!-- ============================================================================================= -->
		<c:if test="${totCnt == 0 }">
			<tr>
				<td colspan=7>리뷰가 없습니다.</td>
			</tr>
		</c:if>
	</table>
	<br><br><br>

<!-- ============================================================================================== -->

	<div class="num">
		<c:if test="${startPage > blockSize }">
			<a href='reviewList.do?pageNum=${startPage+blockSize}&pd_code=${pd_code}'>[이전]</a>
		</c:if>
		<c:forEach var="i" begin="${startPage }" end="${endPage }">
			<a href='reviewList.do?pageNum=${i}&pd_code=${pd_code}'>[${i}]</a>
		</c:forEach>
		<c:if test="${endPage < pageCnt}">
			<a href='reviewList.do?pageNum=${startPage+blockSize}&pd_code=${pd_code}'>[다음]</a>
		</c:if>
	</div>
	<br><br><br>
	
	<div class="click">
		<input type="button" value="작성하기" onclick="location.href='reviewWriteForm.do?pageNum=${pageNum}&pd_code=${pd_code}'"></td>
	</div>
	</div>
	<!-- Footer Section-->
	<div class="footer">
		<div class="footer-text">
			CHOONGANG <br> 
			사업자등록번호 : 202-10-92707 | 대표 : 정중앙 | 서울특별시 마포구 대흥동 12-20 3층 301호 <br>
			통신판매업 신고 : 제 2021-서울마포-00301 호 | 개인정보관리책임자 : 정중앙 <br>			
		</div>
	</div>
</div>	
</body>
</html>