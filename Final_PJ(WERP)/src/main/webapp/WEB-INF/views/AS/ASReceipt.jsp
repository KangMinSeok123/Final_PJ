<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AS 접수 목록</title>
<style>
.body {
	margin: 0;
	padding: 0;
	height: 100%;
}

body {
	margin-top: 100px;
	font-family: 'Trebuchet MS', serif;
	line-height: 1.6
}

.container {
	width: 500px;
	margin: 0 auto;
}

ul.tabs {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul.tabs li {
	background: none;
	color: #222;
	display: inline-block;
	padding: 10px 15px;
	cursor: pointer;
}

ul.tabs li.current {
	background: #ededed;
	color: #222;
}

.tab-content {
	display: none;
	background: #ededed;
	padding: 15px;
}

.tab-content.current {
	display: inherit;
}
</style>

<link rel="stylesheet" href="/spring/resources/css/sidebar.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<h1>A/S 관리</h1>

	<div id="tabs">
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">전체</li>
			<li class="tab-link" data-tab="tab-2">접수대기</li>
			<li class="tab-link" data-tab="tab-3">접수완료</li>
			<li class="tab-link" data-tab="tab-3">수리진행</li>
			<li class="tab-link" data-tab="tab-3">수리완료</li>
			<li class="tab-link" data-tab="tab-3">전달완료</li>
		</ul>

		<!-- AS 접수 전체 확인 테이블 -->
		<div id="tab-1" class="tab-content current">
			<p>총 접수 건수 : ${totalAS}</p>
			<table id="tbl-as" border="1" style="text-align: center">
				<tr>
					<th>접수번호(접수일)</th>
					<th>품목코드</th>
					<th>제목</th>
					<th>접수내용</th>
					<th>수리예정일</th>
					<th>접수현황(단계)</th>
				</tr>
				<c:forEach items="${list}" var="AS">
					<tr id="${AS.asCode}">
						<td>${AS.asCode}</td>
						<td>품목코드</td>
						<td>${AS.asTitle}</td>
						<td>${AS.asContent}</td>
						<td>${AS.asExpectedDate}</td>
						<td>${AS.asStage}</td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<div id="tab-2" class="tab-content">
			<p>접수 대기 목록들</p>
		</div>

	</div>


	<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- 외부 아이콘 사용 -->
	<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
	<!-- JS파일 불러오기 -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/tab.js"></script>

</body>
</html>