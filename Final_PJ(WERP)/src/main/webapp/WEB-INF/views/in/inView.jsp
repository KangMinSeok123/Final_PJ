<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입고 현황 조회</title>
<style>
	.pagination {
    	display: flex;
    	padding-left: 0;
    	list-style: none;
    	border-radius: 0.25rem;
	}

	.page-item.active .page-link {
    	z-index: 1;
    	color: #fff;
    	background-color: #007bff;
    	border-color: #007bff;
	}

	li.page-item.disabled>.page-link {
   		color: black;
   		display: inline-block;
    	padding: 10px;
    	margin-bottom: 5px;
    	border: 1px solid #999;
    	font-size: 12px;
    	cursor: pointer;
	}

	.page-item>a.page-link {
   		display: inline-block;
    	padding: 10px;
    	margin-bottom: 5px;
    	border: 1px solid #999;
    	font-size: 12px;
    	cursor: pointer;
	}

		.pagination  {       
		margin-top: 30px; 
		margin-left: 805px;

	}
	h1{
		text-align:center;
	}
	.body {
		margin: 0;
		padding: 0;
		height: 100%;
	}

	div {
   		border-top-left-radius: 0px;
   		border-top-right-radius: 13px;
   		border-bottom-left-radius: 13px;
   		border-bottom-right-radius: 13px;
	}
	
	tr:nth-child(n+2):hover {
   		background-color: #d3d3d3;
   		cursor: pointer;
	}

	table {
   		border-collapse: collapse;
   		border-top: 2px solid #96B1D0;
   		width: 80%;
   		border-left : none;
		border-right : none;
	}

	th {
  		font-weight: bold;
   		background-color: rgba(150, 177, 208, 0.7);
	}

	th, td {
	
   		border-bottom: 2px solid #96B1D0;
   		padding: 5px;
	}

	th:first-child, td:first-child {
   		border-left: none;
   		border-right:none
	}

	body {
		margin-top: 200px;
		font-family: 'Trebuchet MS', serif;
		line-height: 1.6
		text-align : center;
	}
</style>
<link rel="stylesheet" href="/spring/resources/css/sidebar.css">

</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<h1>입고 현황 조회</h1>
	<div id="inView" class="in-view-content">
	
			<p>입고 현황 조회: ${totalIn}</p>
			<table id="in-tbl" border="1" style="text-align: center" >
				<tr>
					<th>입고코드</th>
					<th>품목코드</th>
					<th>입고단가</th>
					<th>입고수량</th>
					<th>입력일</th>
					
				</tr>
				<c:forEach items="${inlist}" var="InManagement">
					<tr id="${InManagement.incode}">
						<td>${InManagement.incode}</td>
						<td>${InManagement.procode}</td>
						<td>${InManagement.inPrice}</td>
						<td>${InManagement.inNum}</td>
						<td>${InManagement.inputDate}</td>	
					</tr>
				</c:forEach>
			</table>
			<c:out value="${pageBar}" escapeXml="false"/>
				
		</div>
	<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- 외부 아이콘 사용 -->
	<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
	<!-- JS파일 불러오기 -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script>

	$(function(){
		$("tr[id]").on("click",function(){
			var incode = $(this).attr("id");
			
			console.log("incode="+incode);
			location.href = "${pageContext.request.contextPath}/in/inUpdateView.do?incode="+incode;
		});
	});
	</script>
	
</body>
</html>