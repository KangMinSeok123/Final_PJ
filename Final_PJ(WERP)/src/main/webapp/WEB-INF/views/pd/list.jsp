<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품목 관리</title>
<link rel="stylesheet" href="/spring/resources/css/sidebar.css">
<link rel="stylesheet" href="/spring/resources/css/sidebar.css">



</head>
<style>
#container_box table td {
	width: 100px;
}
</style>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<h1>품목 조회</h1>
	<div class="admin_content_main" id="container_box">
		<form action="${pageContext.request.contextPath}/pd/list" method="post" id="enrollForm">
			<table>
				<thead>
					<tr>
						<th>품목코드</th>
						<th>품목명</th>
						<th>카테고리</th>
						<th>입고단가</th>
						<th>출고단가</th>
						<th>입력일</th>
						<th>재고수량</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="product_management">
						<tr>
							<td>${product_management.procode}</td>
							<td>
								<a href="${pageContext.request.contextPath}/pd/view?n=${product_management.procode}">${product_management.proname}</a>
							</td>
							<td>${product_management.category}</td>
							<td>${product_management.inprice}</td>
							<td>${product_management.outprice}</td>
							<td><fmt:formatDate value="${product_management.inputdate}"  pattern="yyyy-MM-dd" /></td>
							<td>${product_management.stock}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>


		</form>

	</div>
	<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- 외부 아이콘 사용 -->
	<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
	<!-- JS파일 불러오기 -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/tab.js"></script>
</body>
</html>