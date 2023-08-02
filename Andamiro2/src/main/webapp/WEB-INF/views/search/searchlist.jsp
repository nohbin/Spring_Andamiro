<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script src="../resources/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Nanum+Pen+Script&display=swap">
<style>
li {
	list-style: none;
}

a {
	color: black;
	text-decoration: none;
}

.img-thumbnail {
	object-fit: fill;
	height: 200px !important; /* 원하는 높이로 조정하세요 */
	width: 100%; /* 너비는 부모 요소에 맞게 설정됩니다 */
}
</style>
</head>
<body>

	<jsp:include page="../header.jsp"></jsp:include>

	<div class="container border mt-3 rounded-3 w-50">
		<ul class="nav nav-pills nav-fill row">
			<li class="nav-item col-12 col-md-3">
				<a class="nav-link" style="color: black;" aria-current="page" href="<c:url value="/RecipeServlet?command=recipe_list"/>">전체</a>
			</li>
			<li class="nav-item col-12 col-md-3">
				<div class="dropdown-center">
					<button class="btn dropdown-toggle" type="button"
						data-bs-toggle="dropdown" aria-expanded="false">종류</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&kind=1"/>">한식</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&kind=2"/>">일식</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&kind=3"/>">양식</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&kind=4"/>">중식</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&kind=99"/>">기타</a></li>
					</ul>
				</div>
			</li>
			<li class="nav-item col-12 col-md-3">
				<div class="dropdown-center">
					<button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">방법</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&how=1"/>">볶음</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&how=2"/>">튀김</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&how=3"/>">삶기</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&how=4"/>">끓이기</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&how=5"/>">굽기</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&how=6"/>">찜</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&how=99"/>">기타</a></li>
					</ul>
				</div>
			</li>
			<li class="nav-item col-12 col-md-3">
				<div class="dropdown-center">
					<button class="btn dropdown-toggle" type="button"
						data-bs-toggle="dropdown" aria-expanded="false">재료</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&mainingre=1"/>">돼지고기</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&mainingre=2"/>">소고기</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&mainingre=3"/>">닭고기</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&mainingre=4"/>">육류</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&mainingre=5"/>">해물</a></li>
						<li><a class="dropdown-item" href="<c:url value="/RecipeServlet?command=recipe_list&mainingre=99"/>">기타</a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div>


	<div class="container text-center border mt-3 rounded-5">
		<input type="hidden" name = "recipeID" value="${recipe.recipeID }">
		<div class="row mt-3 row-cols-3">
			<c:forEach var="recipe" items="${searchList}">
				<div class="col-12 col-md-4 mt-3 mb-3">
					<a href='RecipeServlet?command=recipe_detail&recipID=${recipe.recipeID }'> 
					<img src="resources/img/${recipe.mainPicture }" class="rounded-3 img-thumbnail">
					</a>
					<div class="">
						<div class=""><h5>${recipe.recipeName }</h5></div>
						<div class="">
							<span>${recipe.recipetag1 } </span><div class="vr"></div><span> ${recipe.recipetag2 } </span><div class="vr"></div><span> ${recipe.recipetag3 } </span>
						</div>
						<div class="">
							<b><span id="doc">작성자 : ${recipe.userId }</span></b>
							<div class="vr"></div>
							<b><span id="doc">조회수 : ${recipe.recipeView }</span></b>
							<div class="vr"></div>
							<b><span>평점 : ${recipe.recipeGrade }</span></b>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>
	
</body>
</html>