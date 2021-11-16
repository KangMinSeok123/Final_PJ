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

#tabs {
	position: relative;
	width: 1000px;
	margin: 0 auto;
	z-index: 0;
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
	cursor: pointer;
	width: 100px;
	display: inline-block;
	background-color: #96B1D0;
	color: white;
	text-align: center;
	transition: .25s ease;
	border: none;
	padding: 10px;
	border-radius: 12px 12px 0 0;
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
			<li class="tab-link" data-tab="tab-4">수리진행</li>
			<li class="tab-link" data-tab="tab-5">수리완료</li>
			<li class="tab-link" data-tab="tab-6">전달완료</li>
		</ul>

		<!-- AS 전체 -->
		<div id="tab-1" class="tab-content current">
			<p>총 접수 건수 : ${totalAS}</p>
			<table id="tbl-as" border="1" style="text-align: center">
				<tr>
					<th style="width:180px">접수번호(접수일)</th>
					<th style="width:100px">고객명</th>
					<th style="width:200px">품목코드</th>
					<th style="width:200px">제목</th>
					<th style="width:330px">접수내용</th>
					<th style="width:120px">수리예정일</th>
					<th style="width:180px">접수현황(단계)</th>
				</tr>
				<c:forEach items="${list}" var="AS">
					<tr id="${AS.asCode}">
						<td>${AS.asCode}</td>
						<td>${AS.customer}</td>
						<td>품목코드(외래키)</td>
						<td>${AS.asTitle}</td>
						<td>${AS.asContent}</td>
						<td>${AS.asExpectedDate}</td>
						<td>${AS.asStage}</td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<!-- 접수 대기 -->
		<div id="tab-2" class="tab-content">
		<table id="tbl-as" border="1" style="text-align: center">
			<tr>
				<th style="width:180px">접수번호(접수일)</th>
				<th style="width:100px">고객명</th>
				<th style="width:200px">품목코드</th>
				<th style="width:200px">제목</th>
				<th style="width:330px">접수내용</th>
				<th style="width:120px">수리예정일</th>
				<th style="width:180px">접수현황(단계)</th>
			</tr>
			<c:forEach items="${list}" var="AS">
				<c:if test="${AS.asStage eq '접수 대기'}">
					<tr id="${AS.asCode}">
						<td>${AS.asCode}</td>
						<td>${AS.customer}</td>
						<td>품목코드(외래키)</td>
						<td>${AS.asTitle}</td>
						<td>${AS.asContent}</td>
						<td>${AS.asExpectedDate}</td>
						<td>${AS.asStage}</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		</div>
		
		<!-- 접수 완료 -->
		<div id="tab-3" class="tab-content">
		<table id="tbl-as" border="1" style="text-align: center">
			<tr>
				<th style="width:180px">접수번호(접수일)</th>
				<th style="width:100px">고객명</th>
				<th style="width:200px">품목코드</th>
				<th style="width:200px">제목</th>
				<th style="width:330px">접수내용</th>
				<th style="width:120px">수리예정일</th>
				<th style="width:180px">접수현황(단계)</th>
			</tr>
			<c:forEach items="${list}" var="AS">
				<c:if test="${AS.asStage eq '접수 완료'}">
					<tr id="${AS.asCode}">
						<td>${AS.asCode}</td>
						<td>${AS.customer}</td>
						<td>품목코드(외래키)</td>
						<td>${AS.asTitle}</td>
						<td>${AS.asContent}</td>
						<td>${AS.asExpectedDate}</td>
						<td>${AS.asStage}</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		</div>
		
		<!-- 수리 진행 -->
		<div id="tab-4" class="tab-content">
		<table id="tbl-as" border="1" style="text-align: center">
			<tr>
				<th style="width:180px">접수번호(접수일)</th>
				<th style="width:100px">고객명</th>
				<th style="width:200px">품목코드</th>
				<th style="width:200px">제목</th>
				<th style="width:330px">접수내용</th>
				<th style="width:120px">수리예정일</th>
				<th style="width:180px">접수현황(단계)</th>
			</tr>
			<c:forEach items="${list}" var="AS">
				<c:if test="${AS.asStage eq '수리 진행'}">
					<tr id="${AS.asCode}">
						<td>${AS.asCode}</td>
						<td>${AS.customer}</td>
						<td>품목코드(외래키)</td>
						<td>${AS.asTitle}</td>
						<td>${AS.asContent}</td>
						<td>${AS.asExpectedDate}</td>
						<td>${AS.asStage}</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		</div>
		
		<!-- 수리 완료 -->
		<div id="tab-5" class="tab-content">
		<table id="tbl-as" border="1" style="text-align: center">
			<tr>
				<th style="width:180px">접수번호(접수일)</th>
				<th style="width:100px">고객명</th>
				<th style="width:200px">품목코드</th>
				<th style="width:200px">제목</th>
				<th style="width:330px">접수내용</th>
				<th style="width:120px">수리예정일</th>
				<th style="width:180px">접수현황(단계)</th>
			</tr>
			<c:forEach items="${list}" var="AS">
				<c:if test="${AS.asStage eq '수리 완료'}">
					<tr id="${AS.asCode}">
						<td>${AS.asCode}</td>
						<td>${AS.customer}</td>
						<td>품목코드(외래키)</td>
						<td>${AS.asTitle}</td>
						<td>${AS.asContent}</td>
						<td>${AS.asExpectedDate}</td>
						<td>${AS.asStage}</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		</div>
		
		<!-- 전달 완료 -->
		<div id="tab-6" class="tab-content">
		<table id="tbl-as" border="1" style="text-align: center">
			<tr>
				<th style="width:180px">접수번호(접수일)</th>
				<th style="width:100px">고객명</th>
				<th style="width:200px">품목코드</th>
				<th style="width:200px">제목</th>
				<th style="width:330px">접수내용</th>
				<th style="width:120px">수리예정일</th>
				<th style="width:180px">접수현황(단계)</th>
			</tr>
			<c:forEach items="${list}" var="AS">
				<c:if test="${AS.asStage eq '전달 완료'}">
					<tr id="${AS.asCode}">
						<td>${AS.asCode}</td>
						<td>${AS.customer}</td>
						<td>품목코드(외래키)</td>
						<td>${AS.asTitle}</td>
						<td>${AS.asContent}</td>
						<td>${AS.asExpectedDate}</td>
						<td>${AS.asStage}</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
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
	
	<script>
	$(function(){
		$("tr[id]").on("click",function(){
			var asCode = $(this).attr("id"); 
			console.log("asCode="+asCode);
			location.href = "${pageContext.request.contextPath}/AS/ASView.do?asCode="+asCode;
		});
	});
	</script>

</body>
</html>